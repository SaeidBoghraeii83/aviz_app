import 'package:aviz_app/widget/color_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final bannerController = PageController(viewportFraction: 0.7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Image.asset('image/logo_with_not_background.png'),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'آویز های داغ',
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: _getSliderHorizontal(bannerController)),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'آویز های اخیر',
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: _getSliderVertical(bannerController)),
          ],
        ),
      ),
    );
  }
}

Widget _getSliderHorizontal(PageController control) {
  return SizedBox(
    // width: 400,
    height: 217.h,
    child: PageView.builder(
      itemCount: 7,
      controller: control,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 0.9),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 192.w,
                      height: 102.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('image/product_image_1.png'),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'ویلا ۵۰۰ متری زیر قیمت',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'SM',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 160.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      'ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'SM',
                        color: grColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'SM',
                          color: rdColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 20.w),

                      Text(
                        ': قیمت',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'SM',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}

Widget _getSliderVertical(PageController control) {
  return SizedBox(
    // width: 400,
    height: 200.h,
    child: PageView.builder(
      itemCount: 7,
      controller: control,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),

            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 1),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('image/product_image_2.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, right: 20.w),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,

                          children: [
                            Text(
                              'واحد دوبلکس فول امکانات',
                              style: TextStyle(
                                fontFamily: 'SM',
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              textDirection: TextDirection.rtl,
                              'سال ساخت ۱۳۹۸، سند تک برگ، دوبلکس تجهیزات کامل',
                              style: TextStyle(
                                fontFamily: 'SM',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(height: 20.h),

                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '۸٬۲۰۰٬۰۰۰٬۰۰۰',
                                    style: TextStyle(
                                      fontFamily: 'SM',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp,
                                      color: rdColor,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    ': قیمت  ',
                                    style: TextStyle(
                                      fontFamily: 'SM',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
