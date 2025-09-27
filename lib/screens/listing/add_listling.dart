import 'package:aviz_app/screens/listing/my_listing_screen.dart';
import 'package:aviz_app/screens/main_screen.dart';
import 'package:aviz_app/widget/color_project.dart';
import 'package:aviz_app/widget/title_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailAddListling extends StatelessWidget {
  DetailAddListling({super.key});

  @override
  List<String> optionItem = ['فعال کردن گفتگو', 'فعال کردن تماس'];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('image/logo_type.png'),
                  SizedBox(width: 3.w),
                  Text(
                    'دسته بندی',
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('image/arrow_right_icon.png'),
                ),
              ],
              leading: GestureDetector(
                onTap: () => Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => MainScreen())),
                child: Image.asset('image/close_icon.png'),
              ),
            ),

            SliverToBoxAdapter(
              child: TitleName(title: 'تصویر آویز', image: 'camera_icon'),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 160.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xffF2F4F7),
                  ),
                  child: Column(
                    children: [
                      Container(width: double.infinity),
                      SizedBox(height: 20.h),
                      Text(
                        'لطفا تصویر آویز خود را بارگذاری کنید',
                        style: TextStyle(
                          fontFamily: 'SM',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: grColor,
                        ),
                      ),
                      SizedBox(height: 20.h),

                      Container(
                        width: 159.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: rdColor,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'انتخاب تصویر',
                              style: TextStyle(
                                fontFamily: 'SM',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            SizedBox(
                              child: Image.asset(
                                'image/upload_icon.png',
                                color: Colors.white,
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
            SliverToBoxAdapter(
              child: TitleName(title: 'عنوان آویز', image: 'title_icon'),
            ),
            SliverToBoxAdapter(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 100.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F4F7),

                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: TextField(
                      minLines: 1,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        border: InputBorder.none,

                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        labelStyle: TextStyle(fontFamily: 'SM'),
                        hint: Padding(
                          padding: const EdgeInsets.only(right: 5, top: 15),
                          child: Text(
                            'عنوان آویز را وارد کنید',
                            style: TextStyle(
                              fontFamily: 'SM',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: grColor,
                            ),
                          ),
                        ),
                        hintTextDirection: TextDirection.rtl,
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SM',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TitleName(title: 'توضیحات', image: 'explain_icon'),
            ),
            SliverToBoxAdapter(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  margin: const EdgeInsets.all(10),

                  width: 100.w,
                  height: 104.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F4F7),

                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: TextFormField(
                      maxLines: 4,
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                      textDirection: TextDirection.rtl,

                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontFamily: 'SM'),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hint: Padding(
                          padding: const EdgeInsets.only(right: 20, top: 15),
                          child: Text(
                            'توضیحات آویز را وارد کنید ... ',
                            style: TextStyle(
                              fontFamily: 'SM',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: grColor,
                            ),
                          ),
                        ),

                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SM',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: _getDetailItem(optionItem)),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              sliver: SliverToBoxAdapter(child: _getSubmitButton(context)),
            ),
          ],
        ),
      ),
    );
  }
}

//==
ElevatedButton _getSubmitButton(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: rdColor,
      minimumSize: Size(340.w, 40.h),
      side: BorderSide(color: rdColor, width: 1),
      shape: RoundedRectangleBorder(
        // گوشه‌های صاف
        borderRadius: BorderRadiusGeometry.circular(4.r),
      ),
    ),

    onPressed: () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => MyListingScreen()));
    },
    child: Text(
      'ثبت آگهی',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
        fontFamily: 'SM',
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
//==

SizedBox _getDetailItem(List<String> optionItem) {
  return SizedBox(
    height: 170.h,
    child: ListView.builder(
      itemCount: optionItem.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            shape: Border.all(
              color: const Color.fromARGB(255, 199, 198, 198),
              width: 0.1,
            ),

            title: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  optionItem[index],
                  style: TextStyle(
                    fontFamily: 'SM',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_getToggleSwitch()],
            ),
          ),
        );
      },
    ),
  );
}

//==
class _getToggleSwitch extends StatefulWidget {
  const _getToggleSwitch({super.key});

  @override
  State<_getToggleSwitch> createState() => _getToggleSwitchState();
}

class _getToggleSwitchState extends State<_getToggleSwitch> {
  bool isSwitched = false;

  void _toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 34.w,
      height: 24.h,
      child: FittedBox(
        child: Switch(
          value: isSwitched,
          onChanged: _toggleSwitch,
          activeTrackColor: rdColor,
          activeColor: Colors.white,
        ),
      ),
    );
  }
}
