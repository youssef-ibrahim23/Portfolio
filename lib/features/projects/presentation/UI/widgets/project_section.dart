import 'dart:html' as web;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:protofolio/features/projects/presentation/UI/widgets/live_mobile_mockup.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.features,
    required this.storeUrl,
    required this.rightSide,
    this.demoUrl,
    this.demoWidget,

    this.publishedText = 'PUBLISHED MOBILE APPLICATION',
    this.storeName = 'Google Play',
    this.buttonText = 'Google Play Store',

    this.contentWidth = 200,

    this.titleColor = Colors.black,
    this.subtitleColor = AppColors.secondaryText,
    this.descriptionColor = AppColors.secondaryText,
    this.featureColor = AppColors.primaryText,

    this.accentColor = AppColors.primaryAccent,

    this.storeIconColor = AppColors.primaryAccent,
    this.featureIconColor = AppColors.primaryAccent,
    this.buttonColor = AppColors.primaryAccent,

    this.publishedBackgroundColor = AppColors.primaryAccent,
    this.storeBackgroundColor = const Color(0xffEEEEEE),

    this.titleFontSize = 12,
    this.subtitleFontSize = 4,
    this.descriptionFontSize = 4,
    this.featureFontSize = 3.5,
    this.badgeFontSize = 3.5,
    this.buttonFontSize = 3.5,

    this.badgesBottomSpacing = 40,
    this.titleSpacing = 10,
    this.descriptionSpacing = 30,
    this.featuresSpacing = 30,
    this.buttonSpacing = 40,
    this.contentPadding = 11,

    this.buttonWidth = 45,
    this.buttonHeight = 50,

    this.storeIcon = Icons.smart_display_outlined,
    this.featureIcon = Icons.check_circle_outline_outlined,
    this.buttonIcon = Icons.download,
  });

  final String title;
  final String subtitle;
  final String description;
  final List<String> features;

  final String storeUrl;
  final String? demoUrl;
  final Widget? demoWidget;

  final Widget rightSide;

  final String publishedText;
  final String storeName;
  final String buttonText;

  final double contentWidth;

  final Color titleColor;
  final Color subtitleColor;
  final Color descriptionColor;
  final Color featureColor;

  final Color accentColor;

  final Color storeIconColor;
  final Color featureIconColor;
  final Color buttonColor;

  final Color publishedBackgroundColor;
  final Color storeBackgroundColor;

  final double titleFontSize;
  final double subtitleFontSize;
  final double descriptionFontSize;
  final double featureFontSize;
  final double badgeFontSize;
  final double buttonFontSize;

  final double badgesBottomSpacing;
  final double titleSpacing;
  final double descriptionSpacing;
  final double featuresSpacing;
  final double buttonSpacing;
  final double contentPadding;

  final double buttonWidth;
  final double buttonHeight;

  final IconData storeIcon;
  final IconData featureIcon;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 1024;
    
    if (isMobile) {
      return _buildMobileLayout(context);
    }
    
    return _buildDesktopLayout(context);
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: contentWidth.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.center,
                    height: 32.h,
                    width: 62.w,
                    decoration: BoxDecoration(
                      color: publishedBackgroundColor,
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    child: Text(
                      publishedText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Manrope',
                        fontSize: badgeFontSize.sp,
                      ),
                    ),
                  ),

                  SizedBox(width: 3.w),

                  Container(
                    alignment: Alignment.center,
                    height: 32.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                      color: storeBackgroundColor,
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          storeIcon,
                          color: storeIconColor,
                          size: 5.sp,
                        ),
                        Text(
                          storeName,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Manrope',
                            fontSize: badgeFontSize.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: badgesBottomSpacing.h,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: contentPadding.w,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontFamily: 'Manrope',
                    fontSize: titleFontSize.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: titleSpacing.h,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: contentPadding.w,
                ),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    color: subtitleColor,
                    fontSize: subtitleFontSize.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),

              SizedBox(
                height: descriptionSpacing.h,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: contentPadding.w,
                ),
                child: Text(
                  description,
                  style: TextStyle(
                    height: 2.4.h,
                    color: descriptionColor,
                    fontSize: descriptionFontSize.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),

              SizedBox(
                height: featuresSpacing.h,
              ),

              Column(
                children: [
                  for (int i = 0; i < features.length; i += 2)
                    Padding(
                      padding: EdgeInsets.only(
                        left: contentPadding.w,
                        bottom: 30.h,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  featureIcon,
                                  color: featureIconColor,
                                  size: 5.sp,
                                ),

                                SizedBox(width: 2.w),

                                Expanded(
                                  child: Text(
                                    features[i],
                                    style: TextStyle(
                                      color: featureColor,
                                      fontFamily: 'Manrope',
                                      fontSize: featureFontSize.sp,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 10.w),

                          if (i + 1 < features.length)
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(
                                    featureIcon,
                                    color: featureIconColor,
                                    size: 5.sp,
                                  ),

                                  SizedBox(width: 2.w),

                                  Expanded(
                                    child: Text(
                                      features[i + 1],
                                      style: TextStyle(
                                        color: featureColor,
                                        fontFamily: 'Manrope',
                                        fontSize: featureFontSize.sp,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          else
                            const Expanded(
                              child: SizedBox(),
                            ),
                        ],
                      ),
                    ),
                ],
              ),

              SizedBox(
                height: buttonSpacing.h,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: contentPadding.w,
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: SizedBox(
                    width: buttonWidth.w,
                    height: buttonHeight.h,
                    child: Material(
                      color: buttonColor,
                      child: InkWell(
                        onTap: () {
                          web.window.open(
                            storeUrl,
                            '_blank',
                          );
                        },
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              buttonText,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Manrope',
                                fontSize: buttonFontSize.sp,
                              ),
                            ),
                            Icon(
                              buttonIcon,
                              color: Colors.white,
                              size: 4.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // On desktop, show emulator directly
        // On mobile, we'll handle this in _buildMobileLayout
        rightSide,
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isSmallMobile = screenWidth < 375;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.center,
                    height: isSmallMobile ? 32.h : 36.h,
                    width:  180.w,
                    decoration: BoxDecoration(
                      color: publishedBackgroundColor,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Text(
                      publishedText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Manrope',
                        fontSize: isSmallMobile ? 10.sp : 11.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(width: 10.w),

                  Container(
                    alignment: Alignment.center,
                    height: isSmallMobile ? 32.h : 36.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      color: storeBackgroundColor,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          storeIcon,
                          color: storeIconColor,
                          size: isSmallMobile ? 16.sp : 18.sp,
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          storeName,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Manrope',
                            fontSize: isSmallMobile ? 10.sp : 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: isSmallMobile ? 24.h : 28.h,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: contentPadding.w,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontFamily: 'Manrope',
                    fontSize: isSmallMobile ? 22.sp : 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: isSmallMobile ? 16.h : 18.h,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: contentPadding.w,
                ),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    color: subtitleColor,
                    fontSize: isSmallMobile ? 15.sp : 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),

              SizedBox(
                height: isSmallMobile ? 24.h : 28.h,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: contentPadding.w,
                ),
                child: Text(
                  description,
                  style: TextStyle(
                    height: 1.6,
                    color: descriptionColor,
                    fontSize: isSmallMobile ? 14.sp : 15.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),

              SizedBox(
                height: isSmallMobile ? 28.h : 32.h,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var feature in features)
                    Padding(
                      padding: EdgeInsets.only(
                        left: contentPadding.w,
                        bottom: isSmallMobile ? 16.h : 18.h,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            featureIcon,
                            color: featureIconColor,
                            size: isSmallMobile ? 20.sp : 22.sp,
                          ),

                          SizedBox(width: 10.w),

                          Expanded(
                            child: Text(
                              feature,
                              style: TextStyle(
                                color: featureColor,
                                fontFamily: 'Manrope',
                                fontSize: isSmallMobile ? 14.sp : 15.sp,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),

              SizedBox(
                height: isSmallMobile ? 32.h : 36.h,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: contentPadding.w,
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: SizedBox(
                    width: double.infinity,
                    height: isSmallMobile ? 56.h : 60.h,
                    child: Material(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(12.r),
                      child: InkWell(
                        onTap: () {
                          web.window.open(
                            storeUrl,
                            '_blank',
                          );
                        },
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              buttonText,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Manrope',
                                fontSize: isSmallMobile ? 16.sp : 17.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Icon(
                              buttonIcon,
                              color: Colors.white,
                              size: isSmallMobile ? 20.sp : 22.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 40.h),

        // On mobile, show "Try Live Demo" button instead of emulator
        // On desktop, show the emulator directly via rightSide
        // This is mobile layout, so we always show button if demoWidget exists
        if (demoWidget != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SizedBox(
              width: double.infinity,
              height: isSmallMobile ? 56.h : 60.h,
              child: ElevatedButton.icon(
                onPressed: () => _showDemoDialog(context),
                icon: Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                  size: isSmallMobile ? 20.sp : 22.sp,
                ),
                label: Text(
                  'Try Live Demo',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Manrope',
                    fontSize: isSmallMobile ? 16.sp : 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
            ),
          )
        else
          rightSide,
      ],
    );
  }

  void _showDemoDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => Dialog(
        insetPadding: EdgeInsets.zero,
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: false,
                title: Text(
                  'Live Demo',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: demoWidget ?? rightSide,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}