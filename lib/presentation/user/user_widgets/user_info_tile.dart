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
        CachedNetworkImage(
          imageUrl: imagePath,
          imageBuilder: (context, imageProvider) => CircleAvatar(
            radius: 40.r,
            backgroundImage: imageProvider,
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
        SizedBox(
          width: 20.w,
        ),
        SizedBox(
          width: 200.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.w,
              ),
              Text(
                userName,
                overflow: TextOverflow.visible,
                style: getMediumStyle(color: MyColors.black, fontSize: 14.sm),
              ),
              SizedBox(
                height:5.h,
              ),
              Text(
                userInfo,
                overflow: TextOverflow.visible,
                style: getRegularStyle(color: MyColors.black, fontSize: 11.sm),
              )
            ],
          ),
        )
      ],
    );
  }
}
