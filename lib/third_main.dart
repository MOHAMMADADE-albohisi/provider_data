import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final String message = 'Welcom In Flutter';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MessageProvider>(
      create: (context) => MessageProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Appbartitle(),
          ),
          body: const scaffoldBode(),
        ),
      ),
    );
  }
}

//****************************************************************************************

class Appbartitle extends StatelessWidget {
  const Appbartitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<MessageProvider>(context, listen: true).message);
  }
}
//****************************************************************************************

class scaffoldBode extends StatelessWidget {
  const scaffoldBode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: const [
          Apptext(),
          TextField(),
        ],
      ),
    );
  }
}
//****************************************************************************************

class Apptext extends StatelessWidget {
  const Apptext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<MessageProvider>(context, listen: true).message);
  }
}

//****************************************************************************************

class TextFiled extends StatelessWidget {
  const TextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (String value) {
        Provider.of<MessageProvider>(context, listen: false)
            .changeMessage(value);
      },
    );
  }
}

//****************************************************************************************

class MessageProvider extends ChangeNotifier {
  String message = 'test project';

  void changeMessage(String message) {
    this.message = message;
    notifyListeners();
  }
}
