import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Column(
        children: [
          const Text(
            'Good Morning, Oladiran',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Container(
            child: Row(
              children: const [
                Expanded(child: Icon(Icons.share)),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: 'Hello', // default text style
                      children: <TextSpan>[
                        TextSpan(
                            text: ' beautiful ',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(
                            text: 'world',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30.0),
            child: Row(
              children: const [
                Expanded(
                    flex: 3,
                    child: Text(
                      'Verse of the Day',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Expanded(child: Icon(Icons.share)),
                Expanded(child: Icon(Icons.more)),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'And the Lord shall be King over all the earth: in that day shall there be one Lord, and his name one.',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w200,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                Expanded(
                  child: Image.asset("assets/images/sing.jpg"),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset("assets/images/Teacher.jpg"),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Image.asset("assets/images/Teacher.jpg"),
                ),
              ],
            ),
          ),
        ],
      ));
}
