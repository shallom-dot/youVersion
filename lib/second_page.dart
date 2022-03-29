import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Container(
        color: Colors.orange,
        child: const Center(
          child: Text(
            'Tab 2 content',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ));
}
