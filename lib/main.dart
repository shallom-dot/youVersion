import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'third_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text(
                'Today',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Community',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            Tab(
              icon: Icon(Icons.brightness_5_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        firstPage(),
        secondPage(),
        thirdPage(),
      ]),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 2, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: const Text('Home'),
            backgroundColor: Colors.amberAccent),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: const Text('Home'),
            backgroundColor: Colors.amberAccent),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: const Text('Home'),
            backgroundColor: Colors.amberAccent),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: const Text('Home'),
            backgroundColor: Colors.amberAccent),
      ]),
    );
  }
}
