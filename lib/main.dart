import 'package:flutter/material.dart';

import 'features/signUp/presentation/views/signUp.dart';
import 'features/welcome/preentation/views/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SignUpView(),
    );
  }
}

