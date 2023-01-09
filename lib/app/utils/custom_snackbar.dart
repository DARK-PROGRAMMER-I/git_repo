import 'package:flutter/material.dart';
import 'package:git_repo/app/thems/my_colors.dart';
import 'package:git_repo/app/thems/styles_manager.dart';

showSnackBar({required BuildContext context,required String message}){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: MyColors.black,
        content: Text(message, style: getRegularStyle(color: MyColors.white),) ,
    )
  );
}