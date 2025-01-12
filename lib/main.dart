import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedScreen = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('test_application_for_getting_json_using_rest_api'),
        ),
        body: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [LinearProgressIndicator()],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                LinearProgressIndicator(),
                Spacer(),
                Text("Authors is loading...")
              ],
            ),
          ),
        ][selectedScreen],
        bottomNavigationBar: NavigationBar(
          destinations: <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.book),
              icon: Icon(Icons.book_outlined),
              label: "Books",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.people_alt),
              icon: Icon(Icons.people_alt_outlined),
              label: "Authors",
            ),
          ],
          onDestinationSelected: (value) {
            setState(() {
              selectedScreen = value;
            });
          },
          selectedIndex: selectedScreen,
        ),
      ),
    );
  }
}
