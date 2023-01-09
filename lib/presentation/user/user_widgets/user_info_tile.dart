import 'package:cached_network_image/cached_network_image.dart';

import '../../../common/common_libs.dart';

class UserInfoTile extends StatelessWidget {
  final String userName;
  final String userInfo;
  final String imagePath;

  const UserInfoTile({Key? key, required this.userName, required this.userInfo, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80.w,
          height: 80.h,
          color: MyColors.black,
          child: CachedNetworkImage(
            imageUrl: imagePath,
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
              userName,
              style: getMediumStyle(color: MyColors.black, fontSize: 14.sm),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              userInfo,
              style: getRegularStyle(color: MyColors.black, fontSize: 11.sm),
            )
          ],
        )
      ],
    );
  }
}
