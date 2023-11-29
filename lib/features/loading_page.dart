// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Paul's Fake Webtoon",
              style: TextStyle(
                fontFamily: 'Flower',
                fontSize: 50, 
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen, 
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: 300, 
              child: const LinearProgressIndicator(
                backgroundColor: Colors.white, 
                valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
