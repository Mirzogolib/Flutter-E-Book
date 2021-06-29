import 'package:flutter/cupertino.dart';
import 'package:sport_pedagogikasi/theme/style.dart';

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
            'Jismoniy tarbiya va sport pedagogikasi',
            textAlign: TextAlign.center,
            style: Style.headline5.copyWith(color: Style.colors.white),
          ),
          const SizedBox(height: 16),
          Text('SH.SH. Usmanova D.M. Yoqubova',
              style: Style.body1.copyWith(color: Style.colors.white)),
        ]),
      );
}
