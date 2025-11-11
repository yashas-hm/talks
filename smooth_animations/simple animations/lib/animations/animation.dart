import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

part 'explicit_animations.dart';
part 'hero_animations.dart';
part 'implicit_animations.dart';
part 'lottie_animations.dart';

enum AnimationType { implicit, explicit, hero, lottie }

Widget getAnimation(AnimationType type) => switch (type) {
  AnimationType.implicit => ImplicitAnimation(),
  AnimationType.explicit => ExplicitAnimation(),
  AnimationType.hero => SourceScreen(),
  AnimationType.lottie => LottieAnimation(),
};
