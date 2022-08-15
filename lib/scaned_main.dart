import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final String message = 'Welcom In Flutter';

  @override
  Widget build(BuildContext context) {
    return Provider<String>(
        create: (context) => message,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Appbartitle(),
            ),
            body: ScafooldBode(),
          ),
        ));
  }
}

class Appbartitle extends StatelessWidget {
  const Appbartitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<String>(context));
  }
}

class ScafooldBode extends StatelessWidget {
  const ScafooldBode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => 10),
        Provider(create: (context) => 50),
      ],
      child: Column(
        children: [
          Apptext(),
        ],
      ),
    );
  }
}

class Apptext extends StatelessWidget {
  const Apptext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<String>(context));
  }
}
