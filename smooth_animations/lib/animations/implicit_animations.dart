part of 'animation.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  bool valueChanger = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: valueChanger ? 50 : 150,
      width: valueChanger ? 150 : 50,
      decoration: BoxDecoration(
        color: valueChanger ? Colors.amberAccent : Colors.lightBlue,
        borderRadius: BorderRadius.circular(valueChanger ? 40 : 20),
      ),
    );
  }
}