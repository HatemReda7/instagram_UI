import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/core/utils/app_images.dart';
import 'package:instagram/features/home_screen/presentation/widgets/story.dart';
import 'package:instagram/features/home_screen/presentation/widgets/post.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image(image: AssetImage(logo)),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            child: ImageIcon(
              AssetImage(add),
              color: Colors.black,
              size: 22.r,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: ImageIcon(
              AssetImage(like),
              color: Colors.black,
              size: 22.r,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.w, right: 25.w),
            child: ImageIcon(
              AssetImage(messages),
              color: Colors.black,
              size: 22.r,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 34.r,
                      backgroundColor: Colors.transparent,
                      foregroundImage: AssetImage(profilePicture),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            color: Colors.blue,
                            border:
                                Border.all(color: Colors.white, width: 3)),
                        child: Icon(Icons.add, color: Colors.white,size: 20.r,))
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 110,
                  child: ListView.builder(itemBuilder: (context, index) {
                    return const StoryItem();
                  },itemCount: 9,scrollDirection: Axis.horizontal,physics: const AlwaysScrollableScrollPhysics()),
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return const PostItem();
            },itemCount: 10,),
          ),
        ],
      ),
    );
  }
}
