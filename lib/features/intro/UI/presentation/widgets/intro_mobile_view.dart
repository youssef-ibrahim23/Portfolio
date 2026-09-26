import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class IntroMobileView extends StatelessWidget {
  final ScrollController? scrollController;

  const IntroMobileView({super.key, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 40.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 5.w,
                  top: 100.h,
                ),
                width: 150.w,
                height: 180.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(500.r),
                ),
              ),
              ClipOval(
                child: Image.asset(
                  'assets/images/my_photo.png',
                  width: 180.sp,
                  fit: BoxFit.cover,
                ).animate()
                    .fadeIn(duration: 700.ms, curve: Curves.easeOut)
                    .scale(begin: Offset(0.85, 0.85), end: Offset(1, 1), duration: 700.ms, curve: Curves.easeOutBack)
                    .animate(onPlay: (c) => c.repeat(reverse: true))
                    .moveY(begin: -5, end: 5, duration: 2800.ms, curve: Curves.easeInOut),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryAccent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.mobile_screen_share,
                  color: AppColors.primaryAccent,
                  size: 18.sp,
                ),
                SizedBox(width: 8.w),
                Text(
                  'MOBILE DEVELOPER',
                  style: TextStyle(
                    color: AppColors.primaryAccent,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.bold,
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Youssef Ibrahim Mohamed',
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          Text(
            'Flutter Developer',
            style: TextStyle(
              color: AppColors.primaryAccent,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            "Flutter Developer with hands-on experience building cross-platform mobile applications using Flutter, Dart, Firebase, REST APIs, and Clean Architecture.",
            style: TextStyle(
              color: AppColors.secondaryText,
              fontSize: 13.sp,
              fontFamily: 'Manrope',
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h),
          Text(
            "Experienced in developing scalable mobile solutions, integrating backend services, and collaborating with cross-functional teams including UI/UX, Backend, DevOps, and Business Analysis.",
            style: TextStyle(
              color: AppColors.secondaryText,
              fontSize: 13.sp,
              fontFamily: 'Manrope',
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    if (scrollController != null) {
                      scrollController!.animateTo(
                        800,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'View My Projects',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Manrope',
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.white,
                        size: 18.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
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
                            fontSize: 15.sp,
                          ),
                        ),
                        Icon(
                          Icons.drive_file_move_outline,
                          color: Colors.white,
                          size: 18.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              GestureDetector(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Contact Me',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.call_made,
                      color: Colors.black,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              _buildSkillChip('Flutter'),
              _buildSkillChip('Dart'),
              _buildSkillChip('Clean Architecture'),
              _buildSkillChip('State Management'),
              _buildSkillChip('Firebase'),
              _buildSkillChip('REST APIs'),
            ],
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 6.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightAccentBackground,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.primaryAccent.withOpacity(0.2),
        ),
      ),
      child: Text(
        skill,
        style: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.bold,
          fontSize: 11.sp,
          color: AppColors.primaryText,
        ),
      ),
    );
  }
}