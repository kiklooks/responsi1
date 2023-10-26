import 'package:flutter/material.dart';
import 'package:responsi1/models/fish.dart'; 

class FishCard extends StatelessWidget {
  final Fish fish; // Ikan yang akan ditampilkan di dalam kartu.

  FishCard(this.fish);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3, // Tingkat elevasi kartu.
      margin: EdgeInsets.all(10), // Margin di sekitar kartu.
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fish.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Jenis: ${fish.species}'),
            Text('Warna: ${fish.color}'),
            Text('Habitat: ${fish.habitat}'),
          ],
        ),
      ),
    );
  }
}
