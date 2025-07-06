import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/assets/assets_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/tabs/hadith/hadith_tab.dart';
import 'package:islami_app/tabs/quran/quran_tab.dart';
import 'package:islami_app/tabs/radio/radio_tab.dart';
import 'package:islami_app/tabs/sebha/sebha_tab.dart';
import 'package:islami_app/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetsIcons.quran,
              colorFilter: ColorFilter.mode(
                currentIndex == 0 ? AppTheme.whiteColor : AppTheme.blackColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetsIcons.hadith,
              colorFilter: ColorFilter.mode(
                currentIndex == 1 ? AppTheme.whiteColor : AppTheme.blackColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetsIcons.sebha,
              colorFilter: ColorFilter.mode(
                currentIndex == 2 ? AppTheme.whiteColor : AppTheme.blackColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetsIcons.radio,
              colorFilter: ColorFilter.mode(
                currentIndex == 3 ? AppTheme.whiteColor : AppTheme.blackColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetsIcons.time,
              colorFilter: ColorFilter.mode(
                currentIndex == 4 ? AppTheme.whiteColor : AppTheme.blackColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
