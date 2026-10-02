import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class NavbarItem extends StatefulWidget {
  final String label;
  final bool first;
  final ScrollController? scrollController;
  final GlobalKey? experienceKey;
  final GlobalKey? skillsKey;
  final GlobalKey? projectsKey;
  final GlobalKey? contactKey;

  const NavbarItem({
    super.key,
    required this.label,
    this.first = false,
    this.scrollController,
    this.experienceKey,
    this.skillsKey,
    this.projectsKey,
    this.contactKey,
  });

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          if (widget.scrollController != null) {
            switch (widget.label.toLowerCase()) {
              case 'home':
                widget.scrollController!.animateTo(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
                break;
              case 'projects':
                if (widget.projectsKey != null) {
                  Scrollable.ensureVisible(
                    widget.projectsKey!.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
                break;
              case 'skills':
                if (widget.skillsKey != null) {
                  Scrollable.ensureVisible(
                    widget.skillsKey!.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
                break;
              case 'experience':
                if (widget.experienceKey != null) {
                  Scrollable.ensureVisible(
                    widget.experienceKey!.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
                break;
              case 'contact':
                if (widget.contactKey != null) {
                  Scrollable.ensureVisible(
                    widget.contactKey!.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
                break;
            }
          }
        },
        child: Text(
          widget.label,
          style: TextStyle(
            color: isHovered
                ? AppColors.primaryAccent
                : widget.first
                ? AppColors.primaryAccent
                : AppColors.primaryText,
            fontFamily: 'Manrope',
            fontWeight: widget.first ? FontWeight.bold : FontWeight.w500,
            fontSize: 3.5.sp,
          ),
        ),
      ),
    );
  }
}