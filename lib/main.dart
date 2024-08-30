import 'package:flutter/material.dart';
import 'package:sibha/hivehelper.dart';
import 'package:sibha/sibha_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "ReadexPro",
 
        primarySwatch: Colors.blue,
      ),
      home: const SibhaPage(),
    );
  }
}
