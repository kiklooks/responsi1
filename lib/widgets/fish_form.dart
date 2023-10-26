import 'package:flutter/material.dart';
import 'package:responsi1/models/fish.dart'; // Ganti "nama_proyek" dengan nama proyek Anda.

class FishForm extends StatefulWidget {
  final Function(Fish) onSubmit;

  FishForm(this.onSubmit);

  @override
  _FishFormState createState() => _FishFormState();
}

class _FishFormState extends State<FishForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _speciesController = TextEditingController();
  final TextEditingController _colorController = TextEditingController();
  final TextEditingController _habitatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Nama'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Nama ikan tidak boleh kosong';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _speciesController,
            decoration: InputDecoration(labelText: 'Jenis'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Jenis ikan tidak boleh kosong';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _colorController,
            decoration: InputDecoration(labelText: 'Warna'),
          ),
          TextFormField(
            controller: _habitatController,
            decoration: InputDecoration(labelText: 'Habitat'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final newFish = Fish(
                  id: UniqueKey().toString(),
                  name: _nameController.text,
                  species: _speciesController.text,
                  color: _colorController.text,
                  habitat: _habitatController.text,
                );
                widget.onSubmit(newFish);
                Navigator.of(context).pop();
              }
            },
            child: Text('Tambah Ikan'),
          ),
        ],
      ),
    );
  }
}
