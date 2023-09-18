import 'package:flutter/material.dart';

void main() {
  runApp(const MyMaterial());
}

class MyMaterial extends StatelessWidget {
  const MyMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App'),
        ),
        drawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Setting')
        ]),
        body: const Center(child: Text('this is material App')),
      ),
    );
  }
}
