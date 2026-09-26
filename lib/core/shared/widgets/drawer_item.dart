import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class DrawerItem extends StatelessWidget{

  final String title;
  final ScrollController? scrollController;

  const DrawerItem({super.key, required this.title, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: 'Manrope',
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 14.sp,
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
              scrollController!.animateTo(
                800,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
              break;
            case 'contact':
              scrollController!.animateTo(
                scrollController!.position.maxScrollExtent,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
              break;
          }
        }
      },
    );
  }
}