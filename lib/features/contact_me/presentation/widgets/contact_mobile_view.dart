import 'package:flutter/material.dart';
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40.h,
                width: 2.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryAccent,
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              SizedBox(width: 7.w),
              Text(
                'Contact Me',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: 'Manrope',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Text(
            'Let\'s Connect',
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: 'Manrope',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            'Feel free to reach out for collaborations or just a friendly hello!',
            style: TextStyle(
              color: AppColors.secondaryText,
              fontFamily: 'Manrope',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          _ContactItem(
            icon: Icons.email,
            title: 'Email',
            value: 'ymohamed2602@gmail.com',
            onTap: () => _launchUrl('mailto:ymohamed2602@gmail.com'),
          ),
          SizedBox(height: 15.h),
          _ContactItem(
            icon: Icons.phone,
            title: 'Phone',
            value: '+201282077343',
            onTap: () => _launchUrl('tel:+201282077343'),
          ),
          SizedBox(height: 15.h),
          _ContactItem(
            icon: Icons.link,
            title: 'LinkedIn',
            value: 'Connect with me',
            onTap: () => _launchUrl('https://www.linkedin.com/in/youssef-ibrahim-052581383/'),
          ),
        ],
      ),
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15.sp),
        decoration: BoxDecoration(
          color: AppColors.lightAccentBackground,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: AppColors.primaryAccent.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20.sp,
              color: AppColors.primaryAccent,
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: 'Manrope',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    value,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: 'Manrope',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 14.sp,
              color: AppColors.primaryAccent,
            ),
          ],
        ),
      ),
    );
  }
}