import 'package:flutter/material.dart';
import 'package:responsi1/models/fish.dart'; // Ganti "nama_proyek" dengan nama proyek Anda.

class FishListScreen extends StatelessWidget {
  final List<Fish> fishList; // Daftar ikan yang akan ditampilkan.

  FishListScreen(this.fishList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Ikan'),
      ),
      body: ListView.builder(
        itemCount: fishList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(fishList[index].name),
            subtitle: Text(fishList[index].species),
            onTap: () {
              // Navigasi ke halaman detail ikan jika diperlukan.
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan aksi untuk menambahkan ikan baru jika diperlukan.
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
