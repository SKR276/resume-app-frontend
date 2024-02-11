import 'package:flutter/material.dart';
import 'package:resume_app/pages/signin.dart';
import 'package:resume_app/services/userServices.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String getName="",getAddress="",getQualification="",getEmail="",getPassword="",getMobile="";
    TextEditingController name=new TextEditingController();
    TextEditingController address=new TextEditingController();
    TextEditingController qualification=new TextEditingController();
    TextEditingController mobileNo=new TextEditingController();
    TextEditingController email=new TextEditingController();
    TextEditingController password=new TextEditingController();

    void SendValueToApi() async
    {
      final response = await ViewUserApi().sendData(
          name.text,
          address.text,
          mobileNo.text,
          qualification.text,
          email.text,
          password.text);
      if(response["status"]=="success"){
        print("Signed Up Successful");
      }
      else
      {
        print("Sign up failed");
      }
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text("Registration Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 30,),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: "User name",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: address,
                decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: mobileNo,
                decoration: InputDecoration(
                    labelText: "Mobile Number",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: qualification,
                decoration: InputDecoration(
                    labelText: "Qualification",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email ID",
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
              SizedBox(height: 25,),
              SizedBox(
                height: 60,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    )
                  ),
                  onPressed: SendValueToApi,
                child: Text("SUBMIT"),),
              ),
              SizedBox(height: 25,),
              SizedBox(
                height: 60,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.black)
                      ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>SigninPage()
                    ));
                  },
                  child: Text("Already have Account ?",style: TextStyle(color: Colors.black),),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
