import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';

class Register extends StatefulWidget {
  static const routeName = '/signIn';

  const Register({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {
  final mobile_input = TextEditingController();
  final Email_input = TextEditingController();
  final UserName_input = TextEditingController();
  final PassWord_input = TextEditingController();

  debug_print() {
    debugPrint('test');
  }

  text_icon_left_input(
      icon, double sizeIcon, text, double sizeText, value_textfield) {
    return Container(
        child: Column(
      children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: sizeIcon,
              ),
              Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.01),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: sizeText),
                  )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.1,
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            controller: value_textfield,
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
        Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1),
            child: DottedLine()),
      ],
    ));
  }

  header_SuRaSri() {
    return Column(
      children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.07),
          child: Text('SuRaSri',
              style: GoogleFonts.bilbo(
                  textStyle: TextStyle(
                      color: Color.fromRGBO(29, 86, 102, 100), fontSize: 70))),
        ),
        Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.01),
          child: Text(
            'Reading Hub',
            style: const TextStyle(
                fontSize: 25, color: Color.fromRGBO(29, 86, 102, 100)),
          ),
        ),
      ],
    );
  }

  button_New(onpressd, text, double sizeText, colorText, colorBtn) {
    return Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            top: MediaQuery.of(context).size.width * 0.08),
        child: ElevatedButton(
          onPressed: onpressd,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(color: colorText, fontSize: sizeText),
                ),
              )
            ],
          ),
          style: ElevatedButton.styleFrom(
            primary: colorBtn,
            maximumSize: Size(
              MediaQuery.of(context).size.width * 0.8,
              MediaQuery.of(context).size.width * 0.12,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ));
  }

  void _register() {
    log('mobile --> ${mobile_input.value.text}');
    log('email --> ${Email_input.value.text}');
    log('username --> ${UserName_input.value.text}');
    log('password --> ${PassWord_input.value.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Column(children: <Widget>[
                    header_SuRaSri(),
                    DottedLine_New(),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF000000),
                      ),
                    ),
                    DottedLine_New(),
                    Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.02),
                    ),
                    text_icon_left_input(FontAwesomeIcons.mobileScreen, 25,
                        'Mobile', 15, mobile_input),
                    Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.02),
                    ),
                    text_icon_left_input(
                        FontAwesomeIcons.at, 25, 'E-mail', 15, Email_input),
                    Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.02),
                    ),
                    text_icon_left_input(FontAwesomeIcons.user, 25, 'User Name',
                        15, UserName_input),
                    Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.02),
                    ),
                    text_icon_left_input(FontAwesomeIcons.lock, 25, 'Password',
                        15, PassWord_input),
                    button_New(_register, 'Registration Request', 15,
                        Color(0xFFffffff), Color(0xFF205867)),
                  ]),
                ))));
  }
}

class DottedLine_New extends StatelessWidget {
  const DottedLine_New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: DottedLine());
  }
}
