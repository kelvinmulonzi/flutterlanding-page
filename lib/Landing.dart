import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/titlename.png'),
            Image.asset('assets/hero.png'),
            Text(
              "Team up with your friends ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            Text(
              "Create a room and invite your friends to play games together",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
              child: const

            SizedBox(
              width: 300,
              child: FloatingActionButton(
                onPressed: () {},
                child: const Text('Next'),
                backgroundColor: Color(0xFF3D5A80),
              ),
            ),
          ],
        ),
      ),
    );
  }
}