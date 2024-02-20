import 'package:flutter_test/flutter_test.dart';
import 'package:qldvhanhchinh/ward.dart';

void main() {
  test('Ward fromMap', () {
    // Test case 1: Valid ward map
    Map<String, dynamic> wardMap = {
      "id": "00001",
      "name": "Phường Phúc Xá",
      "level": "Phường",
      "districtId": "001",
      "provinceId": "01",
    };

    Ward ward = Ward.fromMap(wardMap);

    expect(ward.id, "00001");
    expect(ward.name, "Phường Phúc Xá");
    expect(ward.level, "Phường");
    expect(ward.districtId, "001");
    expect(ward.provinceId, "01");

    // Test case 2: Ward map with null values
    Map<String, dynamic> wardMapNullValues = {
      "id": null,
      "name": null,
      "level": null,
      "districtId": null,
      "provinceId": null,
    };

    Ward wardNullValues = Ward.fromMap(wardMapNullValues);

    expect(wardNullValues.id, '');
    expect(wardNullValues.name, '');
    expect(wardNullValues.level, '');
    expect(wardNullValues.districtId, '');
    expect(wardNullValues.provinceId, '');

    // Test case 3: Ward map with missing values
    Map<String, dynamic> wardMapMissingValues = {
      "id": "002",
      // 'name', 'level', 'districtId', and 'provinceId' are missing
    };

    Ward wardMissingValues = Ward.fromMap(wardMapMissingValues);

    expect(wardMissingValues.id, "002");
    expect(wardMissingValues.name, '');
    expect(wardMissingValues.level, '');
    expect(wardMissingValues.districtId, '');
    expect(wardMissingValues.provinceId, '');

    // Additional test cases
    // ...

    // Make sure to add more test cases as needed to cover different scenarios
  });
}


