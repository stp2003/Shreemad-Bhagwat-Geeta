import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget {
  final double size;

  const CustomLoader({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: const CircularProgressIndicator(
          backgroundColor: Colors.orange,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}
