import 'package:aviz_app/screens/listing/add_listling.dart';
import 'package:aviz_app/widget/color_project.dart';
import 'package:aviz_app/widget/title_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationListingScreen extends StatefulWidget {
  LocationListingScreen({super.key});

  @override
  State<LocationListingScreen> createState() => _LocationListingScreenState();
}

class _LocationListingScreenState extends State<LocationListingScreen> {
  @override
  List<String> optionItem = ['آسانسور', 'پارکینگ', 'انباری'];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  /// محتوای اصلی
                  Column(
                    children: [
                      TitleName(title: 'موقعیت مکانی', image: 'map_icon'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text(
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          'بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کنید تا حریم خصوصی شما حفظ شود.',
                          style: TextStyle(
                            fontFamily: 'SM',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: grColor,
                          ),
                        ),
                      ),
                      Container(
                        width: 343.w,
                        height: 244.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/maping.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: SizedBox(
                          height: 40.h,
                          child: Row(
                            children: [
                              _getToggleSwitch(),
                              const Spacer(),
                              Text(
                                'موقعیت دقیق نقشه نمایش داده شود؟',
                                style: TextStyle(
                                  fontFamily: 'SM',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 100.h),
                    ],
                  ),

                  Positioned(
                    bottom: 5,
                    left: 10,
                    right: 10,
                    child: _getSubmitButton(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//===

SizedBox _getDetailItem(List<String> count) {
  return SizedBox(
    height: 170.h,
    child: ListView.builder(
      itemCount: count.length,
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
                  count[index],
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
//===

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

//=====
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
      ).push(MaterialPageRoute(builder: (context) => DetailAddListling()));
    },

    child: Text(
      'بعدی',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
        fontFamily: 'SM',
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
