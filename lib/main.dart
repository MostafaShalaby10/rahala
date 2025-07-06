import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/app_colors.dart';
import 'features/nav_bar/presentation/pages/nav_bar_view.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 1180),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.white,


            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.white,
              centerTitle: true ,
              shape: Border(
                bottom: BorderSide(color: AppColors.shark50)
              )
            )
          ),
          debugShowCheckedModeBanner: false,
          home: NavBarView(),
        );
      },
    );
  }
}
