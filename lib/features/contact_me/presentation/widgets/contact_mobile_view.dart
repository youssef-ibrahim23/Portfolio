import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMobileView extends StatelessWidget {
  const ContactMobileView({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isSmallMobile = screenWidth < 375;
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isSmallMobile ? 20.w : 24.w, vertical: isSmallMobile ? 40.h : 50.h),
      child: Column(
        children: [
          Text(
            'Let\'s Connect',
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: 'Manrope',
              fontSize: isSmallMobile ? 24.sp : 26.sp,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut),
          SizedBox(height: isSmallMobile ? 16.h : 20.h),
          Text(
            'Feel free to reach out for collaborations or just a friendly hello!',
            style: TextStyle(
              color: AppColors.secondaryText,
              fontFamily: 'Manrope',
              fontSize: isSmallMobile ? 15.sp : 16.sp,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 200.ms),
          SizedBox(height: isSmallMobile ? 32.h : 40.h),
          _ContactItem(
            icon: Icons.email,
            title: 'Email',
            value: 'ymohamed2602@gmail.com',
            onTap: () => _launchUrl('mailto:ymohamed2602@gmail.com'),
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 400.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
          SizedBox(height: isSmallMobile ? 16.h : 20.h),
          _ContactItem(
            icon: Icons.phone,
            title: 'Phone',
            value: '+201282077343',
            onTap: () => _launchUrl('tel:+201282077343'),
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 600.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
          SizedBox(height: isSmallMobile ? 16.h : 20.h),
          _ContactItem(
            icon: Icons.link,
            title: 'LinkedIn',
            value: 'Connect with me',
            onTap: () => _launchUrl('https://www.linkedin.com/in/youssef-ibrahim-052581383/'),
          ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 800.ms).slideY(begin: 0.05, end: 0, duration: 600.ms, curve: Curves.easeOut),
        ],
      ).animate().fadeIn(duration: 800.ms, curve: Curves.easeOut),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final VoidCallback onTap;

  const _ContactItem({
    required this.icon,
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isSmallMobile = screenWidth < 375;
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(isSmallMobile ? 18.sp : 20.sp),
        decoration: BoxDecoration(
          color: AppColors.lightAccentBackground,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.primaryAccent.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: isSmallMobile ? 24.sp : 26.sp,
              color: AppColors.primaryAccent,
            ),
            SizedBox(width: isSmallMobile ? 16.w : 18.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: 'Manrope',
                      fontSize: isSmallMobile ? 16.sp : 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    value,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: 'Manrope',
                      fontSize: isSmallMobile ? 14.sp : 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: isSmallMobile ? 16.sp : 18.sp,
              color: AppColors.primaryAccent,
            ),
          ],
        ),
      ),
    );
  }
}