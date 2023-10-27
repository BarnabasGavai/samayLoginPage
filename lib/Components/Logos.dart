import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Logos extends StatefulWidget {
  VoidCallback google;
  VoidCallback fb;
  VoidCallback insta;

  Logos(
      {super.key, required this.google, required this.fb, required this.insta});

  @override
  State<Logos> createState() => _LogosState(google, fb, insta);
}

class _LogosState extends State<Logos> {
  VoidCallback google;
  VoidCallback fb;
  VoidCallback insta;
  _LogosState(this.google, this.fb, this.insta);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 140,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: SvgPicture.asset('assets/google.svg'),
              onTap: () => google,
            ),
            InkWell(
              child: SvgPicture.asset('assets/fb.svg'),
              onTap: () => fb,
            ),
            InkWell(
              child: SvgPicture.asset('assets/insta.svg'),
              onTap: () => insta,
            )
          ],
        ),
      ),
    );
  }
}
