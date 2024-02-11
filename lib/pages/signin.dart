import 'package:flutter/material.dart';
import 'package:resume_app/services/userServices.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    String getMail="",getPassword="";
    TextEditingController email=new TextEditingController();
    TextEditingController password=new TextEditingController();
    void SendToResumePage() async
    {
      final response = await ViewUserApi().getData(
          email.text,
          password.text);
      if(response["status"]=="success"){
        print("Successfully Signed In");
      }
      else
      {
        print("Sign In failed");
      }
    }
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Text("Login Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "Email Id",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 40,),
            SizedBox(
              height: 60,
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                onPressed: SendToResumePage,
              child: Text("Sign In"),),
            )
          ],
        ),
      ),
    );
  }
}
