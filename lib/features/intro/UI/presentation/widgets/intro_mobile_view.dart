import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroMobileView extends StatelessWidget {
  final ScrollController? scrollController;
  final GlobalKey? experienceKey;
  final GlobalKey? skillsKey;
  final GlobalKey? projectsKey;
  final GlobalKey? contactKey;

  const IntroMobileView({
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
    
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 50.h,
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
                  top: isSmallMobile ? 90.h : 110.h,
                ),
                width: isSmallMobile ? 140.w : 160.w,
                height: isSmallMobile ? 160.h : 190.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryAccent30,
                  borderRadius: BorderRadius.circular(500.r),
                ),
              ),
              ClipOval(
                child: Image.asset(
                  'assets/images/my_photo.png',
                  width: isSmallMobile ? 160.sp : 190.sp,
                  fit: BoxFit.cover,
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
                ).animate()
                    .fadeIn(duration: 700.ms, curve: Curves.easeOut)
                    .scale(begin: Offset(0.85, 0.85), end: Offset(1, 1), duration: 700.ms, curve: Curves.easeOutBack)
                    .animate(onPlay: (c) => c.repeat(reverse: true))
                    .moveY(begin: -5, end: 5, duration: 2800.ms, curve: Curves.easeInOut),
              ),
            ],
          ),
          SizedBox(height: isSmallMobile ? 25.h : 35.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: isSmallMobile ? 14.w : 18.w,
              vertical: isSmallMobile ? 8.h : 10.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryAccent10,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.mobile_screen_share,
                  color: AppColors.primaryAccent,
                  size: isSmallMobile ? 18.sp : 20.sp,
                ),
                SizedBox(width: isSmallMobile ? 8.w : 10.w),
                Text(
                  'MOBILE DEVELOPER',
                  style: TextStyle(
                    color: AppColors.primaryAccent,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.bold,
                    fontSize: isSmallMobile ? 11.sp : 12.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: isSmallMobile ? 20.h : 25.h),
          Text(
            'Youssef Ibrahim Mohamed',
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.bold,
              fontSize: isSmallMobile ? 22.sp : 24.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: isSmallMobile ? 10.h : 12.h),
          Text(
            'Flutter Developer',
            style: TextStyle(
              color: AppColors.primaryAccent,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.bold,
              fontSize: isSmallMobile ? 18.sp : 20.sp,
            ),
          ),
          SizedBox(height: isSmallMobile ? 20.h : 25.h),
          Text(
            "Flutter Developer with hands-on experience building cross-platform mobile applications using Flutter, Dart, Firebase, REST APIs, and Clean Architecture.",
            style: TextStyle(
              color: AppColors.secondaryText,
              fontSize: isSmallMobile ? 14.sp : 15.sp,
              fontFamily: 'Manrope',
              height: 1.6,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: isSmallMobile ? 16.h : 20.h),
          Text(
            "Experienced in developing scalable mobile solutions, integrating backend services, and collaborating with cross-functional teams including UI/UX, Backend, DevOps, and Business Analysis.",
            style: TextStyle(
              color: AppColors.secondaryText,
              fontSize: isSmallMobile ? 14.sp : 15.sp,
              fontFamily: 'Manrope',
              height: 1.6,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: isSmallMobile ? 30.h : 35.h),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: isSmallMobile ? 54.h : 58.h,
                child: ElevatedButton(
                  onPressed: () {
                    if (experienceKey != null) {
                      Scrollable.ensureVisible(
                        experienceKey!.currentContext!,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'View My Experience',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Manrope',
                          fontSize: isSmallMobile ? 16.sp : 17.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.white,
                        size: isSmallMobile ? 18.sp : 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  alignment: Alignment.center,
                  width: 180.w,
                  height: isSmallMobile ? 54.h : 58.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: AppColors.primaryAccent,
                  ),
                  child: MaterialButton(
                    onPressed: () async {
                      final uri = Uri.parse('https://drive.google.com/file/d/1ub-Ys5X_s0Ie3R0Vtu3fgOG6TiRksIXH/view?usp=sharing');
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'View CV',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontSize: isSmallMobile ? 16.sp : 17.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.drive_file_move_outline,
                          color: Colors.white,
                          size: isSmallMobile ? 18.sp : 20.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height:  40.h,),
              GestureDetector(
                onTap: () {
                  if (contactKey != null) {
                    Scrollable.ensureVisible(
                      contactKey!.currentContext!,
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
                        fontSize: isSmallMobile ? 16.sp : 17.sp,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Icon(
                      Icons.call_made,
                      color: Colors.black,
                      size: isSmallMobile ? 18.sp : 20.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 12.w,
            runSpacing:  12.h,
            children: [
              _buildSkillChip('Flutter', context),
              _buildSkillChip('Dart', context),
              _buildSkillChip('Clean Architecture', context),
              _buildSkillChip('State Management', context),
              _buildSkillChip('Firebase', context),
              _buildSkillChip('REST APIs', context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String skill, BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isSmallMobile = screenWidth < 375;
    
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isSmallMobile ? 14.w : 16.w,
        vertical: isSmallMobile ? 8.h : 10.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightAccentBackground,
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(
          color: AppColors.primaryAccent20,
        ),
      ),
      child: Text(
        skill,
        style: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.bold,
          fontSize: isSmallMobile ? 12.sp : 13.sp,
          color: AppColors.primaryText,
        ),
      ),
    );
  }
}