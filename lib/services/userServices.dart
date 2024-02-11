import 'dart:convert';
import 'package:http/http.dart' as http;

class ViewUserApi {

  Future<dynamic> sendData(String name, String address,
      String mobileNo, String qualification, String email,String password) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3001/api/resume/signup");

    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{
          "name": name,
          "address": address,
          "mobileNo": mobileNo,
          "qualification": qualification,
          "email": email,
          "password":password
        })
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    else {
      throw Exception("Failed to send data");
    }
  }

  Future<dynamic> getData(String email,String password) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3001/api/resume/signin");

    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{
          "email": email,
          "password":password
        })
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    else {
      throw Exception("Failed to send data");
    }
  }
}
