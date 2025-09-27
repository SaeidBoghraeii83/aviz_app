import 'package:aviz_app/widget/color_project.dart';
import 'package:aviz_app/widget/title_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyListingScreen extends StatelessWidget {
  MyListingScreen({super.key});

  List<String> itemFacilities = [
    'آسانسور',
    'پارکینگ',
    'انباری',
    'بالکن',
    'پنت هاوس',
    'جنس کف سرامیک',
    'سرویس بهداشتی ایرانی و فرنگی',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('image/save_icon.png'),
                  SizedBox(width: 10.w),

                  Image.asset('image/share_icon.png'),

                  SizedBox(width: 10.w),

                  Image.asset('image/information_icon.png'),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('image/arrow_right_icon.png'),
                ),
              ],
              automaticallyImplyLeading: false,
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 15.w,
                vertical: 5.h,
              ),

              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 160.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('image/product_image_3.png'),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 15.w),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textDirection: TextDirection.rtl,
                      '۱۶ دقیقه پیش در گرگان',
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 14.sp,
                        color: grColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'آپارتمان',
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 14.sp,
                        color: rdColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 15.w,
                vertical: 25.h,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  textAlign: TextAlign.end,
                  'آپارتمان ۵۰۰ متری در صیاد شیرازی',
                  style: TextStyle(
                    fontFamily: 'SM',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 17.w,
                vertical: 25.h,
              ),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'image/grey_arrow_left_icon.png',
                      color: Colors.black,
                    ),
                    Text(
                      textDirection: TextDirection.rtl,
                      'هشدار های قبل از معامله!',
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 550.h,
                  child: DefaultTabController(
                    length: 4,
                    child: Scaffold(
                      appBar: AppBar(
                        automaticallyImplyLeading: false,

                        elevation: 0,
                        bottom: PreferredSize(
                          preferredSize: const Size.fromHeight(48),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.transparent,

                              child: const TabBar(
                                labelColor: Colors.white,
                                unselectedLabelColor: Colors.red,
                                indicator: BoxDecoration(
                                  color: Color(0xffE60023),

                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicatorColor: Colors.transparent,
                                labelStyle: TextStyle(
                                  fontFamily: 'SM',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                tabs: [
                                  Tab(text: 'توضیحات'),
                                  Tab(text: 'امکانات'),
                                  Tab(text: 'قیمت'),
                                  Tab(text: 'مشخصات'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      body: TabBarView(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.w,
                                  vertical: 10.h,
                                ),
                                child: Text(
                                  textDirection: TextDirection.rtl,
                                  'ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.',
                                  style: TextStyle(
                                    wordSpacing: 2,

                                    fontFamily: 'SM',
                                    fontSize: 17.sp,
                                    color: grColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              _getButton(context),
                            ],
                          ),
                          Column(
                            children: [
                              TitleName(
                                title: 'ویژگی ها',
                                image: 'property_icon',
                              ),
                              Container(
                                width: 343.w,
                                height: 96.h,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F4F7),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'تک برگ',
                                            style: TextStyle(
                                              fontFamily: 'SM',
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Text(
                                            'سند',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'SM',
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20.w),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'شمالی',
                                            style: TextStyle(
                                              fontFamily: 'SM',
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Text(
                                            'جهت ساختمان',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'SM',
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TitleName(
                                title: 'امکانات',
                                image: 'facilities_icon',
                              ),
                              Container(
                                height: 200.h,
                                child: ListView.builder(
                                  itemCount: itemFacilities.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(
                                        textDirection: TextDirection.rtl,
                                        itemFacilities[index],
                                        style: TextStyle(
                                          fontFamily: 'SM',
                                          fontSize: 16.sp,
                                          color: grColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 15.h),
                              _getButton(context),
                            ],
                          ),

                          Column(
                            children: [
                              Container(
                                width: 343.w,
                                height: 96.h,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F4F7),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '۴۶٬۴۶۰٬۰۰۰',
                                            style: TextStyle(
                                              fontFamily: 'SM',
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Text(
                                            'قیمت هر متر:',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'SM',
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20.w),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '۲۳٬۲۳۰٬۰۰۰٬۰۰۰',
                                            style: TextStyle(
                                              fontFamily: 'SM',
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Text(
                                            'قیمت کل:',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'SM',
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 50.h),
                              _getButton(context),
                            ],
                          ),
                          Column(
                            children: [
                              _getDetailItem(),
                              SizedBox(height: 10),
                              TitleName(
                                title: 'موقعیت مکانی',
                                image: 'map_icon',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 343.w,
                                  height: 144.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('image/maping.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              _getButton(context),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//==

Widget _getButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _getInformationButton(context),

      SizedBox(width: 10.w),
      _getConversationButton(context),
    ],
  );
}

//==
ElevatedButton _getConversationButton(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: rdColor,
      minimumSize: Size(150.w, 40.h),
      side: BorderSide(color: rdColor, width: 1),
      shape: RoundedRectangleBorder(
        // گوشه‌های صاف
        borderRadius: BorderRadiusGeometry.circular(4.r),
      ),
    ),

    onPressed: () {},
    child: Row(
      children: [
        Text(
          'گفتگو',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontFamily: 'SM',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8.w),
        Image.asset('image/message_icon.png'),
      ],
    ),
  );
}

//==
ElevatedButton _getInformationButton(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: rdColor,
      minimumSize: Size(150.w, 40.h),
      side: BorderSide(color: rdColor, width: 1),
      shape: RoundedRectangleBorder(
        // گوشه‌های صاف
        borderRadius: BorderRadiusGeometry.circular(4.r),
      ),
    ),

    onPressed: () {},
    child: Row(
      children: [
        Text(
          'اطلاعات تماس',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontFamily: 'SM',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8.w),
        Image.asset('image/call_icon.png'),
      ],
    ),
  );
}

//

Widget _getDetailItem() {
  return Container(
    width: 343.w,
    height: 98.h,
    decoration: BoxDecoration(color: Color(0xffF2F4F7)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'ساخت',
              style: TextStyle(
                fontFamily: 'SM',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: grColor,
              ),
            ),
            Text(
              'طبقه',
              style: TextStyle(
                fontFamily: 'SM',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: grColor,
              ),
            ),
            Text(
              'اتاق',
              style: TextStyle(
                fontFamily: 'SM',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: grColor,
              ),
            ),
            Text(
              'متراژ',
              style: TextStyle(
                fontFamily: 'SM',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: grColor,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '1404',
              style: TextStyle(
                fontFamily: 'SM',
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
            Text(
              'دوبلکس',
              style: TextStyle(
                fontFamily: 'SM',

                fontWeight: FontWeight.bold,

                fontSize: 14.sp,
              ),
            ),
            Text(
              '6',
              style: TextStyle(
                fontFamily: 'SM',
                fontWeight: FontWeight.bold,

                fontSize: 14.sp,
              ),
            ),
            Text(
              '500',
              style: TextStyle(
                fontFamily: 'SM',
                fontWeight: FontWeight.bold,

                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
