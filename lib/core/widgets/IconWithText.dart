import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Iconwithtext extends StatelessWidget {
  final IconData icon;
  final String txt;

  Iconwithtext({super.key, required this.icon, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(width: 5),
        Text(
          txt,
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 129, 127, 127),
          ),
        ),
      ],
    );
  }
}

class IconwithtextSize extends StatelessWidget {
  final IconData icon;
  final String txt;
  final double isize;
  final double fsize;

  IconwithtextSize({
    super.key,
    required this.icon,
    required this.txt,
    required this.isize,
    required this.fsize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue, size: isize),
        SizedBox(width: 5),
        Text(
          txt,
          style: GoogleFonts.inter(
            fontSize: fsize,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 129, 127, 127),
          ),
        ),
      ],
    );
  }
}
