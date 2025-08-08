import 'package:flutter/material.dart';

part 'implicit_animations.dart';
part 'explicit_animations.dart';
part 'hero_animations.dart';

enum AnimationType{
  implicit,
  explicit,
  hero,
}

Widget getAnimation(AnimationType type) => switch(type) {
  AnimationType.implicit => ImplicitAnimation(),
  AnimationType.explicit => ExplicitAnimation(),
  AnimationType.hero => SourceScreen(),
};