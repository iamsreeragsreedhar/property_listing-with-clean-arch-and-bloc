import 'package:flutter/material.dart';

class Iconwidget extends StatelessWidget {
  void Function()? ontap;
  final IconData icon;

  Iconwidget({super.key, 
  required this.ontap, 
  required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 42,
        width: 42,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.blue),
      ),
    );
  }
}
