import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_psixologiyasi_/cell/button.dart';
import 'package:sport_psixologiyasi_/cell/slider.dart';
import 'package:sport_psixologiyasi_/pages/book.dart';
import 'package:sport_psixologiyasi_/theme/style.dart';
import 'package:sport_psixologiyasi_/utils/constants.dart';

class HomeController extends StatefulWidget {
  HomeController({Key key}) : super(key: key);
  @override
  _HomeControllerState createState() => _HomeControllerState();
}

Widget buttonBuilder(MapEntry<int, String> element, BuildContext context) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Button(
          text: element.value,
          onTap: () =>
              Navigator.of(context).push(BookController.route(element.key)),
        ),
        const SizedBox(height: 16),
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
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(30), bottom: Radius.circular(30)),
            child: Container(
              padding: Style.padding16.copyWith(top: 24.0),
              color: Style.colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    // 'Contents' in English
                    CONTENTS_HEADER.toUpperCase(),
                    style: Style.headline6,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  for (var element in CONTENTS_LIST_MAP.entries)
                    buttonBuilder(element, context),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            THANK_YOU,
            textAlign: TextAlign.center,
            style: Style.body2.copyWith(
              color: Style.colors.white,
            ),
          ),
          const SizedBox(height: 12),
        ],
      )),
    );
  }
}
