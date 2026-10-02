import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isDesktop = screenWidth >= 1024;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: isDesktop ? 40.h : 30.h,
        horizontal: isDesktop ? 60.w : 20.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightAccentBackground,
        border: Border(
          top: BorderSide(
            color: AppColors.border,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          if (isDesktop) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Youssef Ibrahim',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: 'Manrope',
                    fontSize: 5.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut),
                Row(
                  children: [
                    _buildSocialLink('GitHub', 'https://github.com/youssef-ibrahim23')
                        .animate()
                        .fadeIn(duration: 600.ms, curve: Curves.easeOut)
                        .then(delay: 100.ms)
                        .slideX(begin: 0.2, end: 0, duration: 400.ms, curve: Curves.easeOut),
                    SizedBox(width: 20.w),
                    _buildSocialLink('LinkedIn', 'https://www.linkedin.com/in/youssef-ibrahim-052581383/')
                        .animate()
                        .fadeIn(duration: 600.ms, curve: Curves.easeOut)
                        .then(delay: 200.ms)
                        .slideX(begin: 0.2, end: 0, duration: 400.ms, curve: Curves.easeOut),
                    SizedBox(width: 20.w),
                    _buildSocialLink('Email', 'mailto:ymohamed2602@gmail.com')
                        .animate()
                        .fadeIn(duration: 600.ms, curve: Curves.easeOut)
                        .then(delay: 300.ms)
                        .slideX(begin: 0.2, end: 0, duration: 400.ms, curve: Curves.easeOut),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
          ],
          Center(
            child: Text(
              '© 2026 Youssef Ibrahim. All rights reserved.',
              style: TextStyle(
                color: AppColors.secondaryText,
                fontFamily: 'Manrope',
                fontSize: isDesktop ? 3.5.sp : 10.sp,
                fontWeight: FontWeight.w400,
              ),
            ).animate().fadeIn(duration: 600.ms, curve: Curves.easeOut).then(delay: 400.ms),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 800.ms, curve: Curves.easeOut);
  }

  Widget _buildSocialLink(String label, String url) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
        child: Text(
          label,
          style: TextStyle(
            color: AppColors.secondaryText,
            fontFamily: 'Manrope',
            fontSize: 3.5.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
