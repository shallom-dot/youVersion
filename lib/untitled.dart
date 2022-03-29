import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Center(
                    child: const Text('Good Morning, Oladiran'),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset("assets/images/seven.jpg"),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset("assets/images/five.jpg"),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                    child: Row(
                      children: [
                        Expanded(
                        flex: 3,
                          child: const Text('verse of te day')
                        ),
                        Expanded(
                          child: Icon(Icons.share)
                          ),
                        Expanded(
                          child: Image.asset("assets/images/five.jpg"),
                        ),
                      ],
                    ),
                  ),
            Container(),
          ],
        ),
      ),
    );
  }
}
