import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class SignupPage extends StatelessWidget {
  //static const routeName = '/signup';

  var email = TextEditingController();
  var username = TextEditingController();
  var password = TextEditingController();
  var confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 95,
              ),
              Text(
                "Sign up",
                style: TextStyle(color: Colors.black, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Create an account, its free",
                //style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(right: 25, left: 25),
                child: TextFormField(controller: username, style: TextStyle(color: Colors.deepPurpleAccent), textAlign: TextAlign.start, decoration: InputDecoration(labelText: "Enter Username", border: OutlineInputBorder(borderRadius: BorderRadius.circular(2.0)))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(right: 25, left: 25),
                child: TextFormField(
                    controller: email,
                    style: TextStyle(color: Colors.deepPurpleAccent),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        labelText: "Enter your email",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(2.0)))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(margin: const EdgeInsets.only(right: 25, left: 25), child: TextFormField(controller: password, style: TextStyle(color: Colors.deepPurpleAccent), textAlign: TextAlign.start, keyboardType: TextInputType.visiblePassword, obscureText: true, decoration: InputDecoration(prefixIcon: Icon(Icons.lock), suffixIcon: Icon(Icons.remove_red_eye), labelText: "Enter your password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(2))))),
              SizedBox(
                height: 10,
              ),
              Container(margin: const EdgeInsets.only(right: 25, left: 25), child: TextFormField(controller: confirmpassword, style: TextStyle(color: Colors.deepPurpleAccent), textAlign: TextAlign.start, keyboardType: TextInputType.visiblePassword, obscureText: true, decoration: InputDecoration(prefixIcon: Icon(Icons.lock), suffixIcon: Icon(Icons.remove_red_eye), labelText: "Confirm your password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(2))))),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: 300,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                padding: EdgeInsets.all(15),
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ?",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
