import 'package:git_repo/app/routes/route_manager.dart';

import 'common/common_libs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.homepage,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

