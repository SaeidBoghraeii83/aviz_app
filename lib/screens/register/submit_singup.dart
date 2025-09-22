import 'package:aviz_app/screens/register/welcome_screen.dart';
import 'package:aviz_app/widget/color_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubmitSingUp extends StatelessWidget {
  const SubmitSingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            _getHeaderItem(),
            Positioned(bottom: 30.h, child: _getButton(context)),
          ],
        ),
      ),
    );
  }
}

Widget _getHeaderItem() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'تایید شماره موبایل  ',
              style: TextStyle(
                fontFamily: 'SM',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(
          'کد ثبت نام پیامک شده را وارد نمایید',

          style: TextStyle(
            fontFamily: 'SM',
            fontSize: 14.sp,
            color: Color(0xff98A2B3),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 40.h),

        Container(
          height: 60,
          child: OtpTextField(
            numberOfFields: 4,
            borderColor: Color(0xFF512DA8),
            focusedBorderColor: Colors.black,
            showFieldAsBox: true,
            borderRadius: BorderRadius.circular(8),
            fieldWidth: 60,

            onCodeChanged: (String code) {
              // کد در حال تایپ شدن
            },
            onSubmit: (String verificationCode) {
              // وقتی همه فیلدها پر شد
              print("کد وارد شده: $verificationCode");
            },
          ),
        ),
        SizedBox(height: 50.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ارسال مجدد کد',
              style: TextStyle(
                color: grColor,
                fontFamily: 'SM',
                fontSize: 14.sp,
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              '۰۰:۰۰',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'SM',
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _getButton(BuildContext context) {
  return ElevatedButton(
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
      ).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
    },
    child: Text(
      'تایید ثبت نام',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
        fontFamily: 'SM',
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
