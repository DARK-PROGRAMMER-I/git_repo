import 'package:flutter/material.dart';
import 'package:git_repo/common/common_libs.dart';

import '../thems/styles_manager.dart';

void showCustomDialouge({required BuildContext context, required String title, required String message }){
  showDialog(
      context: context,
      builder: (context){
        return AlertDialog(

          content: Container(
            height: 100.h,
            width: 100.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title, style: getBoldStyle(color: MyColors.black, fontSize: 18.sm),),
                SizedBox(height: 20.h,),
                Text(message, style: getRegularStyle(color: MyColors.black, fontSize: 14.sm),)
              ],
            ),
          ),
          actions: [
            MaterialButton(
              color: MyColors.black,
              child:  Text('OK', style: getRegularStyle(color: MyColors.white, fontSize: 14.sm),),
                onPressed: (){
                  Navigator.pop(context);
                },
            )
          ],
        );
      }
  );
}