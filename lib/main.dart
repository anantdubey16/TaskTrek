import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/screens/home.dart';
import 'package:todo/screens/login_page.dart';
import 'package:todo/screens/register_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      initialRoute: '/',  // We define the initial route as '/'
      routes: {
        '/': (context) => LoginPage(),  // Default route is LoginPage
        '/register': (context) => RegisterPage(),  // Route for the RegisterPage
        '/home': (context) => const Home(),  // Route for the Home screen
      },
    );
  }
}
