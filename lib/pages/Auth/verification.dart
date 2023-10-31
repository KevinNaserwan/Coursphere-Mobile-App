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
    );
  }
}
