import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
        padding: EdgeInsets.only(left: 32.0, right: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            Hero(
              tag: 'splash',
              child: Image.asset('assets/signup.png'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                )
              ],
            ) // Ga
          ],
        ),
      ),
    );
  }
}
