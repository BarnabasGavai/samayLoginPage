import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/Components/Login_button.dart';
import 'package:loginpage/Components/Password_input.dart';
import 'package:loginpage/Components/Titles.dart';
import 'package:loginpage/Components/Username_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              Titles(title: "Login", subtitle: "Sign in to get started"),
              SizedBox(
                height: 80,
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
                                validator: "Provide an email",
                                bordercolor: Color.fromARGB(255, 117, 189, 65),
                                on_saved: _email),
                            SizedBox(height: 25),
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
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Forgot Password?",
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 254, 250, 250)),
                              ),
                            )
                          ]),
                    ),
                    SizedBox(height: 60),
                    Center(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        LoginButton(
                            button_name: "Login",
                            onclick_func: () {
                              _formKey.currentState!.validate();
                            }),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 254, 250, 250)),
                            ),
                            Text(
                              "Sign up",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )
                          ],
                        )
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
  }
}
