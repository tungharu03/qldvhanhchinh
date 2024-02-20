class District {
  final String id;
  final String name;
  final String level;
  final String provinceId;

  District({
    required this.id,
    required this.name,
    required this.level,
    required this.provinceId,
  });

  factory District.fromMap(Map<String, dynamic> map) {
    return District(
      id: map['id'] ?? '', // Use an empty string as a default value
      name: map['name'] ?? '',
      level: map['level'] ?? '',
      provinceId: map['provinceId'] ?? '',
    );
  }
}

