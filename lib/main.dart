import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final String message = 'Welcom In Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Appbartitle(message: message),
        ),
        body: ScafooldBode(message: message),
      ),
    );
  }
}

class Appbartitle extends StatelessWidget {
  const Appbartitle({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}

class ScafooldBode extends StatelessWidget {
  const ScafooldBode({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Apptext(message: message),
      ],
    );
  }
}

class Apptext extends StatelessWidget {
  const Apptext({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
