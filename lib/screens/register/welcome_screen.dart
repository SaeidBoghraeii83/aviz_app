import 'package:aviz_app/screens/register/submit_singup.dart';
import 'package:aviz_app/screens/register/validation_screen.dart';
import 'package:aviz_app/widget/color_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            _getUserItem(),
            Positioned(bottom: 20, child: _getButton(context)),
          ],
        ),
      ),
    );
  }
}

Widget _getUserItem() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
              'خوش اومدی به ',
              style: TextStyle(
                fontFamily: 'SM',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          '!این فوق العادست که آویزو برای آگهی هات انتخاب کردی',
          style: TextStyle(
            fontFamily: 'SM',
            fontSize: 12.sp,
            color: Color(0xff98A2B3),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 40.h),
        Directionality(
          textDirection: TextDirection.rtl,

          child: TextFormField(
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SM',
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,

            // initialValue: 'شماره موبایل',
            decoration: InputDecoration(
              labelStyle: TextStyle(fontFamily: 'SM'),
              hint: Text(
                'نام و نام خوانوادگی ',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SM',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 40.h),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SM',
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,

            // initialValue: 'شماره موبایل',
            decoration: InputDecoration(
              labelStyle: TextStyle(fontFamily: 'SM'),
              hint: Text(
                'شماره موبایل',
                style: TextStyle(fontFamily: 'SM', fontSize: 15.sp),
              ),

              hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'SM',
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _getButton(BuildContext context) {
  return Column(
    children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(320.w, 40.h),
          backgroundColor: rdColor,
          shape: RoundedRectangleBorder(
            // گوشه‌های صاف
            borderRadius: BorderRadiusGeometry.circular(4),
          ),
        ),
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => SubmitSingUp()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('image/grey_arrow_left_icon.png', color: Colors.white),
            Text(
              'مرحله بعد',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontFamily: 'SM',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 10.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ورود',
            style: TextStyle(
              fontFamily: 'SM',
              fontSize: 15.sp,
              color: rdColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 7),
          Text(
            'تاحالا ثبت نام نکردی ؟ ',
            style: TextStyle(
              fontFamily: 'SM',
              fontSize: 14.sp,
              color: Color.fromARGB(255, 168, 168, 168),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ],
  );
}
