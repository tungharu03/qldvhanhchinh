import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'ward.dart'; 
import 'district.dart'; 
import 'province.dart'; 
import 'user_info.dart'; 


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Tải nội dung của tệp JSON từ assets
    String data = await rootBundle.loadString("don_vi_hanh_chinh.json");
    
    // Chuyển đổi chuỗi JSON thành một đối tượng có kiểu dữ liệu từ điển
    Map<String, dynamic> jsonData = json.decode(data);

    // Trích xuất danh sách các tỉnh từ dữ liệu từ điển và chuyển đổi thành
    // danh sách các đối tượng Province
    List provinceData = jsonData['province']; 
    List<Province> provinceList = provinceData.map((json) => Province.fromMap(json)).toList();

    // Trích xuất danh sách các quận từ dữ liệu từ điển và chuyển đổi thành
    // danh sách các đối tượng District
    List districtData = jsonData['district']; 
    List<District> districtList = districtData.map((json) => District.fromMap(json)).toList();

    // Trích xuất danh sách các xã từ dữ liệu từ điển và chuyển đổi thành
    // danh sách các đối tượng Ward
    List wardData = jsonData['ward'];
    List<Ward> wardList = wardData.map((json) => Ward.fromMap(json)).toList();
  } catch (e) {
    // Ghi log ra màn hình debug nếu có lỗi ngoại lệ xảy ra
    debugPrint('Error loading location data: $e');
  }
}

class MyApp extends StatelessWidget {
  final List<UserInfo> userList;

  MyApp(this.userList);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Info'),
        ),
        body: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(userList[index].name ?? ''),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userList[index].email ?? ''),
                    Text('Address: ${userList[index].address?.fullAddress ?? ''}'),
                  ],
                ),
                onTap: () {
                },
              ),
            );
          },
        ),
      ),
    );
  }
}




