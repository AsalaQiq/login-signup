import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Welcome",
            style: TextStyle(color: Colors.black, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome to flutter class",
            style: TextStyle(color: Colors.black, fontSize: 15),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Image(
            image: NetworkImage('https://png.pngtree.com/png-vector/20190810/ourlarge/pngtree-unlock-lock-security-blue-icon-on-abstract-cloud-background-png-image_1654383.jpg'),
            height: 300,
            width: 200,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            minWidth: 300,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          MaterialButton(
            minWidth: 300,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
            },
            child: Text(
              "Sign up",
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.white,
          ),
        ],
      ),
    ));
  }
}
