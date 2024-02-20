class AddressInfo {
  String? province;
  String? district;
  String? ward;
  String? street;
  String? fullAddress;

  AddressInfo({this.province, this.district, this.ward, this.street, this.fullAddress});

  factory AddressInfo.fromMap(Map<String, dynamic> map) {
    return AddressInfo(
      province: map['province'] ?? '',
      district: map['district'] ?? '',
      ward: map['ward'] ?? '',
      street: map['street'] ?? '',
      fullAddress: _buildFullAddress(map),
    );
  }

  static String _buildFullAddress(Map<String, dynamic> map) {
    List<String> components = [];
    if (map['ward'] != null) components.add(map['ward']);
    if (map['district'] != null) components.add(map['district']);
    if (map['province'] != null) components.add(map['province']);
    return components.join(', ');
  }
}







