import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:protofolio/core/shared/widgets/navbar_item.dart';

class DesktopAppBar extends PreferredSize {
  final ScrollController? scrollController;
  final GlobalKey? projectsKey;
  final GlobalKey? contactKey;

  DesktopAppBar({
    super.key,
    this.scrollController,
    this.projectsKey,
    this.contactKey,
  }) : super(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      shape: const Border(
        bottom: BorderSide(
          color: Color(0xFFE5E5E5),
          width: 1,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
          bottom: 10.h,
          top: 10.h,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Youssef Ibrahim',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 6.sp,
                letterSpacing: 0.1.w,
                fontFamily: 'Manrope',
                color: AppColors.primaryText,
              ),
            ),
            SizedBox(width: 3.w),
            Container(
              margin: EdgeInsets.only(top: 3.h),
              alignment: Alignment.center,
              width: 23.w,
              height: 20.h,
              decoration: BoxDecoration(
                color: AppColors.primaryAccent.withOpacity(0.1),
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: AppColors.primaryAccent.withOpacity(0.3),
                ),
              ),
              child: Text(
                'FLUTTER DEV',
                style: TextStyle(
                  color: AppColors.primaryAccent,
                  fontSize: 3.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.only(right: 5.w),
          width: 175.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              NavbarItem(
                label: 'Home',
                first: true,
                scrollController: scrollController,
                projectsKey: projectsKey,
                contactKey: contactKey,
              ),
              SizedBox(width: 10.w,),
              NavbarItem(
                label: 'Projects',
                scrollController: scrollController,
                projectsKey: projectsKey,
                contactKey: contactKey,
              ),
              SizedBox(width: 10.w,),
              NavbarItem(
                label: 'Contact',
                scrollController: scrollController,
                projectsKey: projectsKey,
                contactKey: contactKey,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 5.w),
          width: 1,
          height: 40.h,
          color: Colors.black,
        ),
        Container(
          margin: EdgeInsets.only(
            top: 3.h,
            right: 6.w,
          ),
          width: 8.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: AppColors.primaryAccent.withOpacity(0.1),
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.primaryAccent.withOpacity(0.3),
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/my_photo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}