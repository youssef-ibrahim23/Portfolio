import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:protofolio/features/projects/presentation/UI/widgets/live_mobile_mockup.dart';
import 'package:protofolio/features/projects/presentation/UI/widgets/project_section.dart';

class ProjectsPresenter extends StatefulWidget {
  const ProjectsPresenter({super.key});
  @override
  State<ProjectsPresenter> createState() => _ProjectsPresenterState();
}

class _ProjectsPresenterState extends State<ProjectsPresenter> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 1024;
    final isSmallMobile = width < 375;
    return Column(
      children: [
        SizedBox(height:20.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: isMobile ? 20.w : 25.w),
          child: Align(
            alignment: isMobile ? Alignment.center : Alignment.centerLeft,
            child: Text(
              'Selected mobile applications I\'ve built using Flutter and modern development technologies.',
              style: TextStyle(
                height: 2.h,
                color: AppColors.secondaryText,
                fontSize: isMobile ? 14.sp : 5.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Manrope',
              ),
              textAlign: isMobile ? TextAlign.center : TextAlign.start,
            ),
          ),
        ),
        SizedBox(height: 90.h),
        ProjectSection(
          title: 'Siraj - سِرَاچ',
          titleSpacing: 25,
          subtitle: 'Comprehensive Islamic Utility & Spiritual Companion.',
          description: 'Developed an Islamic application, a Flutter-based mobile application featuring prayer times, Quran reading and audio, Azkar, Hadiths, Qibla finder, Hijri/Gregorian calendar, and tasbeeh counter with full English and Arabic support.',
          features: [
            'Prayer Times & Qibla Finder',
            'Quran reading & audio player',
            'Azkar & Hadith collections',
            'Hijri/Gregorian calendar & Tasbeeh',
            'Full English & Arabic localization',
          ],
          storeUrl: 'https://play.google.com/store/apps/details?id=com.youssef.islamic_app&pcampaignid=web_share',
          demoWidget: Transform.translate(
            offset: Offset(isMobile ? -1 : -10.w, isMobile ? -10.h : -30.h),
            child: LiveMobileMockup(
              url: 'https://youssef-ibrahim23.github.io/islamic-app/?v=2',
            ),
          ),
          rightSide: Transform.translate(
            offset: Offset(-15 , -5),
            child: LiveMobileMockup(
              url: 'https://youssef-ibrahim23.github.io/islamic-app/?v=2',
            ),
          ),
        ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
        SizedBox(height: isMobile ? 80.h : 240.h),
        Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: ProjectSection(
            publishedBackgroundColor: const Color(0xFFB70808),
            storeIconColor: const Color(0xFFB70808),
            featureIconColor: const Color(0xFFB70808),
            buttonColor: const Color(0xFFB70808),
            storeIcon: Icons.local_grocery_store_outlined,
            publishedText: 'HOSTED MOBILE APPLICATION',
            storeName: 'App Host',
            buttonText: 'Download APK Now',
            badgesBottomSpacing: 40,
            titleSpacing: 35,
            descriptionSpacing: 45,
            featuresSpacing: 45,
            title: 'Map App',
            subtitle: 'Smart Location & Navigation Experience Using Flutter and OpenStreetMap',
            description: 'A smart location and navigation mobile application built using Flutter and OpenStreetMap.',
            features: [
              'Detect and display current user location',
              'Search for specific locations and addresses',
              'Navigation and route computation',
              'Google Maps integration for external navigation',
            ],
            storeUrl: 'https://appho.st/d/bULXd2lJ',
            demoWidget: Transform.translate(
              offset: Offset(isMobile ? 3 : -2.w, isMobile ? -10.h : -90.h),
              child: LiveMobileMockup(
                url: 'https://youssef-ibrahim23.github.io/map_app/?v=3',
                width: 80,
                height: 600,
              ),
            ),
            rightSide: Transform.translate(
              offset: Offset( -2.w,  -30.h),
              child: LiveMobileMockup(
                url: 'https://youssef-ibrahim23.github.io/map_app/?v=3',
                width: 80,
                height: 600,
              ),
            ),
          ),
        ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 200.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
        SizedBox(height: isMobile ? 60.h : 100.h),
        Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: ProjectSection(
            titleSpacing: 25,
            buttonSpacing: 20.h,
            publishedBackgroundColor: Colors.green,
            publishedText: 'HOSTED MOBILE APPLICATION',
            storeName: 'App Host',
            storeIcon: Icons.local_grocery_store,
            storeIconColor: Colors.green,
            title: 'Personal Tasks Manager',
            subtitle: 'Modern Task Management & Productivity Application.',
            description: 'A Flutter-based task management application designed to help users organize, manage, and track their daily tasks through a clean and responsive mobile experience.',
            features: [
              'Task creation with attachments',
              'Task status tracking',
              'Organized task categories',
              'Task-sharing community integration',
              'Clean and maintainable architecture',
            ],
            featureIconColor: Colors.green,
            storeUrl: 'https://appho.st/d/hD7swnf6',
            buttonText: 'Download APK Now',
            buttonColor: Colors.green,
            rightSide: Transform.translate(
              offset: Offset(10.w, -10.h),
              child: Image.asset(
                'assets/images/personal_tasks_project.png',
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
        ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 400.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
        SizedBox(height: isMobile ? 40.h : 50.h),
        if (isMobile)
          Column(
            children: [
              _buildSmallProjectCard(
                context,
                'REAL PROJECT',
                'assets/images/corp_meal_logo.png',
                'Corp Meal',
                'Developed a food ordering application allowing users to create shared delivery rooms and invite multiple participants.',
                [
                  'Room-based ordering',
                  'Multiple participants workflow',
                  'Real-time group ordering',
                  'Restaurant-based meal selection',
                  'Automated bill generation & shared delivery request',
                ],
                ['Flutter', 'Dart', 'REST APIs', 'Real-Time'],
              ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 600.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
              SizedBox(height: 30.h),
              _buildSmallProjectCard(
                context,
                'FREELANCE',
                'assets/images/opportunity_guidance_logo.png',
                'Opportunity Guidance',
                'A smart cross-platform mobile application for professional growth tracking.',
                [
                  'Responsive Flutter interface',
                  'Firebase Authentication & Firestore',
                  'Personalized profiles & opportunity data',
                  'Real-time progress tracking',
                  'Smart recommendations & user navigation',
                ],
                ['Flutter', 'Dart', 'Firebase', 'Firestore'],
              ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 800.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
            ],
          )
        else
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSmallProjectCard(
                context,
                'REAL PROJECT',
                'assets/images/corp_meal_logo.png',
                'Corp Meal',
                'Developed a food ordering application allowing users to create shared delivery rooms and invite multiple participants.',
                [
                  'Room-based ordering',
                  'Multiple participants workflow',
                  'Real-time group ordering',
                  'Restaurant-based meal selection',
                  'Automated bill generation & shared delivery request',
                ],
                ['Flutter', 'Dart', 'REST APIs', 'Real-Time'],
              ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 600.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
              _buildSmallProjectCard(
                context,
                'FREELANCE',
                'assets/images/opportunity_guidance_logo.png',
                'Opportunity Guidance',
                'A smart cross-platform mobile application for professional growth tracking.',
                [
                  'Responsive Flutter interface',
                  'Firebase Authentication & Firestore',
                  'Personalized profiles & opportunity data',
                  'Real-time progress tracking',
                  'Smart recommendations & user navigation',
                ],
                ['Flutter', 'Dart', 'Firebase', 'Firestore'],
              ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 800.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
            ],
          ),
        SizedBox(height: isMobile ? 80.h : 100.h),
      ],
    ).animate().fadeIn(duration: 800.ms, curve: Curves.easeOut);
  }

  Widget _buildSmallProjectCard(
    BuildContext context,
    String projectType,
    String logoAsset,
    String title,
    String description,
    List<String> features,
    List<String> technologies,
  ) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 1024;
    final isSmallMobile = width < 375;
    return Container(
      width: isMobile ? double.infinity : 170.w,
      padding: EdgeInsets.all(isMobile ? 20.sp : 7.sp),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.05)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  projectType,
                  style: TextStyle(
                    color: AppColors.primaryAccent,
                    fontFamily: 'Manrope',
                    fontSize: isMobile
                        ? (isSmallMobile ? 12.sp : 13.sp)
                        : 3.5.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Image.asset(
                logoAsset,
                width: isMobile ? (isSmallMobile ? 20.sp : 22.sp) : 5.sp,
                height: isMobile ? (isSmallMobile ? 20.sp : 22.sp) : 5.sp,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: isMobile ? 20.h : 10.h),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? (isSmallMobile ? 18.sp : 20.sp) : 7.sp,
              fontFamily: 'Manrope',
            ),
          ),
          SizedBox(height: isMobile ? 16.h : 10.h),
          Text(
            description,
            style: TextStyle(
              height: isMobile ? 1.5 : 1.5,
              color: Colors.black,
              fontFamily: 'Manrope',
              fontSize: isMobile ? (isSmallMobile ? 13.sp : 14.sp) : 3.8.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: isMobile ? 20.h : 10.h),
          ...features.map(
            (feature) => Padding(
              padding: EdgeInsets.only(bottom: isMobile ? 12.h : 5.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '•',
                    style: TextStyle(
                      color: AppColors.primaryAccent,
                      fontSize: isMobile
                          ? (isSmallMobile ? 16.sp : 18.sp)
                          : 8.sp,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      feature,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: isMobile
                            ? (isSmallMobile ? 13.sp : 14.sp)
                            : 3.5.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Manrope',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: isMobile ? 24.h : 20.h),
          if (isMobile)
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: technologies.map(
                    (tech) => Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primaryAccent10,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Text(
                    tech,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: isSmallMobile ? 11.sp : 12.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ).toList(),
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: technologies.map(
                    (tech) => Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primaryAccent10,
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                  child: Text(
                    tech,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 3.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ).toList(),
            ),
        ],
      ),
    );
  }
}
