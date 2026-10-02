import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class DrawerItem extends StatelessWidget{

  final String title;
  final ScrollController? scrollController;
  final GlobalKey? experienceKey;
  final GlobalKey? skillsKey;
  final GlobalKey? projectsKey;
  final GlobalKey? contactKey;

  const DrawerItem({
    super.key,
    required this.title,
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
    
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: isSmallMobile ? 20.w : 24.w, vertical: isSmallMobile ? 8.h : 12.h),
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: 'Manrope',
          fontSize: isSmallMobile ? 16.sp : 17.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: isSmallMobile ? 16.sp : 18.sp,
        color: Colors.grey,
      ),
      onTap: () {
        Navigator.pop(context);
        if (scrollController != null) {
          switch (title.toLowerCase()) {
            case 'home':
              scrollController!.animateTo(
                0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
              break;
            case 'projects':
              if (projectsKey != null) {
                Future.delayed(const Duration(milliseconds: 300), () {
                  Scrollable.ensureVisible(
                    projectsKey!.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                });
              }
              break;
            case 'skills':
              if (skillsKey != null) {
                Future.delayed(const Duration(milliseconds: 300), () {
                  Scrollable.ensureVisible(
                    skillsKey!.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                });
              }
              break;
            case 'experience':
              if (experienceKey != null) {
                Future.delayed(const Duration(milliseconds: 300), () {
                  Scrollable.ensureVisible(
                    experienceKey!.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                });
              }
              break;
            case 'contact':
              if (contactKey != null) {
                Future.delayed(const Duration(milliseconds: 300), () {
                  Scrollable.ensureVisible(
                    contactKey!.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                });
              }
              break;
          }
        }
      },
    );
  }
}