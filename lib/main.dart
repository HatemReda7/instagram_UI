import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/features/home_screen/presentation/pages/page.dart';

import 'features/home_layout/presentation/pages/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(412, 870),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: BottomBar.routeName,
          routes: {
            BottomBar.routeName: (context) => BottomBar(),
            HomeScreen.routeName: (context) => const HomeScreen(),
          },
        )
    );
  }
}