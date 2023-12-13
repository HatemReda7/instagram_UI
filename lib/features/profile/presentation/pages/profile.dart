import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/core/utils/app_images.dart';

class Profile extends StatelessWidget {
  static const String routeName = "profile";

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.chevron_left, color: Colors.black, size: 40.r),
        title: Text(
          "Profile",
          style: GoogleFonts.roboto(
              color: Colors.black, fontSize: 20.r, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 30.r,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  radius: 50.r,
                  backgroundImage: AssetImage(pP2),
                ),
              ),
              SizedBox(
                width: 55.w,
              ),
              Column(
                children: [
                  Text(
                    "???",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18.r,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Posts",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 14.r,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: 20.w,
              ),
              Column(
                children: [
                  Text(
                    "???",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18.r,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Followers",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 14.r,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: 20.w,
              ),
              Column(
                children: [
                  Text(
                    "???",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18.r,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Following",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 14.r,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Wallpaper 4k \nFind High Quality HD Pictures\n",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 14.r,
                      fontWeight: FontWeight.w400)),
              TextSpan(
                  text: "www.wallpapers4k.com",
                  style: GoogleFonts.roboto(
                      color: Color(0xff0F4D73),
                      fontSize: 14.r,
                      fontWeight: FontWeight.w400)),
            ])),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Follow"),
                style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(150.w, 25.h)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Message",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 12.r,
                      fontWeight: FontWeight.w400),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffDFDFDF)),
                    fixedSize: MaterialStatePropertyAll(Size(150.w, 25.h)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.person_add,
                  color: Colors.black,
                  size: 20.r,
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffDFDFDF)),
                    fixedSize: MaterialStatePropertyAll(Size(10.w, 10.h)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.grid_on,size: 30.r,),
                Icon(Icons.video_collection_outlined,size: 30.r,color: Colors.grey,),
                Icon(Icons.person_pin_outlined,size: 30.r,color: Colors.grey,),
              ],
            ),
          ),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 1, mainAxisSpacing: 1),
              children: [
                Image.asset(beach, fit: BoxFit.cover),
                Image.asset(beach, fit: BoxFit.cover),
                Image.asset(beach, fit: BoxFit.cover),
                Image.asset(beach, fit: BoxFit.cover),
                Image.asset(beach, fit: BoxFit.cover),
                Image.asset(beach, fit: BoxFit.cover),
                Image.asset(beach, fit: BoxFit.cover),
                Image.asset(beach, fit: BoxFit.cover),
                Image.asset(beach, fit: BoxFit.cover),
                Image.asset(beach, fit: BoxFit.cover),
              ],
            ),
          )
        ],
      ),
    );
  }
}
