import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimateDos extends StatelessWidget {
  const AnimateDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animate Dos')),
      body: Center(
        child: FadeInDown(
          onFinish: (direction) => print('finish'),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Animated Container',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
