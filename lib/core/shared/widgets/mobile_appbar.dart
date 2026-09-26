import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class MobileAppbar extends PreferredSize{

MobileAppbar({super.key})
: super(
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
        left: 5.w,
        bottom: 2.h,
        top: 2.h,
      ),
      child: Row(
        children: [
          Flexible(
            child: Text(
              'Youssef Ibrahim',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                letterSpacing: 0.5,
                fontFamily: 'Manrope',
                color: AppColors.primaryText,
              ),
            ),
          ),
          SizedBox(width: 6.w),
          Container(
            margin: EdgeInsets.only(top: 2.h),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 3.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryAccent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(
                color: AppColors.primaryAccent.withOpacity(0.3),
              ),
            ),
            child: Text(
              'FLUTTER DEV',
              style: TextStyle(
                color: AppColors.primaryAccent,
                fontSize: 9.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
          ),
        ],
      ),
    ),
    actions: [
      Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: AppColors.primaryAccent,
              size: 24.sp,
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          );
        },
      ),
    ],
  )
);
}