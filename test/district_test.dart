import 'package:flutter_test/flutter_test.dart';
import 'package:qldvhanhchinh/district.dart';

void main() {
  test('District fromMap', () {
    // Test case 1: Valid district map
    Map<String, dynamic> districtMap = {
      "id": "001",
      "name": "Quận 1",
      "level": "Quận",
      "provinceId": "79",
    };

    District district = District.fromMap(districtMap);

    expect(district.id, "001");
    expect(district.name, "Quận 1");
    expect(district.level, "Quận");
    expect(district.provinceId, "79");

    // Test case 2: District map with null values
    Map<String, dynamic> districtMapNullValues = {
      "id": null,
      "name": null,
      "level": null,
      "provinceId": null,
    };

    District districtNullValues = District.fromMap(districtMapNullValues);

    expect(districtNullValues.id, '');
    expect(districtNullValues.name, '');
    expect(districtNullValues.level, '');
    expect(districtNullValues.provinceId, '');

    // Test case 3: District map with missing values
    Map<String, dynamic> districtMapMissingValues = {
      "id": "002",
      // 'name', 'level', and 'provinceId' are missing
    };

    District districtMissingValues = District.fromMap(districtMapMissingValues);

    expect(districtMissingValues.id, "002");
    expect(districtMissingValues.name, '');
    expect(districtMissingValues.level, '');
    expect(districtMissingValues.provinceId, '');

    // Additional test cases
    // ...

    // Make sure to add more test cases as needed to cover different scenarios
  });
}





