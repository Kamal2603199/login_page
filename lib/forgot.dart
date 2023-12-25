import 'package:flutter/material.dart';
import 'package:login_page/otp.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),

      ),
      body: Center(
        child: Column(
            children: [
              Center(child: Image.asset('assets/images/Question.png',scale: 2)),
            SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Password',
                hintText: 'Enter your New Password'
            ),
          ),
        ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      hintText: 'Confirm Password'
                  ),
                ),
              ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Otp()));},
          child: Text('Submit'),),
    ]),
      ));
  }
}
