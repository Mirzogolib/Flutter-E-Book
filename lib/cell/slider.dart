import 'package:flutter/cupertino.dart';
import 'package:sport_psixologiyasi_/theme/style.dart';
import 'package:sport_psixologiyasi_/utils/constants.dart';

class ImageSliderCell extends StatefulWidget {
  // final Media images;

  // ImageSliderCell(this.images);

  @override
  _ImageSliderCellState createState() => _ImageSliderCellState();
}

class _ImageSliderCellState extends State<ImageSliderCell> {
  @override
  Widget build(BuildContext context) => Container(
        height: 380.0,
        color: Style.colors.primary,
        child: Column(children: [
          const SizedBox(height: 32),
          Image.asset(
            "assets/images/album.png",
            height: 180,
          ),
          const SizedBox(height: 32),
          Text(
            BOOK_NAME,
            textAlign: TextAlign.center,
            style: Style.headline5.copyWith(color: Style.colors.white),
          ),
          const SizedBox(height: 16),
          Text(BOOK_WRITERS,
              style: Style.body1.copyWith(color: Style.colors.white)),
        ]),
      );
}
