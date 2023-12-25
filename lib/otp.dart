import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP'),
      ),
      body: Center(
        child: Column(
            children: [
              Center(child: Image.asset('assets/images/Otp.png', scale: 2)),
            SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter OTP',
                hintText: 'Enter Your OTP'
            ),
          ),
        ),ElevatedButton(
          child: Text('Submit'),
          onPressed: (){},),
    ]),
      ));
  }
}
