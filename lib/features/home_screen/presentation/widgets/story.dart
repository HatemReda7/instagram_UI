import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/core/utils/app_images.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 70,
          margin: EdgeInsets.only(bottom: 2.h,right: 5.w,left: 10.w,top: 15.h),
          decoration: BoxDecoration(gradient: const LinearGradient(colors: [
            Color(0xffFAF006),
            Color(0xffFACC05),
            Color(0xffFACC05),
            Color(0xffFF0000),
          ], begin: Alignment.centerLeft, end: Alignment.centerRight,),
              borderRadius: BorderRadius.circular(100),),
          child: Image.asset(profilePicture, width: 80.w),
        ),
        Text("leo.messi",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),)
      ],
    );
  }
}
