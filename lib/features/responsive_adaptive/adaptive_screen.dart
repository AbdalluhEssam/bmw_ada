import 'dart:io';

import 'package:flutter/material.dart';

class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adaptive Screen')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator.adaptive(),
            LayoutBuilder(builder: (context, constraints) {
              if(constraints.maxWidth < 600){
                return Container(
                  width: 100,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'Mobile Layout',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                );
              } else {
                return Container(
                  width: 300,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      'Tablet/Desktop Layout',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                );
              }
            },)
          ],
        ),
      ),
    );
  }
}
