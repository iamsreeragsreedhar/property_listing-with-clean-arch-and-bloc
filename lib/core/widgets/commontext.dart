import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final TextStyle Tstyle;
  const CommonText({super.key, required this.text, required this.Tstyle});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Tstyle);
  }
}

class CommonTextwithAlign extends StatelessWidget {
  final String text;
  final TextStyle Tstyle;
  final TextAlign txtalign;
  const CommonTextwithAlign({
    super.key,
    required this.text,
    required this.Tstyle,
    required this.txtalign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Tstyle,
      textAlign: txtalign,
      overflow: TextOverflow.ellipsis,
    );
  }
}


