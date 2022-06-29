import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/signIn';

  const SignIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignIn();
  }
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    // final arg = ModalRoute.of(context)!.settings.arguments as String; //recieve parameter
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('SignIn'),
      // ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.07),
            child: Text(
              'SuRaSri',
              style: const TextStyle(
                fontSize: 70,
                color: Color.fromRGBO(29, 86, 102, 100),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0),
            child: Text(
              'Reading Hub',
              style: const TextStyle(
                  fontSize: 25, color: Color.fromRGBO(29, 86, 102, 100)),
            ),
          ),
          Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('google login!');
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
                        style:
                            TextStyle(color: Color(0xFF336699), fontSize: 20),
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
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('facebook login!');
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
                        style:
                            TextStyle(color: Color(0xFF336699), fontSize: 20),
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
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('surasri login!');
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
                        style:
                            TextStyle(color: Color(0xFF336699), fontSize: 20),
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    debugPrint('fotgot password!!!');
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Color(0xFF336699), fontSize: 15),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                  child: TextButton.icon(
                    onPressed: () {
                      debugPrint('Registration for SuRaSri Account!!!');
                    },
                    icon: Icon(FontAwesomeIcons.plus, size: 25),
                    label: Text(
                      "Registration for SuRaSri Account",
                      style: TextStyle(color: Color(0xFF336699), fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
