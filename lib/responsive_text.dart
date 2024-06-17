import 'package:flutter/material.dart';

double getResponsiveText(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontsize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontsize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 600;
  } else {
    return width / 1000;
  }
}
