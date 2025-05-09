import 'package:flutter/material.dart';

class FadingTranslateWidget extends StatefulWidget {
  final Widget child;
  const FadingTranslateWidget({super.key, required this.child});

  @override
  State<FadingTranslateWidget> createState() => _FadingTranslateWidgetState();
}

class _FadingTranslateWidgetState extends State<FadingTranslateWidget> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    // Delay the animation slightly for better effect
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 800),
      tween: Tween<double>(begin: 0, end: _isVisible ? 1 : 0),
      builder: (context, double value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 50 * (1 - value)),
            child: widget.child,
          ),
        );
      },
    );
  }
}
