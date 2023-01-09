import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_repo/presentation/user/user_widgets/user_info_tile.dart';

import '../../../common/common_libs.dart';
import '../user_widgets/user_follow_tile.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h,),
            UserInfoTile(
                userName: 'Hola Kapito',
                userInfo: "Kapito is the best programmer in the world",
                imagePath: 'https://www.google.com/png'
            ),
            SizedBox(height: 30.h,),
            UserFollowTile(
              followerCount: 20,
              followingCount: 100,
            ),
            SizedBox(height: 30.h,),
            Text(
                'REPOSITORIES',
              style: getSemiBoldStyle(color: MyColors.black, fontSize: 20.sm),
            )

          ],
        ),
      ),
    );
  }
}
