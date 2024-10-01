import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;

  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: child,
      ),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              //bottom right (+) shodow is darker
              color: Colors.grey[900]!,
              offset: const Offset(5, 5),
              blurRadius: 15,
            ),
            const BoxShadow(
              //top left (-) shodow is lighter
              color: Colors.white,
              offset: Offset(-5, -5),
              blurRadius: 15,
            ),
          ]),
    );
  }
}
