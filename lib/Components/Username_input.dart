import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class UsernameInput extends StatelessWidget {
  String hint_text;
  String validator;
  String on_saved;
  Color bordercolor;

  UsernameInput(
      {super.key,
      required this.hint_text,
      required this.validator,
      required this.bordercolor,
      required this.on_saved});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: bordercolor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 5, 0, 5),
        child: TextFormField(
            validator: (input) {
              if (input == null || input.isEmpty) {
                return validator;
              }
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint_text,
                hintStyle: GoogleFonts.inter(
                    color: Color.fromARGB(255, 254, 250, 250), fontSize: 14)),
            onSaved: (input) {
              if (input != null) {
                on_saved = input;
              }
            }),
      ),
    );
  }
}
