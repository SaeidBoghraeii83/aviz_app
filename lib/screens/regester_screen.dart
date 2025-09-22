import 'package:aviz_app/widget/color_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RegesterScreen extends StatelessWidget {
  RegesterScreen({super.key});
  final Controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [_getImage(), _getInformationTitle(), _getButtonRegester()],
        ),
      ),
    );
  }
}

Widget _getImage() {
  return Stack(
    alignment: AlignmentGeometry.bottomCenter,
    children: [
      Image.asset('image/background_pattern_image.png'),
      Image.asset('image/welcome_image.png'),
    ],
  );
}

Widget _getInformationTitle() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'اگهی شماست',
            style: TextStyle(
              fontFamily: 'SM',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 64.w,
              height: 26.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/logo_with_not_background.png'),
                ),
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffF2F4F7),
              ),
            ),
          ),
          Text(
            'اینجا محل',
            style: TextStyle(
              fontFamily: 'SM',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
      SizedBox(height: 10.h),
      Container(
        width: 305.w,
        height: 93.h,
        child: Text(
          textAlign: TextAlign.center,
          'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید',
          style: TextStyle(
            color: Color(0xff98A2B3),
            fontFamily: 'SM',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      SizedBox(height: 40.h),
      SmoothPageIndicator(
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 10,
          activeDotColor: rdColor,
          dotColor: Color(0xffEAECF0),
          dotWidth: 8,
          // type: WormType.thinUnderground,
        ),
        controller: PageController(),
      ),
    ],
  );
}

Widget _getButtonRegester() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      OutlinedButton(
        style: OutlinedButton.styleFrom(
          minimumSize: Size(149.w, 40.h),
          side: BorderSide(color: rdColor, width: 1),
          shape: RoundedRectangleBorder(
            // گوشه‌های صاف
            borderRadius: BorderRadiusGeometry.circular(4.r),
          ),
        ),

        onPressed: () {},
        child: Text(
          'ورود',
          style: TextStyle(
            color: rdColor,
            fontSize: 16.sp,
            fontFamily: 'SM',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      SizedBox(width: 20.w),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(149.w, 40.h),
          backgroundColor: rdColor,
          shape: RoundedRectangleBorder(
            // گوشه‌های صاف
            borderRadius: BorderRadiusGeometry.circular(4),
          ),
        ),
        onPressed: () {},
        child: Text(
          'ثبت نام ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontFamily: 'SM',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
