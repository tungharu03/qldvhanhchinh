import 'package:flutter_test/flutter_test.dart';
import 'package:qldvhanhchinh/user_info.dart';

void main() {
  test('UserInfo fromMap', () {
    // Test case 1: Valid user info map
    Map<String, dynamic> userInfoMap = {
      "name": "Lê Thanh Tùng",
      "email": "lethanhtungvvtb@example.com",
      "phoneNumber": "123456789",
      "birthDate": "2003-09-09",
      "address": {
        "province": "Hanoi",
        "district": "Ba Dinh",
        "ward": "Cau Giay",
        "street": "ABC Street",
        "fullAddress": "Cau Giay, Ba Dinh, Hanoi",
      },
    };

    UserInfo userInfo = UserInfo.fromMap(userInfoMap);

    expect(userInfo.name, "Lê Thanh Tùng");
    expect(userInfo.email, "lethanhtungvvtb@example.com");
    expect(userInfo.phoneNumber, "123456789");
    expect(userInfo.birthDate?.toLocal().toIso8601String().substring(0, 10), "2003-09-09");
    expect(userInfo.address?.province, "Hanoi");
    expect(userInfo.address?.district, "Ba Dinh");
    expect(userInfo.address?.ward, "Cau Giay");
    expect(userInfo.address?.street, "ABC Street");
    expect(userInfo.address?.fullAddress, "Cau Giay, Ba Dinh, Hanoi");

    // Test case 2: User info map with null values
    Map<String, dynamic> userInfoMapNullValues = {
      "name": null,
      "email": null,
      "phoneNumber": null,
      "birthDate": null,
      "address": null,
    };

    UserInfo userInfoNullValues = UserInfo.fromMap(userInfoMapNullValues);

    expect(userInfoNullValues.name ?? '', '');
    expect(userInfoNullValues.email ?? '', '');
    expect(userInfoNullValues.phoneNumber ?? '', '');
    expect(userInfoNullValues.birthDate, null);
    expect(userInfoNullValues.address, null);

    // Add more test cases as needed
  });
}
