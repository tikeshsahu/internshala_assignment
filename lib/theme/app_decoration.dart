

import 'package:flutter/material.dart';
import 'package:internshala_assignment/theme/app_dimension.dart';
import 'package:internshala_assignment/theme/app_theme.dart';


class AppDecoration{

  static InputBorder inputOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimension.normalRadius),
      borderSide: const BorderSide(
        color: AppTheme.themeBorderColor,
      ),
    );
  }

  static InputBorder errorOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimension.normalRadius),
      borderSide: const BorderSide(
        color: AppTheme.themeErrorColor,
      ),
    );
  }

  static InputDecoration textFieldDecoration({String? hintText, String? labelText, String? errorText, bool error = false}) {
    return InputDecoration(
      labelText: labelText,
      errorText: errorText,
      hintText: hintText,
      border: inputOutlineBorder(),
      disabledBorder: inputOutlineBorder(),
      enabledBorder: inputOutlineBorder(),
      errorBorder: errorOutlineBorder(),
      focusedBorder: inputOutlineBorder(),
      focusedErrorBorder: errorOutlineBorder(),
      contentPadding: const EdgeInsets.only(left: AppDimension.normalPadding, right: AppDimension.normalPadding, top: 0, bottom: 0),
      alignLabelWithHint: false,
    );
  }
}