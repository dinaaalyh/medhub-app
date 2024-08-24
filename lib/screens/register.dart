import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 70),
                Text(
                  'Create your account',
                  style: GoogleFonts.overpass(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 15, 71),
                    ),
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                Focus(
                  onFocusChange: (hasFocus) {
                    setState(() {
                    });
                  },
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Your name',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(115, 9, 15, 71),
                        fontSize: 15.0,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 165, 155), width: 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Focus(
                  onFocusChange: (hasFocus) {
                    setState(() {
                    });
                  },
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(115, 9, 15, 71),
                        fontSize: 15.0,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 165, 155), width: 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Focus(
                  onFocusChange: (hasFocus) {
                    setState(() {
                    });
                  },
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(115, 9, 15, 71),
                        fontSize: 15.0,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(26, 9, 15, 71)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 165, 155), width: 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Focus(
                  onFocusChange: (hasFocus) {
                    setState(() {
                    });
                  },
                  child: TextField(
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
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
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          color: const Color.fromARGB(115, 9, 15, 71),
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/verify');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 15, 55, 89),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'CREATE ACCOUNT',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "<  Already have account? Login",
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
