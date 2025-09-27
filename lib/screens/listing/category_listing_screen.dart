import 'package:aviz_app/screens/home_screen.dart';
import 'package:aviz_app/screens/listing/detail_listing_screen.dart';
import 'package:aviz_app/screens/main_screen.dart';
import 'package:aviz_app/widget/color_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddListingScreen extends StatefulWidget {
  const AddListingScreen({super.key});

  @override
  _AddListingScreenState createState() => _AddListingScreenState();
}

class _AddListingScreenState extends State<AddListingScreen> {
  final List<Map<String, String>> categories = [
    {"title": "اجاره مسکونی"},
    {"title": "فروش مسکونی"},
    {"title": "فروش دفاتر اداری و تجاری"},
    {"title": "اجاره دفاتر اداری و تجاری"},
    {"title": "اجاره کوتاه مدت"},
    {"title": "پروژه های ساخت و ساز"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('image/logo_type.png'),
            Text(
              'دسته بندی ',
              style: TextStyle(
                fontFamily: 'SM',
                fontSize: 14.sp,
                color: rdColor,
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
        leading: Image.asset('image/close_icon.png'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: categories.length,
                separatorBuilder: (_, __) => Divider(height: 0.5),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SubmitListingScreen(),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          category['title']!,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'SM',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        leading: Image.asset('image/red_arrow_left_icon.png'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
