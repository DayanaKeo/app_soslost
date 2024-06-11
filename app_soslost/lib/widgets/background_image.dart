import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;

  BackgroundImage({required this.child, required Alignment alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg-img-3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}