import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/test2',
                );
                // Navigator.pop(context);
              },
              label: Text('Nav to Home Screen'),
              icon: Icon(Icons.home),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/test2',
                );
                // Navigator.pop(context);
              },
              label: Text('Nav to Home Screen'),
              icon: Icon(Icons.home),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/test2',
                  (route) => false,
                );
                // Navigator.pop(context);
              },
              label: Text('Nav to Home Screen'),
              icon: Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }
}

class TestScreen2 extends StatelessWidget {
  const TestScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen'),
            Divider(),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text('Nav to Login Screen'),
              icon: Icon(Icons.login),
            ),
          ],
        ),
      ),
    );
  }
}
