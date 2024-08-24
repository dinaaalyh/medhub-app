import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Brands extends StatelessWidget {
  final Widget icon;
  final String label;
  final Color startColor;
  final Color endColor;

  const Brands({
    required this.icon,
    required this.label,
    required this.startColor,
    required this.endColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [startColor, endColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 36,
                height: 36,
                child: icon,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: GoogleFonts.overpass(
              textStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(242, 9, 15, 71),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
