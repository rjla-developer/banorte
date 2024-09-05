import 'package:celula_2_project/feature/account/ui/cuenta_view.dart';
import 'package:celula_2_project/core/di/di.dart';
import 'package:flutter/material.dart';
import 'config/themes/primary_theme.dart';

void main() {
  setupDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Celula 2',
      theme: primaryTheme,
      debugShowCheckedModeBanner: false,
      home: const CuentaView(),
    );
  }
}
