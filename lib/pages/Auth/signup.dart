import 'package:flutter/material.dart';
import 'package:projectkomputasibergerak/pages/Auth/signin.dart';
import 'package:projectkomputasibergerak/pages/Auth/verification.dart';

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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 32.0, right: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Center(
                  child: Hero(
                    tag: 'splash',
                    child: Image.asset('assets/signup.png'),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Managing your tasks to create an account',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0x80000000)),
                    )
                  ],
                ),
                SizedBox(
                  height: 22.0,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000)),
                        ),
                        SizedBox(height: 5.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Username',
                            prefixIcon: const Icon(Icons.person),
                            filled: true,
                            fillColor: const Color(0x66D9D9D9),
                            border: InputBorder.none, // Menghapus garis tepi
                            contentPadding: const EdgeInsets.all(
                                17.0), // Padding untuk teks dalam TextField
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide
                                  .none, // Menghapus garis tepi ketika tidak dalam keadaan fokus
                              borderRadius: BorderRadius.circular(
                                  10.0), // Sudut bulat sebesar 10
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide
                                  .none, // Menghapus garis tepi ketika dalam keadaan fokus
                              borderRadius: BorderRadius.circular(
                                  10.0), // Sudut bulat sebesar 10
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Email or Phone Number',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000)),
                        ),
                        SizedBox(height: 5.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Phone Number',
                            prefixIcon: const Icon(Icons.phone),
                            filled: true,
                            fillColor: const Color(0x66D9D9D9),
                            border: InputBorder.none, // Menghapus garis tepi
                            contentPadding: const EdgeInsets.all(
                                17.0), // Padding untuk teks dalam TextField
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide
                                  .none, // Menghapus garis tepi ketika tidak dalam keadaan fokus
                              borderRadius: BorderRadius.circular(
                                  10.0), // Sudut bulat sebesar 10
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide
                                  .none, // Menghapus garis tepi ketika dalam keadaan fokus
                              borderRadius: BorderRadius.circular(
                                  10.0), // Sudut bulat sebesar 10
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000)),
                        ),
                        SizedBox(height: 5.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Password',
                            prefixIcon: const Icon(Icons.lock),
                            filled: true,
                            fillColor: const Color(0x66D9D9D9),
                            border: InputBorder.none, // Menghapus garis tepi
                            contentPadding: const EdgeInsets.all(
                                17.0), // Padding untuk teks dalam TextField
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide
                                  .none, // Menghapus garis tepi ketika tidak dalam keadaan fokus
                              borderRadius: BorderRadius.circular(
                                  10.0), // Sudut bulat sebesar 10
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide
                                  .none, // Menghapus garis tepi ketika dalam keadaan fokus
                              borderRadius: BorderRadius.circular(
                                  10.0), // Sudut bulat sebesar 10
                            ),
                          ),
                        ),
                        SizedBox(height: 38.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Verify(),
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
                                horizontal: 112.0,
                                vertical: 12.0), // Margin kiri-kanan 28px
                          ),
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 16, // Ukuran font 16
                            ),
                          ),
                        ),
                        SizedBox(height: 28.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already Have An Account?',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF000000)),
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
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF6998AB),
                                      decoration: TextDecoration.underline),
                                )),
                          ],
                        )
                      ],
                    )
                  ],
                ) // Ga
              ],
            ),
          ),
        ));
  }
}
