import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'global.dart';
import 'screens/splash_to_home/login_check/login_check.dart';
import 'utils/routes.dart';
import 'utils/theme.dart';

Future<void> main() async {
  await Global.init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Sneak Peak',
            theme: theme(),
            initialRoute: LoginCheck.routeName,
            routes: routes,
          );
        });
  }
}
