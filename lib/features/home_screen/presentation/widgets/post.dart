import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/app_images.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          width: 400,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 10.w,),
              Container(
                width: 40,
                decoration: BoxDecoration(gradient: const LinearGradient(colors: [
                  Color(0xffFAF006),
                  Color(0xffFACC05),
                  Color(0xffFACC05),
                  Color(0xffFF0000),
                ], begin: Alignment.centerLeft, end: Alignment.centerRight,),
                  borderRadius: BorderRadius.circular(100),),
                child: Image.asset(marvelPP, width: 80.w),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text("marvel",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: 14.sp),),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: const Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        Image.asset(postImage,width: double.infinity,fit: BoxFit.cover,),
        Row(
          children: [
          SizedBox(width: 15.w,),
          ImageIcon(AssetImage(like),color: Colors.black,size: 26.sp,),
          SizedBox(width: 15.w,),
          ImageIcon(AssetImage(comment),color: Colors.black,size: 26.sp,),
          SizedBox(width: 15.w,),
          ImageIcon(AssetImage(share),color: Colors.black,size: 26.sp,),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 13.h),
            child: ImageIcon(AssetImage(save),color: Colors.black,size: 26.sp,),
          ),
        ],),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: RichText(text: TextSpan(children: [
                TextSpan(text: "Liked by",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16.sp)),
                TextSpan(text: " hatemreda7",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.sp)),
                TextSpan(text: " and",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16.sp)),
                TextSpan(text: " 905,500 others",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.sp)),
              ]),textAlign:  TextAlign.left,),
            ),
            SizedBox(height: 8.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: RichText(text: TextSpan(children: [
                TextSpan(text: "marvel",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.sp)),
                TextSpan(text: "  Start your countdown to the glorious arrival of Marvel Studios' #Loki",style: GoogleFonts.roboto(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 16.sp)),
                TextSpan(text: "...more",style: GoogleFonts.roboto(fontWeight: FontWeight.w300,color: const Color(0xff8A8A8A),fontSize: 16.sp)),
              ]),textAlign:  TextAlign.left,),
            ),
            SizedBox(height: 8.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: RichText(text: TextSpan(children: [
                TextSpan(text: "View all 103 comments",style: GoogleFonts.roboto(fontWeight: FontWeight.w400,color: const Color(0xff8A8A8A),fontSize: 16.sp)),
              ]),textAlign:  TextAlign.left,),
            ),
            SizedBox(height: 8.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: RichText(text: TextSpan(children: [
                TextSpan(text: "3 hours ago",style: GoogleFonts.roboto(fontWeight: FontWeight.w400,color: const Color(0xff8A8A8A),fontSize: 16.sp)),
              ]),textAlign:  TextAlign.left,),
            ),
            SizedBox(height: 8.h,),
          ],
        )
      ],
    );
  }
}
