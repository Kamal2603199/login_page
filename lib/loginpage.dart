import 'package:flutter/material.dart';
import 'package:login_page/forgot.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
            children: [
              Image.asset('assets/images/Login.png',scale: 2),
            SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Name',
                hintText: 'Enter Your Name'
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your email'
            ),
          ),
        ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      labelText: 'Enter ur Password'
                  ),
                ),
              ),
        ElevatedButton(
            onPressed: () {},
            child: Text('LogIn'),),
              Text("If u forgot the password"),
              new InkWell(
                child: Text("Forgot Password ?",),
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Forgot()));
                },
              )
         ]
        ),
      )
    );
  }
}
