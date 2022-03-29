import 'package:flutter/material.dart';

class thirdPage extends StatelessWidget {
  const thirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Container(
        color: Colors.tealAccent,
        child: const Center(
          child: Text(
            'Tab 3 content',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ));
}
