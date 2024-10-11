import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
   debugPrint = (String? message, {int? wrapWidth}) {};
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riwayat Penjualan',
      home: HomePage(),
    );
  }
}

