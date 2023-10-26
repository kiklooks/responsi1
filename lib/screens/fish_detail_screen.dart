import 'package:flutter/material.dart';
import 'package:responsi1/models/fish.dart'; 

class FishDetailScreen extends StatelessWidget {
  final Fish fish; // Ikan yang akan ditampilkan detailnya.

  FishDetailScreen(this.fish);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fish.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Jenis: ${fish.species}'),
            Text('Warna: ${fish.color}'),
            Text('Habitat: ${fish.habitat}'),
          ],
        ),
      ),
    );
  }
}
