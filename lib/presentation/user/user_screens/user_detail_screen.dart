import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/common_libs.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 80.h,),
            Row(
              children: [
                Container(
                  width: 80.w,
                  height: 80.h,
                  color: MyColors.black,
                  child: CachedNetworkImage(
                    imageUrl: "",
                    imageBuilder: (context, imageProvider) => Container(
                      width: 120.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.fitHeight),
                      ),
                    ),
                    placeholder: (context, url) => SizedBox(
                        width: 92.w,
                        height: 75.h,
                        child: Center(
                            child: SizedBox(
                                width: 30.w,
                                height: 30.h,
                                child: CircularProgressIndicator()))),
                    errorWidget: (context, url, error) => SizedBox(
                        width: 92.w,
                        height: 75.h,
                        child: Center(
                            child: SizedBox(
                              width: 30.w,
                              height: 30.h,
                              child: Icon(Icons.error),))),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: getMediumStyle(color: MyColors.black, fontSize: 14.sm),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Description',
                      style: getRegularStyle(color: MyColors.black, fontSize: 11.sm),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
