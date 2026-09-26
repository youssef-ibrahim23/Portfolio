import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class MobileAppbar extends PreferredSize{

MobileAppbar({super.key})
: super(
    preferredSize: const Size.fromHeight(kToolbarHeight),
  child: Builder(
    builder: (context) {
      final screenWidth = MediaQuery.sizeOf(context).width;
      final isSmallMobile = screenWidth < 375;
      
      return AppBar(
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
                    fontSize: isSmallMobile ? 16.sp : 18.sp,
                    letterSpacing: 0.5,
                    fontFamily: 'Manrope',
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Container(
                margin: EdgeInsets.only(top: 2.h),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: isSmallMobile ? 8.w : 10.w,
                  vertical: isSmallMobile ? 4.h : 5.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primaryAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: AppColors.primaryAccent.withOpacity(0.3),
                  ),
                ),
                child: Text(
                  'FLUTTER DEV',
                  style: TextStyle(
                    color: AppColors.primaryAccent,
                    fontSize: isSmallMobile ? 10.sp : 11.sp,
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
                  size: isSmallMobile ? 26.sp : 28.sp,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      );
    },
  )
);
}