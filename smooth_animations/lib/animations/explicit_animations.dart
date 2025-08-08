part of 'animation.dart';

class ExplicitAnimation extends StatefulWidget {
  const ExplicitAnimation({super.key});

  @override
  State<ExplicitAnimation> createState() => _ExplicitAnimationState();
}

class _ExplicitAnimationState extends State<ExplicitAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController animController;
  late final Animation<double> animation;

  @override
  void initState() {
    animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    animation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(CurvedAnimation(parent: animController, curve: Curves.easeIn));
    super.initState();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Transform.scale(scale: animation.value, child: child);
          },
          child: Icon(Icons.star, size: 150),
        ),
      ),
    );
  }
}