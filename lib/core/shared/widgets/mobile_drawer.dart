import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:protofolio/core/shared/widgets/drawer_item.dart';

class MobileDrawer extends StatelessWidget {
  final ScrollController? scrollController;
  final GlobalKey? experienceKey;
  final GlobalKey? skillsKey;
  final GlobalKey? projectsKey;
  final GlobalKey? contactKey;

  const MobileDrawer({
    super.key,
    this.scrollController,
    this.experienceKey,
    this.skillsKey,
    this.projectsKey,
    this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isSmallMobile = screenWidth < 375;
    
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: EdgeInsets.all(12.sp),
            height: isSmallMobile ? 200.h : 220.h,
            color: AppColors.primaryAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: isSmallMobile ? 110.w : 120.w,
                  height: isSmallMobile ? 110.w : 120.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0x80FF0000),
                    border: Border.all(
                      color: const Color(0xB3FFFFFF),
                      width: 2,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/my_photo.png',
                      fit: BoxFit.contain,
                      gaplessPlayback: true,
                      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                        if (wasSynchronouslyLoaded) {
                          return child;
                        }
                        return AnimatedOpacity(
                          opacity: frame == null ? 0 : 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                          child: child,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Youssef Ibrahim',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isSmallMobile ? 18.sp : 16.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Manrope',
                      ),
                    ),
                    SizedBox(width: 10.h),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: isSmallMobile ? 14.sp : 13.sp,
                        fontFamily: 'Manrope',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          DrawerItem(
            title: 'Home',
            scrollController: scrollController,
            experienceKey: experienceKey,
            skillsKey: skillsKey,
            projectsKey: projectsKey,
            contactKey: contactKey,
          ),
          DrawerItem(
            title: 'Experience',
            scrollController: scrollController,
            experienceKey: experienceKey,
            skillsKey: skillsKey,
            projectsKey: projectsKey,
            contactKey: contactKey,
          ),
          DrawerItem(
            title: 'Skills',
            scrollController: scrollController,
            experienceKey: experienceKey,
            skillsKey: skillsKey,
            projectsKey: projectsKey,
            contactKey: contactKey,
          ),
          DrawerItem(
            title: 'Projects',
            scrollController: scrollController,
            experienceKey: experienceKey,
            skillsKey: skillsKey,
            projectsKey: projectsKey,
            contactKey: contactKey,
          ),
          DrawerItem(
            title: 'Contact',
            scrollController: scrollController,
            experienceKey: experienceKey,
            skillsKey: skillsKey,
            projectsKey: projectsKey,
            contactKey: contactKey,
          ),
        ],
      ),
    );
  }

}