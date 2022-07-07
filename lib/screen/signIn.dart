import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mainMenu.dart';
import 'forgotPassword.dart';
import 'register.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/signIn';

  const SignIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignIn();
  }
}

class _SignIn extends State<SignIn> {
  bool _login = false;
  final user_name_input = TextEditingController();
  final password_input = TextEditingController();

  _logIn_toggle(action) {
    setState(() {
      if (action == 'on') {
        _login = true;
      } else {
        _login = false;
      }
    });
  }

  _check_login() {
    debugPrint('user_name_input --> ' + user_name_input.text);
    debugPrint('password_input --> ' + password_input.text);

    if (user_name_input.text == '' && password_input.text == '') {
      if (user_name_input.text == '' && password_input.text == '') {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainMenu(),
            ));
      }
    }
  }

  _open_forget_password() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Forgot_Password(),
        ));
  }

  _open_register() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Register(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    // final arg = ModalRoute.of(context)!.settings.arguments as String; //recieve parameter
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('SignIn'),
        // ),
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
                          bottom: MediaQuery.of(context).size.width * 0.07),
                      child: Text(
                        'Reading Hub',
                        style: const TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(29, 86, 102, 100)),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.02),
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint('google login!');
                            _logIn_toggle('off');
                          },
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  FontAwesomeIcons.google,
                                  size: 25,
                                  color: Color(0xFF339933),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Google Login',
                                  style: TextStyle(
                                      color: Color(0xFF336699), fontSize: 20),
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
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.02),
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint('facebook login!');
                            _logIn_toggle('off');
                          },
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  FontAwesomeIcons.facebook,
                                  size: 25,
                                  color: Color(0xFF3b579d),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Facebook Login',
                                  style: TextStyle(
                                      color: Color(0xFF336699), fontSize: 20),
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
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.02),
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint('surasri login!');
                            _logIn_toggle('on');
                          },
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  FontAwesomeIcons.s,
                                  size: 25,
                                  color: Color(0xFF3b88c3),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'SuRaSri Login',
                                  style: TextStyle(
                                      color: Color(0xFF336699), fontSize: 20),
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
                          ),
                        )),
                    Visibility(
                        visible: _login,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.width * 0.05),
                              height: MediaQuery.of(context).size.width * 0.1,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: TextField(
                                controller: user_name_input,
                                decoration: InputDecoration(
                                  icon: Icon(FontAwesomeIcons.user),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.04),
                              height: MediaQuery.of(context).size.width * 0.1,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: TextField(
                                controller: password_input,
                                decoration: InputDecoration(
                                  icon: Icon(FontAwesomeIcons.lock),
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.03),
                                child: ElevatedButton(
                                  onPressed: () {
                                    _check_login();
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                              color: Color(0xFF99e5ff),
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF205867),
                                    maximumSize: Size(
                                      MediaQuery.of(context).size.width * 0.5,
                                      MediaQuery.of(context).size.width * 0.12,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                )),
                          ],
                        )),
                    Spacer(),
                    Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * 0),
                        child: Column(
                          children: <Widget>[
                            TextButton(
                              onPressed: () {
                                debugPrint('fotgot password!!!');
                                _open_forget_password();
                              },
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Color(0xFF336699), fontSize: 15),
                              ),
                            ),
                            TextButton.icon(
                              onPressed: () {
                                debugPrint(
                                    'Registration for SuRaSri Account!!!');
                                _open_register();
                              },
                              icon: Icon(
                                FontAwesomeIcons.userPlus,
                                color: Color(0xFF000000),
                                size: 20,
                              ),
                              label: Text('Registration for SuRaSri Account',
                                  style: TextStyle(
                                      color: Color(0xFF336699), fontSize: 15)),
                            ),
                          ],
                        )),
                  ]),
                ))));
  }
}
