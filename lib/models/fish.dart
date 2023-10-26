class Fish {
  final String id;
  final String name;
  final String species;
  final String color;
  final String habitat;

  Fish({
    required this.id,
    required this.name,
    required this.species,
    required this.color,
    required this.habitat,
  });

  factory Fish.fromJson(Map<String, dynamic> json) {
    return Fish(
      id: json['id'],
      name: json['nama'],
      species: json['jenis'],
      color: json['warna'],
      habitat: json['habitat'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': name,
      'jenis': species,
      'warna': color,
      'habitat': habitat,
    };
  }
}
