import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  String button_name;
  VoidCallback onclick_func;

  LoginButton(
      {super.key, required this.button_name, required this.onclick_func});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 117, 189, 65),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onclick_func,
        child: Center(
            child: Text(button_name,
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
