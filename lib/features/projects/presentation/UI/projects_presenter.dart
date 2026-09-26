import 'package:flutter/material.dart';
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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                'Selected mobile applications I’ve built using Flutter and modern development technologies.',
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Manrope',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
          ),
        ),

        SizedBox(height: 60.h),

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
          rightSide: Transform.translate(
            offset: Offset(-10.w, -30.h),
            child: LiveMobileMockup(
              url: 'https://youssef-ibrahim23.github.io/islamic-app/?v=2',
            ),
          ),
        ),

        SizedBox(height: 240.h),

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
            badgesBottomSpacing: 30,
            titleSpacing: 30,
            descriptionSpacing: 40,
            featuresSpacing: 40,
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
            buttonSpacing: 20.h,
            rightSide: Transform.translate(
              offset: Offset(-2.w, -70.h),
              child: LiveMobileMockup(
                url: 'https://youssef-ibrahim23.github.io/map_app/?v=3',
                width: 80,
                height: 600,
              ),
            ),
          ),
        ),

        SizedBox(height: 100.h),

        Padding(
          padding: EdgeInsetsGeometry.only(left: 12.w),
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
            buttonText: 'Download APK Now ',
            buttonColor: Colors.green,
            rightSide: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.translate(
                  offset: Offset(10.w, -10.h),
                  child: Image.asset(
                    'assets/images/personal_tasks_project.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 50.h,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 170.w,
              height: 118.w,
              padding: EdgeInsets.all(7.sp),
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.05)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "REAL PROJECT",
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontFamily: 'Manrope',
                          fontSize: 3.5.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.restaurant,
                        color: AppColors.primaryAccent,
                        size: 5.sp,
                      ),
                    ],
                  ),

                  SizedBox(height: 10.h,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Corp Meal',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 7.sp,
                        fontFamily: 'Manrope',
                      ),
                    ),
                  ),

                  SizedBox(height: 10.h,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Developed a food ordering application allowing users to create shared\ndelivery rooms and invite multiple participants.',
                      style: TextStyle(
                        height: 2.h,
                        color: Colors.black,
                        fontFamily: 'Manrope',
                        fontSize: 3.8.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),
                      
                      Text(
                        'Room-based ordering',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 3.5.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),

                      Text(
                        'Multiple participants workflow',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),

                      Text(
                        'Real-time group ordering',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),

                      Text(
                        'Restaurant-based meal selection',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),

                      Text(
                        'Automated bill generation & shared delivery request',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 20.h,),

                  Row(
                    children: [
                    Container(
                      alignment: Alignment.center,
                      width: 23.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                      child: Text(
                        'Flutter',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ),

                    SizedBox(width: 5.w,),
                    Container(
                      alignment: Alignment.center,
                      width: 23.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                      child: Text(
                        'Dart',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ),
                      SizedBox(width: 5.w,),
                    Container(
                      alignment: Alignment.center,
                      width: 23.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                      child: Text(
                        'REST APIs',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ),
                      SizedBox(width: 5.w,),
                    Container(
                      alignment: Alignment.center,
                      width: 23.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                      child: Text(
                        'Real-Time',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ),
                  ],)
                ],
              ),
            ),

            Container(
              width: 170.w,
              height: 118.w,
              padding: EdgeInsets.all(7.sp),
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.05)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FREELANCE",
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontFamily: 'Manrope',
                          fontSize: 3.5.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.spatial_tracking,
                        color: AppColors.primaryAccent,
                        size: 5.sp,
                      ),
                    ],
                  ),

                  SizedBox(height: 5.h,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Opportunity Guidance',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 7.sp,
                        fontFamily: 'Manrope',
                      ),
                    ),
                  ),

                  SizedBox(height: 20.h,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'A smart cross-platform mobile application for professional growth tracking.',
                      style: TextStyle(
                        height: 2.h,
                        color: Colors.black,
                        fontFamily: 'Manrope',
                        fontSize: 3.8.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),

                      Text(
                        'Responsive Flutter interface',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),

                      Text(
                        'Firebase Authentication & Firestore',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),

                      Text(
                        'Personalized profiles & opportunity data',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),

                      Text(
                        'Real-time progress tracking',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '•',
                        style: TextStyle(
                          color: AppColors.primaryAccent,
                          fontSize: 8.sp,
                        ),
                      ),

                      Text(
                        'Smart recommendations & user navigation',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Manrope'
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 20.h,),

                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 23.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryAccent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: Text(
                          'Flutter',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ),

                      SizedBox(width: 5.w,),
                      Container(
                        alignment: Alignment.center,
                        width: 23.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryAccent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: Text(
                          'Dart',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        alignment: Alignment.center,
                        width: 23.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryAccent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: Text(
                          'Firebase',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        alignment: Alignment.center,
                        width: 23.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryAccent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: Text(
                          'Firestore',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 3.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ),
                    ],)
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 100.h),
      ],
    );
  }
}
