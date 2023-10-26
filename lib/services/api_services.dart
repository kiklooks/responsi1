import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:responsi1/models/fish.dart'; 

class ApiService {
  final String baseUrl = 'https://responsi1a.dalhaqq.xyz/';

  Future<List<Fish>> fetchFishList() async {
    final response = await http.get(Uri.parse('$baseUrl/api/fish'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      List<Fish> fishList = data.map((json) => Fish.fromJson(json)).toList();
      return fishList;
    } else {
      throw Exception('Gagal mengambil data ikan');
    }
  }

  Future<Fish> addFish(Fish newFish) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/fish'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(newFish.toJson()),
    );

    if (response.statusCode == 201) {
      return Fish.fromJson(json.decode(response.body));
    } else {
      throw Exception('Gagal menambahkan ikan');
    }
  }
}
