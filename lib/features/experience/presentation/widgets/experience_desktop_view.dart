import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class ExperienceDesktopView extends StatelessWidget {
  const ExperienceDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Professional Experience',
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: 'Manrope',
              fontSize: 8.sp,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut),
          SizedBox(height: 8.h),
          Text(
            'My journey in software development',
            style: TextStyle(
              color: AppColors.secondaryText,
              fontFamily: 'Manrope',
              fontSize: 4.5.sp,
              fontWeight: FontWeight.w400,
            ),
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 100.ms),
          SizedBox(height: 24.h),
          _ExperienceCard(
            title: 'Flutter Developer',
            company: 'NTG Clarity',
            location: 'Egypt, Giza',
            period: '09/2026 – Present',
            responsibilities: const [
              'Developed and maintained cross-platform Flutter applications for multiple client projects using Flutter and Dart.',
              'Collaborated with UI/UX, backend, DevOps, and business analysts Teams to design and deliver production features.',
              'Integrated REST APIs and Firebase services while following Clean Architecture and MVVM principles.',
              'Optimized application performance, resolved technical issues, and implemented new features within Agile cycles.',
            ],
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 200.ms).slideY(
            begin: 0.1,
            end: 0,
            duration: 600.ms,
            curve: Curves.easeOut,
          ),
        ],
      ),
    );
  }
}

class _ExperienceCard extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String period;
  final List<String> responsibilities;

  const _ExperienceCard({
    required this.title,
    required this.company,
    required this.location,
    required this.period,
    required this.responsibilities,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        color: AppColors.lightAccentBackground,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: AppColors.primaryAccent20,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: 'Manrope',
                        fontSize: 5.5.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      company,
                      style: TextStyle(
                        color: AppColors.primaryAccent,
                        fontFamily: 'Manrope',
                        fontSize: 4.2.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.primaryAccent10,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  period,
                  style: TextStyle(
                    color: AppColors.primaryAccent,
                    fontFamily: 'Manrope',
                    fontSize: 3.4.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 4.sp,
                color: AppColors.secondaryText,
              ),
              SizedBox(width: 6.w),
              Text(
                location,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontFamily: 'Manrope',
                  fontSize: 3.8.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          ...responsibilities.map((responsibility) {
            return Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5.h),
                    width: 5.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      responsibility,
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontFamily: 'Manrope',
                        fontSize: 3.8.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
