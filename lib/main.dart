import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_repo/app/routes/route_manager.dart';

import 'common/common_libs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          title: 'Git-Repo-Project',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: AppRoutes.userDetailspage,
          onGenerateRoute: AppRoutes.onGenerateRoute,
        );
      },
    );
  }
}

