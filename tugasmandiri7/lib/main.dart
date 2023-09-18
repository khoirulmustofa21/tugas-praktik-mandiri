import 'package:flutter/material.dart';

void main() {
  runApp(MyMaterial());
}

class MyMaterial extends StatelessWidget {
  MyMaterial({super.key});
  final List<Map<String, String>> data = [
    {'nama': 'Leanne Graham', 'no': '0808-8372-3242'},
    {'nama': 'Ervin Howell', 'no': '0800-9231-2130'},
    {'nama': 'Celementine Bauch', 'no': '0834-3432-0087'},
    {'nama': 'Patrica Lebsack', 'no': '0832-4243-2432'},
    {'nama': 'Chelsey Dietrich', 'no': '0838-2498-839'},
    {'nama': 'Mrs. Dennis Schulist', 'no': '0803-2942-9382'},
    {'nama': 'Kurtis Weissnat', 'no': '0898-3024-8320'},
  ];
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
          body: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                String nama = data[index]['nama'] ?? '';
                String hurufPertama =
                    nama.isNotEmpty ? nama[0].toUpperCase() : '';

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Center(
                          child: Text(hurufPertama),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index]['nama'].toString(),
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            data[index]['no'].toString(),
                            style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(139, 255, 255, 255)),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
