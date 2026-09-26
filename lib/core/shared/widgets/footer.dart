import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.sizeOf(context).width >= 1024;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 30.w : 15.w,
        vertical: isDesktop ? 40.h : 30.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightAccentBackground,
        border: Border(
          top: BorderSide(
            color: AppColors.borderWithOpacity(0.5),
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
                _FooterColumn(
                  title: 'Contact',
                  items: [
                    _FooterItem(
                      label: 'Email',
                      value: 'ymohamed2602@gmail.com',
                      onTap: () => _launchUrl('mailto:ymohamed2602@gmail.com'),
                    ),
                    _FooterItem(
                      label: 'Phone',
                      value: '+201282077343',
                      onTap: () => _launchUrl('tel:+201282077343'),
                    ),
                  ],
                ),
                _FooterColumn(
                  title: 'Social',
                  items: [
                    _FooterItem(
                      label: 'LinkedIn',
                      value: 'Connect',
                      onTap: () => _launchUrl('https://www.linkedin.com/in/youssef-ibrahim-052581383/'),
                    ),
                  ],
                ),
                _FooterColumn(
                  title: 'About',
                  items: [
                    _FooterItem(
                      label: 'Flutter Developer',
                      value: 'Building amazing apps',
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ] else ...[
            _MobileFooterItem(
              icon: Icons.email,
              label: 'Email',
              value: 'ymohamed2602@gmail.com',
              onTap: () => _launchUrl('mailto:ymohamed2602@gmail.com'),
            ),
            SizedBox(height: 15.h),
            _MobileFooterItem(
              icon: Icons.phone,
              label: 'Phone',
              value: '+201282077343',
              onTap: () => _launchUrl('tel:+201282077343'),
            ),
            SizedBox(height: 15.h),
            _MobileFooterItem(
              icon: Icons.link,
              label: 'LinkedIn',
              value: 'Connect',
              onTap: () => _launchUrl('https://www.linkedin.com/in/youssef-ibrahim-052581383/'),
            ),
          ],
          SizedBox(height: isDesktop ? 30.h : 20.h),
          Container(
            height: 1,
            color: AppColors.borderWithOpacity(0.3),
          ),
          SizedBox(height: isDesktop ? 20.h : 15.h),
          Text(
            '© 2026 Youssef Ibrahim. All rights reserved.',
            style: TextStyle(
              color: AppColors.secondaryText,
              fontFamily: 'Manrope',
              fontSize: isDesktop ? 3.sp : 2.5.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterColumn extends StatelessWidget {
  final String title;
  final List<_FooterItem> items;

  const _FooterColumn({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: 'Manrope',
            fontSize: 4.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15.h),
        ...items,
      ],
    );
  }
}

class _FooterItem extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback onTap;

  const _FooterItem({
    required this.label,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontFamily: 'Manrope',
                  fontSize: 3.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                value,
                style: TextStyle(
                  color: AppColors.primaryAccent,
                  fontFamily: 'Manrope',
                  fontSize: 3.5.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MobileFooterItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final VoidCallback onTap;

  const _MobileFooterItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: AppColors.borderWithOpacity(0.3),
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
                    label,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: 'Manrope',
                      fontSize: 3.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    value,
                    style: TextStyle(
                      color: AppColors.primaryAccent,
                      fontFamily: 'Manrope',
                      fontSize: 3.5.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}