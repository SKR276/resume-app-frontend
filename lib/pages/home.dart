import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text("Registration Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  labelText: "User name",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Mobile Number",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Qualification",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email ID",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
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
                  onPressed: (){

                },
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
