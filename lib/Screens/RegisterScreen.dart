import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/Components/Login_button.dart';
import 'package:loginpage/Components/Logos.dart';
import 'package:loginpage/Components/Password_input.dart';
import 'package:loginpage/Components/Titles.dart';
import 'package:loginpage/Components/Username_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 36, 10),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Titles(title: "Register", subtitle: "Sign in to continue"),
              SizedBox(
                height: 65,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Username",
                                style: GoogleFonts.inter(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                            UsernameInput(
                                hint_text: "Username",
                                validator: "Provide your username",
                                bordercolor: Color.fromARGB(255, 117, 189, 65),
                                on_saved: _email),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Email",
                                style: GoogleFonts.inter(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                            UsernameInput(
                                hint_text: "Email Address",
                                validator: "Provide an email",
                                bordercolor: Color.fromARGB(255, 117, 189, 65),
                                on_saved: _email),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Password",
                                style: GoogleFonts.inter(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                            Password_inputfield(
                              on_saved: _password,
                              bordercolor:
                                  const Color.fromARGB(255, 117, 189, 65),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ]),
                    ),
                    SizedBox(height: 20),
                    Center(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        LoginButton(
                            button_name: "Create Account",
                            onclick_func: () {
                              _formKey.currentState!.validate();
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 254, 250, 250)),
                            ),
                            Text(
                              "Sign in",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Logos(google: () {}, fb: () {}, insta: () {})
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
    ;
  }
}
