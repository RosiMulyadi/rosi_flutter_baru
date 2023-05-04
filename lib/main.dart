import 'package:flutter/material.dart';
import 'package:rosi_flutter_baru/data/livin_view.dart';
import 'package:rosi_flutter_baru/data/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livin by Mandiri',
      home: LivinView(),
    );
  }
}
