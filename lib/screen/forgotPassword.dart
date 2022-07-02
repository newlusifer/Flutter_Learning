import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';

class Forgot_Password extends StatefulWidget {
  static const routeName = '/signIn';

  const Forgot_Password({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Forgot_Password();
  }
}

class _Forgot_Password extends State<Forgot_Password> {
  final user_name_input = TextEditingController();
  final password_input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.07),
                      child: Text('SuRaSri',
                          style: GoogleFonts.bilbo(
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(29, 86, 102, 100),
                                  fontSize: 70))),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.width * 0.01),
                      child: Text(
                        'Reading Hub',
                        style: const TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(29, 86, 102, 100)),
                      ),
                    ),
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
                          MediaQuery.of(context).size.width * 0.03),
                    ),
                    Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.02),
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint('Send via mobile sms!');
                          },
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  FontAwesomeIcons.mobileScreen,
                                  size: 25,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Send via mobile sms',
                                  style: TextStyle(
                                      color: Color(0xFF000000), fontSize: 17),
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFffffff),
                            maximumSize: Size(
                              MediaQuery.of(context).size.width * 0.8,
                              MediaQuery.of(context).size.width * 0.12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.02),
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint('Send via E-mail!');
                          },
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  FontAwesomeIcons.at,
                                  size: 25,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Send via E-mail',
                                  style: TextStyle(
                                      color: Color(0xFF000000), fontSize: 17),
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFffffff),
                            maximumSize: Size(
                              MediaQuery.of(context).size.width * 0.8,
                              MediaQuery.of(context).size.width * 0.12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                          ),
                        )),
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
