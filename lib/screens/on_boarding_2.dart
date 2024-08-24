import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            Image.asset(
              'assets/images/onboarding2.png',
              width: 270,
              height: 270,
            ),
            const SizedBox(height: 40),
            Text(
              'Online medical &\nHealthcare',
              textAlign: TextAlign.center,
              style: GoogleFonts.overpass(
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 9, 15, 71),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Etiam mollis metus non purus\nfaucibus sollicitudin. '
              'Pellentesque\nsagittis mi. Integer.',
              textAlign: TextAlign.center,
              style: GoogleFonts.overpass(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(115, 9, 15, 71),
                ),
              ),
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/welcome');
                  },
                  child: Text(
                    'Skip',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(115, 9, 15, 71),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    _buildDot(isActive: true),
                    _buildDot(),
                    _buildDot(),
                    _buildDot(),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/onboarding1');
                  },
                  child: Text(
                    'Next',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 165, 155),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDot({bool isActive = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? Colors.teal : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}