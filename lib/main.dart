import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UCanPark',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          //Color scheme makes use of analogous colors.

          primarySwatch: Colors.teal,
        ).copyWith(
            secondary: Colors.tealAccent
        ),
        textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.green))
      ),
      home: MyHomePage(title: 'UCanPark'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
