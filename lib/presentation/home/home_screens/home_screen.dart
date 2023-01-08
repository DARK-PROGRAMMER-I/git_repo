import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/common_libs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _nameCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.h,
            ),
            Center(
              child: Container(
                width: 100.w,
                height: 100.h,
                child: Image.asset(AppIcons.githubLogo),
              ),
            ),
            SizedBox(height: 30.h,),
            Text(
                'Welcome To GitRepo',
              style: getBoldStyle(color: MyColors.black, fontSize: 20.sm),
            ),
            SizedBox(height: 30.h,),
            Container(
              width: 300.w,
              child: TextField(
                controller: _nameCtr,
                decoration: InputDecoration(
                  hintText: 'Enter Repo Name',
                  contentPadding: EdgeInsets.symmetric(horizontal: 40.w),
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            MaterialButton(
               minWidth: 200.w,
              color: Colors.black,
              onPressed: (){},
              height: 30.h,
              child: 
              Text(
                "Login",
                style: getRegularStyle(color: MyColors.white),),
            )
          ],
        ),
      ),
    );
  }
}

