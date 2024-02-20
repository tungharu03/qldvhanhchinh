class Province {
  final String id;
  final String name;
  final String level;

  Province({
    required this.id,
    required this.name,
    required this.level,
  });

  factory Province.fromMap(Map<String, dynamic> map) {
    return Province(
      id: map['id'] ?? '', // Use an empty string as a default value
      name: map['name'] ?? '',
      level: map['level'] ?? '',
    );
  }
}

