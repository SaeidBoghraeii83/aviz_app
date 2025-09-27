import 'package:aviz_app/screens/listing/submit_location_screen.dart';
import 'package:aviz_app/screens/main_screen.dart';
import 'package:aviz_app/widget/color_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aviz_app/widget/title_name.dart';

class SubmitListingScreen extends StatefulWidget {
  SubmitListingScreen({super.key});

  @override
  State<SubmitListingScreen> createState() => _SubmitListingScreenState();
}

class _SubmitListingScreenState extends State<SubmitListingScreen> {
  var controllerMetrach = TextEditingController();
  var controllerOtagh = TextEditingController();
  var controllerSakht = TextEditingController();
  var controllerTabaghe = TextEditingController();

  String selectedValue = "فروش آپارتمان";
  List<String> optionItem = ['آسانسور', 'پارکینگ', 'انباری'];

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("فروش آپارتمان"), value: "فروش آپارتمان"),
      DropdownMenuItem(
        child: Text("فروش خانه و ویلا "),
        value: "فروش خانه و ویلا ",
      ),
      DropdownMenuItem(
        child: Text("فروش زمین و کلنگی"),
        value: "فروش زمین و کلنگی",
      ),
      DropdownMenuItem(child: Text("فروش مسکونی"), value: "فروش مسکونی"),
    ];
    return menuItems;
  }

  @override
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
                    'ثبت',
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
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              sliver: SliverToBoxAdapter(
                child: TitleName(
                  title: 'انتخاب دسته بندی آویز',
                  image: 'category_icon',
                ),
              ),
            ),
            SliverToBoxAdapter(child: _getItemCategory()),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              sliver: SliverToBoxAdapter(
                child: TitleName(title: 'ویژگی ها', image: 'property_icon'),
              ),
            ),
            SliverToBoxAdapter(child: _getItemMaterial()),
            SliverToBoxAdapter(
              child: TitleName(title: 'امکانات', image: 'facilities_icon'),
            ),
            SliverToBoxAdapter(child: _getDetailItem()),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              sliver: SliverToBoxAdapter(child: _getSubmitButton()),
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _getSubmitButton() {
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
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => LocationListingScreen()),
        );
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

  SizedBox _getDetailItem() {
    return SizedBox(
      height: 170.h,
      child: ListView.builder(
        itemCount: optionItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
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

  Column _getItemMaterial() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialItem(
              controller: controllerMetrach,
              indexNumber: 350,
              title: 'متراژ',
            ),
            SizedBox(width: 15.w),

            MaterialItem(
              controller: controllerOtagh,
              indexNumber: 1,
              title: 'تعداد اتاق',
            ),
          ],
        ),
        SizedBox(height: 10.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialItem(
              controller: controllerTabaghe,
              indexNumber: 3,
              title: 'طبقه',
            ),
            SizedBox(width: 15.w),
            MaterialItem(
              controller: controllerSakht,
              indexNumber: 1404,
              title: 'سال ساخت',
            ),
          ],
        ),
      ],
    );
  }

  Row _getItemCategory() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'محدوده ملک',
              style: TextStyle(
                fontFamily: 'SM',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: grColor,
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              width: 140.w,
              height: 48.h,
              decoration: BoxDecoration(color: Color(0xffF9FAFB)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,

                      hintText: 'خیابان صیاد شیرازی',
                      hintStyle: TextStyle(
                        color: grColor,
                        fontFamily: 'SM',
                        fontSize: 12.sp,
                      ),
                    ),
                    minLines: 1,
                    textDirection: TextDirection.rtl,
                    keyboardType: TextInputType.text,

                    autofocus: false,
                    showCursor: false,
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SM',
                      color: Color.fromARGB(255, 133, 132, 132),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: 40.w),
        Column(
          children: [
            Text(
              'دسته بندی',
              style: TextStyle(
                fontFamily: 'SM',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: grColor,
              ),
            ),
            SizedBox(height: 10.h),

            Container(
              width: 150.w,
              height: 50.h,
              decoration: BoxDecoration(
                border: Border.all(color: grColor, width: 0.3),
              ),
              child: Column(
                textDirection: TextDirection.rtl,
                children: [
                  DropdownButton(
                    value: selectedValue,
                    alignment: AlignmentGeometry.center,
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: Colors.black,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    iconSize: 30,

                    icon: Image.asset(
                      'image/arrow_down_icon.png',
                      color: Colors.black,
                    ),
                    items: dropdownItems,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

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

//==================================

class MaterialItem extends StatefulWidget {
  MaterialItem({
    super.key,
    required this.controller,
    required this.indexNumber,
    required this.title,
  });
  TextEditingController controller;
  int indexNumber;
  String title;

  @override
  State<MaterialItem> createState() => _MaterialItemState();
}

class _MaterialItemState extends State<MaterialItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.title,

          style: TextStyle(
            fontFamily: 'SM',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: grColor,
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          width: 150.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 233, 235, 238),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '${widget.indexNumber}',
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.indexNumber++;
                              widget.controller.text = widget.indexNumber
                                  .toString();
                            });
                          },
                          child: Icon(Icons.arrow_drop_up, color: rdColor),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (widget.indexNumber > 1) {
                                widget.indexNumber--;
                                widget.controller.text = widget.indexNumber
                                    .toString();
                              }
                            });
                          },
                          child: Icon(Icons.arrow_drop_down, color: rdColor),
                        ),
                      ],
                    ),
                  ),

                  hintStyle: TextStyle(
                    color: grColor,
                    fontFamily: 'SM',
                    fontSize: 12.sp,
                  ),
                ),
                minLines: 1,
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.number,
                autofocus: false,
                showCursor: false,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    widget.indexNumber =
                        int.tryParse(value) ?? widget.indexNumber;
                  }
                },
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SM',
                  color: Color.fromARGB(255, 133, 132, 132),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
