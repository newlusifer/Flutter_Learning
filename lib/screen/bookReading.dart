import 'dart:developer';
import 'dart:ffi';

import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../components/headerSuRaSri.dart';
import '../components/listBook.dart';
import 'package:dotted_line/dotted_line.dart';
import 'bookInfo.dart';
import '../components/headerBackBtn.dart';

class BookReading extends StatefulWidget {
  static const routeName = '/bookReading';
  const BookReading({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BookReading();
  }
}

class _BookReading extends State<BookReading> {
  int _chapter = 1;
  String bookDetail =
      "Casual Games Toolkit\nThe Flutter Casual Games Toolkit, announced at Google I/O 2022, pulls together new and existing resources that enable you to speed up development of casual games on mobile.This page outlines what resources are available and where you can find them.\nHow Flutter can helpIn the beginning, four engineers had a vision of developing a framework for creating performant mobile apps written as a single application. What later became Flutter has grown in many ways, but has always focused on writing apps.Games fall into roughly two categories: video games and app-like games. You are likely familiar with both types of games, though you might not have thought about them in quite this way.Video games include arcade-style games: shooters, racing games, and so on. Video games are generally action-based and use a continual input device, like a joystick.App-like games include casual games such as board games, card games, puzzles, and strategy games. App-like games tend to respond to user input, like tapping on a card or entering a number or letter.Because these games are app-like, they are especially well suited for Flutter.When we say casual games, we are primarily referring to app-like games in this context.\nWhat’s included\nThe Casual Games Toolkit provides the following free resources:A game template app, available in Flutter’s samples repo, includes the following prebuilt features:\nMain menu\nSound & music\nAds\nIn-app purchases\nAchievements and leader boards\nCrashlytics support\nA video, Build your own game in Flutter, explaining how to use the template\nSource code for a finished tic tac toe game, built using the game template, and released on Android and iOS\nA link to a Flutter Games Discord channel (use the direct link if you already have a Discord account)\nThe game template is opinionated (it pretty much has to be), so it uses specific packages, like provider, google_mobile_ads, in_app_purchase, audioplayers, crashlytics, and games_services. Feel free to change the code to use other packages, if you prefer.\nAnd, yes, the game template assumes that you’ll want to earn money for your mobile game, so the ads and in-app purchase packages are already integrated with the template and ready to be configured.As explained on the Games page, you can also take advantage of up to 900 in offers when you integrate Google services, such as Cloud, Firebase, and Ads, into your game. (Terms and conditions apply: You must connect your Firebase and GCP accounts to use credits for Firebase services and verify your business email during sign up to earn an additional 100 on top of the normal 300 credit. For the Ads offer, check your region’s eligibility).\nGet started\nAre you ready? To get started:\nWatch the Quick Start video\nClone the games template repo\nJoin the Flutter Games community on Discord (use the direct link if you already have a Discord account).\nSet up accounts on AdMob, Firebase, and Cloud, as needed\nWrite your game!\nDeploy to both the Google and Apple stores\nVideo games\nPerhaps you want to write a video-style game? The game template is still valuable for the high-level structure of such games.\nFor video games, you might want to look into the Flame package, join the Flame community on Discord, and play with the Flame demo app on DartPad.\nIn fact, the people at Very Good Ventures wrote a Pinball game for Google I/O 2022 using the Flame engine. For more information, check out I/O Pinball Powered by Flutter and Firebase, a free article on Medium and play the game";
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    //_chapter = arg['chapter'];
    int _chapter_recieve = arg['chapter'];
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.width;

    _nextChapter() {
      log('chapter --> ${_chapter}');
      if (_chapter < 5) {
        log('next');
        setState(() {
          _chapter = _chapter + _chapter_recieve;
        });
      }
    }

    _previousChapter() {
      log('chapter --> ${_chapter}');
      if (_chapter > 1) {
        log('previous');
        setState(() {
          _chapter = _chapter - _chapter_recieve;
        });
      }
    }

    return Scaffold(
        body: Center(
            child: Column(
      children: <Widget>[
        HeaderBackBtn(title: '${arg['dataBook']['name']}'),
        Container(
            margin: EdgeInsets.only(
              left: widthScreen * 0.03,
              right: widthScreen * 0.03,
            ),
            // padding: EdgeInsets.only(
            //     bottom: heightScreen * 0.03, top: heightScreen * 0.02),
            decoration: DottedDecoration(),
            // color: Colors.blue,
            height: heightScreen * 0.13,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _previousChapter();
                  },
                  child:
                      Icon(FontAwesomeIcons.backward, size: widthScreen * 0.05),
                ),
                Container(
                  //  color: Colors.amber,
                  width: widthScreen * 0.82,
                  height: heightScreen * 0.07,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Chapter ${_chapter} : ${arg['dataBook']['name']}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    _nextChapter();
                  },
                  child:
                      Icon(FontAwesomeIcons.forward, size: widthScreen * 0.05),
                ),
              ],
            )),
        Expanded(
            child: SingleChildScrollView(
                padding: EdgeInsets.all(widthScreen * 0.03),
                child: Text('${bookDetail}'))),
      ],
    )));
  }
}

class DottedLine_New extends StatelessWidget {
  const DottedLine_New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.03,
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
            bottom: 0),
        child: DottedLine());
  }
}
