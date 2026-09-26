import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDesktopView extends StatelessWidget {
  const ContactDesktopView({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 80.h),
      child: Column(
        children: [

          Text(
            'Let\'s Connect',
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: 'Manrope',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut),
          SizedBox(height: 20.h),
          Text(
            'Feel free to reach out for collaborations or just a friendly hello!',
            style: TextStyle(
              color: AppColors.secondaryText,
              fontFamily: 'Manrope',
              fontSize: 6.sp,
              fontWeight: FontWeight.w400,
            ),
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 200.ms),
          SizedBox(height: 60.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _ContactCard(
                icon: Icons.email,
                title: 'Email',
                value: 'ymohamed2602@gmail.com',
                onTap: () => _launchUrl('mailto:ymohamed2602@gmail.com'),
              ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 400.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
              SizedBox(width: 30.w),
              _ContactCard(
                icon: Icons.phone,
                title: 'Phone',
                value: '+201282077343',
                onTap: () => _launchUrl('tel:+201282077343'),
              ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 600.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
              SizedBox(width: 30.w),
              _ContactCard(
                icon: Icons.link,
                title: 'LinkedIn',
                value: 'Connect with me',
                onTap: () => _launchUrl('https://www.linkedin.com/in/youssef-ibrahim-052581383/'),
              ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 800.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
            ],
          ),
        ],
      ).animate().fadeIn(duration: 800.ms, curve: Curves.easeOut),
    );
  }
}

class _ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final VoidCallback onTap;

  const _ContactCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 70.w,
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            color: AppColors.lightAccentBackground,
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              color: AppColors.primaryAccent20,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                size: 30.sp,
                color: AppColors.primaryAccent,
              ),
              SizedBox(height: 15.h),
              Text(
                title,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: 'Manrope',
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                value,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontFamily: 'Manrope',
                  fontSize: 4.sp,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}