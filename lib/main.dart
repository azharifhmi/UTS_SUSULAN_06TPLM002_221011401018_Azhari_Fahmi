import 'package:flutter/material.dart';
import 'pages/shoes_pages.dart'; // arahkan ke file shoes_page.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoesPage(), // ← ini WAJIB ada!
    );
  }
}
