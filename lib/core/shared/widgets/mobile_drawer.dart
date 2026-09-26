import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:protofolio/core/shared/widgets/drawer_item.dart';

class MobileDrawer extends StatelessWidget {
  final ScrollController? scrollController;

  const MobileDrawer({super.key, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 200.h,
            padding: EdgeInsets.symmetric(
              horizontal: 50.w,
              vertical: 30.h,
            ),
            color: AppColors.primaryAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 110.w,
                  height: 110.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.withOpacity(0.5),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.7),
                      width: 2,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/my_photo.png',
                      fit: BoxFit.contain,

                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Youssef Ibrahim',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Manrope',
                      ),
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14.sp,
                        fontFamily: 'Manrope',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          DrawerItem(title: 'Home', scrollController: scrollController),
          DrawerItem(title: 'About', scrollController: scrollController),
          DrawerItem(title: 'Projects', scrollController: scrollController),
          DrawerItem(title: 'Experience', scrollController: scrollController),
          DrawerItem(title: 'Education', scrollController: scrollController),
          DrawerItem(title: 'Contact', scrollController: scrollController),
        ],
      ),
    );
  }

}