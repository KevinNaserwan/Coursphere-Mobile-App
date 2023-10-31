import 'package:flutter/material.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 16.0),
          child: IconButton(
            icon: Image.asset(
                'assets/back.png'), // Gantilah 'back.png' sesuai dengan nama ikon Anda
            onPressed: () {
              // Tambahkan aksi yang ingin Anda jalankan ketika tombol "back" ditekan di sini
              Navigator.pop(context); // Contoh: Kembali ke halaman sebelumnya
            },
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 26.0),
            Text(
              'Verification',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000)),
            ),
            SizedBox(height: 5.0),
            Text(
              'Please check your phone number',
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0x80000000)),
            ),
            Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 84),
                    Hero(
                      tag: 'splash',
                      child: Image.asset('assets/verify.png'),
                    ),
                    SizedBox(height: 43),
                    Text(
                      'Verification Code',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000)),
                    ),
                    SizedBox(height: 13.0),
                    Text(
                      'Wait for the code to be sent to your number',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0x80000000)),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
