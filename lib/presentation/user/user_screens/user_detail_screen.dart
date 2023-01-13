import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_repo/presentation/user/user_widgets/user_info_tile.dart';
import 'package:git_repo/presentation/user/user_widgets/user_repo_body.dart';
import 'package:git_repo/providers/user_provider/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../app/routes/route_manager.dart';
import '../../../common/common_libs.dart';
import '../user_widgets/user_follow_tile.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Consumer<UserProvider>(
            builder: (_, userProvider, __){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70.h,),
                  UserInfoTile(
                      userName: '${userProvider.userProfileModel?.name}',
                      userInfo: "${userProvider.userProfileModel?.bio}",
                      imagePath: '${userProvider.userProfileModel?.avatarUrl}'
                  ),
                  SizedBox(height: 30.h,),
                  UserFollowTile(
                    followerCount: userProvider.userProfileModel!.followers ?? 1,
                    followingCount: userProvider.userProfileModel!.following ?? 1,
                  ),
                  SizedBox(height: 30.h,),
                  Text(
                    'REPOSITORIES',
                    style: getSemiBoldStyle(color: MyColors.black, fontSize: 20.sm),
                  ),
                  SizedBox(height: 30.h,),
                  userProvider.userRepos == null ? Center(
                    child: Container(
                      height: 20.h,
                      width: 20.w,
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(
                      color: MyColors.black,
                    )),
                  ):
                  const UserRepoBody(
                  ),

                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
