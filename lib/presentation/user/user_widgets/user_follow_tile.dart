import '../../../common/common_libs.dart';

class UserFollowTile extends StatelessWidget {
  final int followerCount;
  final int followingCount;
  const UserFollowTile({Key? key, required this.followerCount, required this.followingCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
            child: Icon(Icons.person, color: MyColors.black, size: 16.sm,)),
        Expanded(
          flex: 3,
          child: Text(
            '$followerCount followers',
            style: getRegularStyle(color: MyColors.black, fontSize: 12.sm),
          ),
        ),
        Expanded(
          flex: 8,
          child: Text(
            '$followingCount following',
            style: getRegularStyle(color: MyColors.black, fontSize: 12.sm),
          ),
        ),
      ],
    );
  }
}
