import 'package:flutter/material.dart';
import 'package:projectkomputasibergerak/pages/Auth/signin.dart';
import 'package:projectkomputasibergerak/pages/Auth/signup.dart';

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
        body: SingleChildScrollView(
          child: Container(
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
                        SizedBox(
                            height: 34.0), // Space between text and text fields
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 12.0),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      counterText: ""),
                                  textInputAction: TextInputAction.next,
                                  maxLength: 1,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0x80000000),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 133.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Signup(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: const Color(
                                0xFF406882), // Ganti dengan warna yang diinginkan
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 142.0,
                                vertical: 12.0), // Margin kiri-kanan 28px
                          ),
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16, // Ukuran font 16
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Didn’t received the code?',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Signin()));
                                },
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(
                                      0.0), // Menghilangkan shadowF
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                ),
                                child: Text(
                                  'Resend',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF6998AB),
                                      decoration: TextDecoration.underline),
                                )),
                          ],
                        )
                      ]),
                )
              ],
            ),
          ),
        ));
  }
}
