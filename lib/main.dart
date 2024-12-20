import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart'; 
import 'package:provider/provider.dart';

import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
    child: MaterialApp(
      title: 'SLIME PALACE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.black,
        secondary: Colors.grey[900],
      ),
        useMaterial3: true,
      ),
      home: LoginPage(),
    ),
    );
  }
}