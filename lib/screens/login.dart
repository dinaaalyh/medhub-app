import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isUsernameFocused = false;
  bool _isPasswordFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.overpass(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 15, 71),
                    ),
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Focus(
                  onFocusChange: (hasFocus) {
                    setState(() {
                      _isUsernameFocused = hasFocus;
                    });
                  },
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: _isUsernameFocused ? null : const Icon(Icons.person_outline),
                      labelText: 'Username',
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(115, 9, 15, 71),
                        fontSize: 15.0,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 165, 155), width: 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Focus(
                  onFocusChange: (hasFocus) {
                    setState(() {
                      _isPasswordFocused = hasFocus;
                    });
                  },
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: _isPasswordFocused ? null : const Icon(Icons.lock_outline),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(115, 9, 15, 71),
                        fontSize: 15.0,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 165, 155), width: 1),
                      ),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Forgot?',
                          style: TextStyle(
                            color: Color.fromARGB(115, 9, 15, 71),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 15, 55, 89),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'SIGN IN',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text(
                    "<  Don't have an account? Sign Up",
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(115, 9, 15, 71),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
