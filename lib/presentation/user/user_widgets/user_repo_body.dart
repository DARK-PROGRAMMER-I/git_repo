import 'package:git_repo/providers/user_provider/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../app/routes/route_manager.dart';
import '../../../common/common_libs.dart';

class UserRepoBody extends StatelessWidget {

  const UserRepoBody({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (_, userProvider, __) {
        return GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            primary: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.w
            ),
            itemCount: userProvider.userRepos!.length,
            itemBuilder: (context, index) {
              return InkWell(
                borderRadius: BorderRadius.circular(20.r),
                onTap: (){
                Navigator.pushNamed(
                  context,
                  AppRoutes.webViewspage,
                  arguments: userProvider.userRepos![index].htmlUrl.toString(),
                );
              },
                child: Container(
                  padding: EdgeInsets.all(20.sm),
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      border: const Border.fromBorderSide(
                        BorderSide(
                            color: MyColors.black
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.black,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                          spreadRadius: 1
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30.r)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 10.r,
                            backgroundImage: NetworkImage(userProvider
                                .userRepos![index].owner!.avatarUrl!),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            width: 70.w,
                            child: Text(
                              userProvider.userRepos![index].name!,
                              overflow: TextOverflow.clip,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              );
            }
        );
      }
    );
  }
}
