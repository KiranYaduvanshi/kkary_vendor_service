import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_bottom_navigation_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';

class MartBottomNavigation extends StatelessWidget {
  const MartBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MartBottomNavigationController _controller = Get.find();
    return Scaffold(
      body: WillPopScope(
        onWillPop: _controller.onWillPop,
        child: Obx(
          () => Center(
            child: _controller.widgetOptions
                .elementAt(_controller.selectedIndex.value),
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: Obx(
          () => BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 28,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: iconitem(ImagePaths.money),
                activeIcon: activeiconitem(ImagePaths.money),
                label: 'Earnings',
              ),
              BottomNavigationBarItem(
                icon: iconitem(ImagePaths.circulerPerson),
                activeIcon: activeiconitem(ImagePaths.circulerPerson),
                label: 'Profile',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz, size: 24),
                label: 'More',
              ),
            ],
            currentIndex: _controller.selectedIndex.value,
            selectedItemColor: AppColors.blueLight,
            unselectedItemColor: Colors.black87,
            type: BottomNavigationBarType.fixed,
            onTap: _controller.onItemTapped,
          ),
        ),
      ),
    );
  }

  Widget iconitem(String path) {
    return Image.asset(
      path,
      height: 24,
    );
  }

  Widget activeiconitem(String path) {
    return Image.asset(
      path,
      height: 24,
      color: AppColors.blueLight,
    );
  }
}
