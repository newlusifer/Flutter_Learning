import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class HeaderBackBtn extends StatefulWidget {
  String title;
  HeaderBackBtn({required this.title});

  @override
  _HeaderBackBtn createState() => _HeaderBackBtn();
}

class _HeaderBackBtn extends State<HeaderBackBtn> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.width;
    return Container(
      decoration: DottedDecoration(),
      margin:
          EdgeInsets.only(left: widthScreen * 0.03, right: widthScreen * 0.03),
      padding: EdgeInsets.only(
        top: heightScreen * 0.05,
        // left: widthScreen * 0.02,
        // right: widthScreen * 0.02
      ),
      //  color: Colors.amber,
      child: Row(
        children: <Widget>[
          GestureDetector(
              onTap: (() {
                Navigator.pop(context);
              }),
              child: Container(
                  child: Icon(
                FontAwesomeIcons.caretLeft,
                size: widthScreen * 0.06,
              ))),
          Container(
              //  color: Colors.blue,
              width: widthScreen * 0.757,
              child: Text(
                '${widget.title}',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF000000),
                ),
              )),
          Container(
              child: Image.asset(
            'assets/images/Surasi_icon.png',
            width: 50,
            height: 50,
          )),
        ],
      ),
    );
  }
}
