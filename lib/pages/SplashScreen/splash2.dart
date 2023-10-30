import 'package:flutter/material.dart';
import 'splash3.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: 10, bottom: 10), // Padding atas dan bawah
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 35),
                   Hero(
                    tag: 'splash',
                    child: Image.asset('assets/splash2.png'),
                  ), // Ganti 'your_image.png' dengan path gambar Anda
                  SizedBox(height: 85), // Padding atas sebelum gambar
                  Text(
                    'Connect With Everyone',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600 // Warna teks hitam
                        ),
                  ),
                  SizedBox(height: 28), // Padding bawah
                  Text(
                    'Always explore more with your friends',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xB2000000),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'and tutor, let’s get connected',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xB2000000),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 55),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                  SizedBox(width: 13),
                  Container(
                    width: 30,
                    height: 9,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFF406882),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  SizedBox(width: 13),
                  Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 55),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Splash3(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary:
                    Color(0xFF406882), // Ganti dengan warna yang diinginkan
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 157.0,
                    vertical: 12.0), // Margin kiri-kanan 28px
              ),
              child: const Text(
                'Next',
                style: TextStyle(
                  fontSize: 16, // Ukuran font 16
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
