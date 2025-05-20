import 'package:flutter/material.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Shoes',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'), // Ganti sesuai gambar kamu
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 👟 List sepatu (sementara dummy)
            Expanded(
              child: ListView(
                children: const [
                  ShoeCard(name: 'Nike Air Max', price: 'Rp 1.200.000', image: 'assets/shoe1.png'),
                  ShoeCard(name: 'Nike Air Force', price: 'Rp 900.000', image: 'assets/shoe1.png'),
                  ShoeCard(name: 'Nike Dunk', price: 'Rp 1.000.000', image: 'assets/shoe1.png'),
                  ShoeCard(name: 'Nike Air Jordan', price: 'Rp 1.500.000', image: 'assets/shoe1.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;

  const CategoryChip({super.key, required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Chip(
        label: Text(label),
        backgroundColor: selected ? Colors.black : Colors.grey[200],
        labelStyle: TextStyle(
          color: selected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const ShoeCard({super.key, required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(image, width: 80, height: 80, fit: BoxFit.cover),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(price, style: const TextStyle(fontSize: 16, color: Colors.grey)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}