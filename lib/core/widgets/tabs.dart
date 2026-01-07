import 'package:data_float/core/widgets/commontext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabcontentText extends StatelessWidget {
  final String txt1;
  final String txt2;
  const TabcontentText({super.key, required this.txt1, required this.txt2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          text: txt1,
          Tstyle: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        Divider(),
        CommonText(
          text: txt2,
          Tstyle: GoogleFonts.inter(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
