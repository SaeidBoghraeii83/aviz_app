import 'package:aviz_app/screens/listing/category_listing_screen.dart';
import 'package:aviz_app/screens/home_screen.dart';
import 'package:aviz_app/screens/register/login_screen.dart';
import 'package:aviz_app/screens/register/regester_screen.dart';
import 'package:aviz_app/screens/register/welcome_screen.dart';
import 'package:aviz_app/widget/color_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationItem = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15.sp,

        selectedLabelStyle: TextStyle(
          fontFamily: 'SM',
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
        selectedItemColor: rdColor,

        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'SM',
          fontSize: 9.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),

        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        currentIndex: _selectedBottomNavigationItem,
        onTap: (int index) {
          setState(() {
            _selectedBottomNavigationItem = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset('image/active_setting_icon.png'),
            label: 'آویز من',

            icon: Image.asset('image/inactive_setting_icon.png'),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('image/active_add_icon.png'),
            label: 'افزودن آویز',
            icon: Image.asset('image/inactive_add_icon.png'),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('image/active_search_icon.png'),
            label: 'جستجو',
            icon: Image.asset('image/search_icon.png'),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('image/active_home_icon.png'),

            label: 'آویز آگهی',

            icon: Image.asset('image/inactive_home_icon.png'),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationItem,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      LoginScreen(),
      AddListingScreen(),
      WelcomeScreen(),
      HomeScreen(),
    ];
  }
}
