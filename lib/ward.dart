class Ward {
  final String id;
  final String name;
  final String level;
  final String districtId;
  final String provinceId;

  Ward({
    required this.id,
    required this.name,
    required this.level,
    required this.districtId,
    required this.provinceId,
  });

  factory Ward.fromMap(Map<String, dynamic> map) {
    return Ward(
      id: map['id'] ?? '', // Use an empty string as a default value
      name: map['name'] ?? '',
      level: map['level'] ?? '',
      districtId: map['districtId'] ?? '',
      provinceId: map['provinceId'] ?? '',
    );
  }
}

