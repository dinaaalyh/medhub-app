import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final Color startColor;
  final Color endColor;

  const CategoryItem({
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
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [startColor, endColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 16,
                height: 16,
                child: icon,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: GoogleFonts.overpass(
              textStyle: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(242, 9, 15, 71),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
