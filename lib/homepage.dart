import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:Text('Signup Page'),),
    body: Center(
      child: Column(
        children: [
          Image.asset('assets/images/Registration.jpg'),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(10.0),
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
                labelText: 'Enter your number'
              ),
            ),
          ),
          ElevatedButton(
              child: Text('Sign In'),
              onPressed: (){},),
          Text('If you are Registered then click on'),
          new InkWell(
            child: Text("Login",style: TextStyle(
              fontSize: 12.0,
              fontStyle: FontStyle.italic,
                 ),),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>LoginPage()));
            },
          )
      ],
      ),
    ),
   );
  }
}
