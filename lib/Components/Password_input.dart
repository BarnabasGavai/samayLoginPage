import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Password_inputfield extends StatelessWidget {
  String on_saved;
  Color bordercolor;
  Password_inputfield(
      {super.key, required this.on_saved, required this.bordercolor});

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
              if (input == null || input.length < 6) {
                return 'Password should have atleast 6 characters.';
              }
            },
            style: const TextStyle(color: Colors.white),
            obscureText: true,
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.visibility,
                  color: Color.fromARGB(255, 254, 250, 250),
                ),
                border: InputBorder.none,
                hintText: 'Password',
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
