import 'package:flutter/material.dart';
import 'package:template_project/screen/singin.dart';
import 'package:template_project/screen/singup.dart';

class home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/animelogo.png',
              width: 300,
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'selamat datang di aplikasi otaku streaming video',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Singin()));
                  },
                  child: Text('Sign In'),
                ),
                SizedBox(width: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Singup()));
                  },
                  child: Text('Sign up'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
