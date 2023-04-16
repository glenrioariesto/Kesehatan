import 'package:flutter/material.dart';
import 'package:kesehatan/homePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Text(
                'Login Page \n Aplikasi Informasi Kesehatan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 48), // lebar 100%
              ),
            ),
          ],
        ),
      ),
    );
  }
}
