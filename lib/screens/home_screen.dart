import 'package:flutter/material.dart';
import 'package:responsi1/models/fish.dart';
import 'package:responsi1/screens/fish_detail_screen.dart';
import 'package:responsi1/widgets/fish_form.dart'; 

class HomeScreen extends StatelessWidget {
  final List<Fish> fishList = [
    Fish(
      id: '1',
      name: 'Marlin',
      species: 'Ikan tang biru pasifik',
      color: 'Oren',
      habitat: 'Air Laut',
    ), Fish(
      id: '2',
      name: 'Dori',
      species: 'Ikan tang biru pasifik',
      color: 'Biru',
      habitat: 'Air Laut',
    ),
    // Tambahkan data ikan lainnya di sini sesuai kebutuhan.
  ];

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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FishDetailScreen(fishList[index])));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan aksi untuk menambahkan ikan baru jika diperlukan.
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FishForm((p0) => null)));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
