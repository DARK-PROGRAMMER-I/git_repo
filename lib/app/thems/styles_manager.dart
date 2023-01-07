import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

// regular style
TextStyle getRegularStyle({
  double fontSize = 16,
  required Color color,
}) {
  return _getTextStyle(
    fontSize.sm,
    FontWeightManager.regular,
    color,
  );
}

// medium style
TextStyle getMediumStyle({
  double fontSize = 12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize.sm,
    FontWeightManager.medium,
    color,
  );
}

// medium style
TextStyle getLightStyle({
  double fontSize = 12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize.sm,
    FontWeightManager.light,
    color,
  );
}

// bold style
TextStyle getBoldStyle({
  double fontSize = 12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize.sm,
    FontWeightManager.bold,
    color,
  );
}

// semibold style
TextStyle getSemiBoldStyle({
  double fontSize = 12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize.sm,
    FontWeightManager.semiBold,
    color,
  );
}
