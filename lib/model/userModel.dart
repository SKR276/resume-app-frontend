// To parse this JSON data, do
//
//     final viewList = viewListFromJson(jsonString);

import 'dart:convert';

List<ViewList> viewListFromJson(String str) => List<ViewList>.from(json.decode(str).map((x) => ViewList.fromJson(x)));

String viewListToJson(List<ViewList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ViewList {
  String id;
  String name;
  String address;
  String mobileNo;
  String qualification;
  String email;
  String password;
  int v;

  ViewList({
    required this.id,
    required this.name,
    required this.address,
    required this.mobileNo,
    required this.qualification,
    required this.email,
    required this.password,
    required this.v,
  });

  factory ViewList.fromJson(Map<String, dynamic> json) => ViewList(
    id: json["_id"],
    name: json["name"],
    address: json["address"],
    mobileNo: json["mobileNo"],
    qualification: json["qualification"],
    email: json["email"],
    password: json["password"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "address": address,
    "mobileNo": mobileNo,
    "qualification": qualification,
    "email": email,
    "password": password,
    "__v": v,
  };
}
