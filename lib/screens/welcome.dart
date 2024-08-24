import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/welcome.png',
                height: 248.0,
              ),
              const SizedBox(height: 28.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 15, 71),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/medhub_bg.png',
                        height: 30.0,
                      ),
                      Text(
                        'MedHub',
                        style: GoogleFonts.overpass(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 9, 15, 71),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                'Do you want some help with your\nhealth to get a better life?',
                textAlign: TextAlign.center,
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(115, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 35.0),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 15, 55, 89), 
                  padding: const EdgeInsets.symmetric(horizontal: 74.0, vertical: 14.0),
                ),
                child: Text(
                  'SIGN UP WITH EMAIL',
                  style: GoogleFonts.overpass(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              OutlinedButton.icon(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 13, 38, 58),
                  size: 18.0,
                ),
                label: Text(
                  'CONTINUE WITH FACEBOOK',
                  style: GoogleFonts.overpass(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(191, 9, 15, 71),
                    ),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 14.0),
                  side: const BorderSide(
                    color: Color.fromARGB(26, 9, 15, 71),
                    width: 1.0,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              OutlinedButton.icon(
                onPressed: () {
                },
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  size: 14.0,
                ),
                label: Text(
                  'CONTINUE WITH GMAIL',
                  style: GoogleFonts.overpass(
                    textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(191, 9, 15, 71),
                    ),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 14.0),
                  side: const BorderSide(
                    color: Color.fromARGB(26, 9, 15, 71),
                    width: 1.0,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'LOGIN',
                  style: GoogleFonts.overpass(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(115, 9, 15, 71),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
