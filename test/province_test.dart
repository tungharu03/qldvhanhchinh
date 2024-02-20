import 'package:flutter_test/flutter_test.dart';
import 'package:qldvhanhchinh/province.dart';

void main() {
  test('Province fromMap', () {
    // Test case 1: Valid province map
    Map<String, dynamic> provinceMap = {
      "id": "79",
      "name": "Thành phố Hồ Chí Minh",
      "level": "Thành phố",
    };

    Province province = Province.fromMap(provinceMap);

    expect(province.id, "79");
    expect(province.name, "Thành phố Hồ Chí Minh");
    expect(province.level, "Thành phố");

    // Test case 2: Province map with null values
    Map<String, dynamic> provinceMapNullValues = {
      "id": null,
      "name": null,
      "level": null,
    };

    Province provinceNullValues = Province.fromMap(provinceMapNullValues);

    expect(provinceNullValues.id, '');
    expect(provinceNullValues.name, '');
    expect(provinceNullValues.level, '');

    // Test case 3: Province map with missing values
    Map<String, dynamic> provinceMapMissingValues = {
      // 'id', 'name', and 'level' are missing
    };

    Province provinceMissingValues = Province.fromMap(provinceMapMissingValues);

    expect(provinceMissingValues.id, '');
    expect(provinceMissingValues.name, '');
    expect(provinceMissingValues.level, '');

    // Additional test cases
    // ...

    // Make sure to add more test cases as needed to cover different scenarios
  });
}



