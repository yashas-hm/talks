# TensorFlow → TensorFlow Lite Conversion Guide (with Flutter/Dart)

This README explains how to convert a TensorFlow model into a TFLite model and how to use it inside a Flutter/Dart
application.

---

## 🚀 Overview

TensorFlow Lite (TFLite) is the lightweight version of TensorFlow optimized for mobile, embedded, and edge devices. To
use a TensorFlow model in Flutter, you convert it into a `.tflite` file using the **TensorFlow Lite Converter**.

---

# 1. Converting a TensorFlow Model to TFLite

You can convert from:

* **SavedModel folder**
* **Keras `.h5` model**
* **ConcreteFunctions**
* **(Advanced) Frozen Graphs (TF1)**

Below are all supported conversion methods.

---

## Python API (Recommended)

This is the standard conversion method.

### Convert a SavedModel → TFLite

```python
import tensorflow as tf

converter = tf.lite.TFLiteConverter.from_saved_model("saved_model/")
tflite_model = converter.convert()

with open("model.tflite", "wb") as f:
    f.write(tflite_model)
```

### Convert a Keras `.h5` → TFLite

```python
import tensorflow as tf

model = tf.keras.models.load_model("model.h5")
converter = tf.lite.TFLiteConverter.from_keras_model(model)
tflite_model = converter.convert()

with open("model.tflite", "wb") as f:
    f.write(tflite_model)
```

---

## Optional: Quantization for Mobile

To shrink and speed up the model:

### Dynamic Range Quantization

```python
converter.optimizations = [tf.lite.Optimize.DEFAULT]
```

### Full Integer Quantization

```python
converter.optimizations = [tf.lite.Optimize.DEFAULT]
converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS_INT8]
converter.inference_input_type = tf.uint8
converter.inference_output_type = tf.uint8

tflite_model = converter.convert()
```

---

# 2. Using TFLite Models in Flutter/Dart

Use these packages:

```yaml
dependencies:
  tflite_flutter: ^1.0.0
  tflite_flutter_helper: ^0.4.0
```

Place your model in:

```
assets/model.tflite
assets/labels.txt
```

### pubspec.yaml

```yaml
flutter:
  assets:
    - assets/model.tflite
    - assets/labels.txt
```

### Loading a TFLite Model in Dart

```dart
import 'package:tflite_flutter/tflite_flutter.dart';

Future init() async => await Interpreter.fromAsset('model.tflite');
```

### Running Inference

```dart

var input = List.filled(1 * 224 * 224 * 3, 0.0).reshape([1, 224, 224, 3]);
var output = List.filled(1 * 1001, 0.0).reshape([1, 1001]);

interpreter.run(input, output);

print(output);
```

---

# 3. TensorFlow Lite Model Maker

If you want to *train* a custom model and automatically export it to `.tflite`:

```python
from tflite_model_maker import object_detector

model = object_detector.create(train_data)
model.export(export_dir='.')
```

This will output:

* `model.tflite`
* `labelmap.txt`

---

# Summary

| Tool                          | Purpose                             |
|-------------------------------|-------------------------------------|
| **TFLite Converter (Python)** | Best for converting models manually |
| **TFLite Converter CLI**      | Good for automation scripts         |
| **Model Maker**               | Train + export TFLite models easily |
| **tflite_flutter**            | Run TFLite models in Flutter/Dart   |

