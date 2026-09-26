import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class IntroDesktopView extends StatelessWidget {
  final ScrollController? scrollController;

  const IntroDesktopView({super.key, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 700.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40.h,),
              Container(
                margin: EdgeInsets.only(right: 130.w),
                width: 50.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryAccent.withOpacity(0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.mobile_screen_share,
                      color: AppColors.primaryAccent,
                    ),
                    Text(
                      'MOBILE DEVELOPER',
                      style: TextStyle(
                        color: AppColors.primaryAccent,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Text(
                    'Youssef Ibrahim Mohamed',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(width: 52.w),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: AppColors.primaryAccent,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold,
                      fontSize: 7.sp,
                    ),
                  ),
                  SizedBox(width: 117.w),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    "Flutter Developer with hands-on experience building cross-platform mobile\napplications using Flutter, Dart, Firebase, REST APIs, and Clean Architecture.",
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 4.sp,
                      fontFamily: 'Manrope',
                    ),
                  ),
                  SizedBox(width: 51.w),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  SizedBox(width: 10.w),
                  Text(
                    "Experienced in developing scalable mobile solutions, integrating backend services,\nand collaborating with cross-functional teams including UI/UX, Backend, DevOps,\nand Business Analysis.",
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 4.sp,
                      fontFamily: 'Manrope',
                    ),
                  ),
                  SizedBox(width: 29.w),
                ],
              ),
              SizedBox(height: 40.h),
              Row(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      alignment: Alignment.center,
                      width: 45.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryAccent,
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          if (scrollController != null) {
                            scrollController!.animateTo(
                              800,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'View My Projects',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Manrope',
                              ),
                            ),
                            Icon(
                              Icons.arrow_downward_rounded,
                              color: Colors.white,
                              size: 4.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      alignment: Alignment.center,
                      width: 30.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryAccent,
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'View CV',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Manrope',
                              ),
                            ),
                            Icon(
                              Icons.drive_file_move_outlined,
                              color: Colors.white,
                              size: 4.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10.w),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        if (scrollController != null) {
                          scrollController!.animateTo(
                            scrollController!.position.maxScrollExtent,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Contact Me',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.bold,
                              fontSize: 5.sp,
                            ),
                          ),
                          SizedBox(width: 1.w),
                          Icon(
                            Icons.call_made,
                            color: Colors.black,
                            size: 6.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 45.w),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Flutter',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '•',
                    style: TextStyle(
                      color: AppColors.primaryAccent,
                      fontSize: 8.sp,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'Dart',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '•',
                    style: TextStyle(
                      color: AppColors.primaryAccent,
                      fontSize: 8.sp,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'Clean Architecture',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '•',
                    style: TextStyle(
                      color: AppColors.primaryAccent,
                      fontSize: 8.sp,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'State Management',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '•',
                    style: TextStyle(
                      color: AppColors.primaryAccent,
                      fontSize: 8.sp,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'Firebase',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '•',
                    style: TextStyle(
                      color: AppColors.primaryAccent,
                      fontSize: 8.sp,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'REST APIs',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5.w),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 30.h),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 5.w,
                      top: 190.h,
                    ),
                    width: 100.w,
                    height: 440.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryAccent.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(500.r),
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/my_photo.png',
                      width: 110.sp,
                      fit: BoxFit.cover,
                    ).animate()
                        .fadeIn(duration: 700.ms, curve: Curves.easeOut)
                        .scale(
                      begin: const Offset(0.85, 0.85),
                      end: const Offset(1, 1),
                      duration: 700.ms,
                      curve: Curves.easeOutBack,
                    )
                        .animate(onPlay: (c) => c.repeat(reverse: true))
                        .moveY(begin: -6, end: 6, duration: 2800.ms, curve: Curves.easeInOut),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 1.w),
        ],
      ),
    );
  }
}