import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGN UP'),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'SIGN UP',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w700,
                    fontSize: 40),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  onPrimary: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(20, 40), //////// HERE
                ),
                onPressed: () {},
                child: Text('SIGN UP'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
