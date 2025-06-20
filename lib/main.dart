import 'package:flutter/material.dart';
import 'package:insta_forntpage/frontpage.dart' show FrontPage;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Import the generated firebase_options.dart

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Use correct casing
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
      ),
      home: FrontPage(),
    );
  }
}
