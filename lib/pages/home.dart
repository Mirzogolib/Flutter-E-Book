import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_pedagogikasi/cell/button.dart';
import 'package:sport_pedagogikasi/cell/slider.dart';
import 'package:sport_pedagogikasi/pages/book.dart';
import 'package:sport_pedagogikasi/theme/style.dart';
import 'package:sport_pedagogikasi/utils/constants.dart';

class HomeController extends StatefulWidget {
  HomeController({Key key}) : super(key: key);
  @override
  _HomeControllerState createState() => _HomeControllerState();
}

Widget buttonBuilder(String text, BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Button(
          text: text,
          onTap: () {
            Navigator.of(context).push(
              BookController.route(HEADERS_ARRAY.indexOf(text) + 1),
            );
          },
        ),
        const SizedBox(height: 12),
      ],
    );

class _HomeControllerState extends State<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.colors.primary,
      body: SafeArea(
          child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          ImageSliderCell(),
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            child: Container(
              padding: Style.padding16.copyWith(bottom: 56.0, top: 24.0),
              color: Style.colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Mundarija'.toUpperCase(),
                    style: Style.headline6,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  for (var text in HEADERS_ARRAY) buttonBuilder(text, context),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
