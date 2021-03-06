/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';

class ScreenViewLayoutLink extends StatelessWidget {
  static const String _add = "Add an email account";
  static const String _choices = "to start making choices";

  const ScreenViewLayoutLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        child: ImgProvider.pineappleCry,
        height: SizeProvider.instance.size(120),
      ),
      Padding(
          padding: EdgeInsets.only(top: SizeProvider.instance.size(10)),
          child: Text(_add,
              style: TextStyle(
                  fontFamily: TextProvider.familyKoara,
                  package: TextProvider.package,
                  height: 1,
                  fontSize: SizeProvider.instance.text(20),
                  color: ColorProvider.orange,
                  fontWeight: FontWeight.w800))),
      Padding(
          padding: EdgeInsets.only(top: SizeProvider.instance.size(3)),
          child: Text(_choices,
              style: TextStyle(
                  fontFamily: TextProvider.familyKoara,
                  package: TextProvider.package,
                  height: 1,
                  fontSize: SizeProvider.instance.text(20),
                  color: ColorProvider.tikiBlue,
                  fontWeight: FontWeight.w800)))
    ]));
  }
}
