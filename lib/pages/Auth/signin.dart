import 'package:flutter/material.dart';
import 'package:projectkomputasibergerak/pages/Auth/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool passwordVisible = false;
  bool savePassword = false; // Variable to store whether to save the password
  String savedPassword = ''; // Variable to store the saved password
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
                const SizedBox(
                    height: 40.0), // Jarak antara teks pertama dan teks kedua
                const Text(
                  'Login Account',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Please login with resgistered account',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0x80000000)),
                ),
                const SizedBox(height: 28.0),
                // Input Teks Pertama
                const Text(
                  'Email Or Phone Number',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000)),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    prefixIcon: const Icon(Icons.person),
                    filled: true,
                    fillColor: const Color(0x66D9D9D9),
                    border: InputBorder.none, // Menghapus garis tepi
                    contentPadding: const EdgeInsets.all(
                        17.0), // Padding untuk teks dalam TextField
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide
                          .none, // Menghapus garis tepi ketika tidak dalam keadaan fokus
                      borderRadius:
                          BorderRadius.circular(10.0), // Sudut bulat sebesar 10
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide
                          .none, // Menghapus garis tepi ketika dalam keadaan fokus
                      borderRadius:
                          BorderRadius.circular(10.0), // Sudut bulat sebesar 10
                    ),
                  ),
                ),
                const SizedBox(
                    height: 16.0), // Jarak antara input teks pertama dan kedua
                // Input Teks Kedua
                const Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000)),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    prefixIcon: const Icon(Icons.lock),
                    filled: true,
                    fillColor: const Color(0x66D9D9D9),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(17.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey, // Warna ikon mata
                      ),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                  ),
                  obscureText:
                      !passwordVisible, // Gunakan _passwordVisible untuk mengontrol terlihat atau tersembunyi
                ),
                const SizedBox(height: 22.0),
                const Row(
                  children: <Widget>[
                    Text(
                      'Save Password',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0x80000000),
                      ),
                    ),
                    Spacer(), // This will push the "Forgot Password?" text to the right edge
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6998AB),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 19.0),
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
                    'Sign In',
                    style: TextStyle(
                      fontSize: 16, // Ukuran font 16
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not have an account?',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Signup()));
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(
                              0.0), // Menghilangkan shadowF
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6998AB),
                              decoration: TextDecoration.underline),
                        )),
                  ],
                ),
                const SizedBox(height: 18.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black, // Color of the divider
                        thickness: 1.0, // Thickness of the divider
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'or',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black, // Color of the divider
                        thickness: 1.0, // Thickness of the divider
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 26.0),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle the "Continue with Facebook" button press.
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFF0F0F0)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.only(
                          left: 13.0,
                          right: 13.0,
                          top:
                              15.0, // You can adjust the top and bottom padding as needed
                          bottom: 15.0, // based on your design requirements
                        )),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 13.0,
                                right:
                                    8.0), // Adjust the left and right padding as needed
                            child: Image.asset(
                              'assets/facebook_logo.png', // Replace with the Facebook logo asset
                              height: 25.0,
                              width: 25.0,
                            ),
                          ),
                          const Text('Continue with Facebook',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0x80000000))),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0), // Spacing between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Handle the "Continue with Facebook" button press.
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFF0F0F0)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.only(
                          left: 13.0,
                          right: 13.0,
                          top:
                              13.0, // You can adjust the top and bottom padding as needed
                          bottom: 13.0, // based on your design requirements
                        )),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 13.0,
                                right:
                                    8.0), // Adjust the left and right padding as needed
                            child: Image.asset(
                              'assets/google_logo.png', // Replace with the Facebook logo asset
                              height: 30.0,
                              width: 30.0,
                            ),
                          ),
                          const Text('Continue with Google',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0x80000000))),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
