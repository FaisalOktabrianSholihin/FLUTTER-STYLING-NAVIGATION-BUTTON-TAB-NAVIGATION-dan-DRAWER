import 'package:flutter/material.dart';

class Register extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register Akun Anda')),
      body:
       Container( 
        child: Column(
          children: <Widget> [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Laman Register',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
       Container( 
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(
          children: <Widget> [
            SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
         Container( 
        child: Column(
          children: <Widget> [
            SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
         Container( 
        child: Column(
          children: <Widget> [
            SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm password',
              ),
            ),
            
            
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Submit')
            )
          ],
        ),),
          ],   
       ),),
          ],
        ),),
    ],
    ),),
    );
  }
}