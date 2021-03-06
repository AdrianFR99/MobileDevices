import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home.dart';
Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black)) ,
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        accentColor: Colors.orange[600],
        
      ),
      home: HomeScreen(),
    );
  }
}

