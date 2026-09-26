import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';
import 'package:protofolio/core/shared/widgets/desktop_appbar.dart';
import 'package:protofolio/core/shared/widgets/footer.dart';
import 'package:protofolio/core/shared/widgets/grid_background.dart';
import 'package:protofolio/core/shared/widgets/mobile_appbar.dart';
import 'package:protofolio/core/shared/widgets/mobile_drawer.dart';
import 'package:protofolio/features/contact_me/presentation/contact_me_presenter.dart';
import 'package:protofolio/features/intro/UI/presentation/intro_presenter.dart';
import 'package:protofolio/features/projects/presentation/UI/projects_presenter.dart';

class PortfolioView extends StatefulWidget {
   const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  final ScrollController _scrollController = ScrollController();
  
  // GlobalKeys for scroll targeting
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  // Cache responsive values
  double? _cachedScreenWidth;
  bool? _cachedIsDesktop;
  bool? _cachedIsSmallMobile;

  void _updateResponsiveValues(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    if (_cachedScreenWidth != screenWidth) {
      _cachedScreenWidth = screenWidth;
      _cachedIsDesktop = screenWidth >= 1024;
      _cachedIsSmallMobile = screenWidth < 375;
    }
  }

  @override
  Widget build(BuildContext context) {
    _updateResponsiveValues(context);
    
    final isDesktop = _cachedIsDesktop ?? false;
    final isSmallMobile = _cachedIsSmallMobile ?? false;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: isDesktop
          ? DesktopAppBar(
              scrollController: _scrollController,
              projectsKey: _projectsKey,
              contactKey: _contactKey,
            )
          : MobileAppbar(),
      endDrawer: isDesktop ? null : MobileDrawer(
        scrollController: _scrollController,
        projectsKey: _projectsKey,
        contactKey: _contactKey,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: GridBackground(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IntroPresenter(
                scrollController: _scrollController,
                projectsKey: _projectsKey,
                contactKey: _contactKey,
              ),
              SizedBox(height: isSmallMobile ? 120.h : 70.h,),
              Padding(
                key: _projectsKey,
                padding: EdgeInsets.only(left: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: isSmallMobile ? 60.h : 70.h,
                      width: 3.w,
                      decoration: BoxDecoration(
                        color: AppColors.primaryAccent,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Featured Mobile Projects',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: 'Manrope',
                        fontSize: isDesktop ? 10.sp : 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ProjectsPresenter(),

              SizedBox(height: isSmallMobile ? 70.h : 20.h),

              Padding(
                padding: EdgeInsets.zero,
                key: _contactKey,
                child: ContactMePresenter(),
              ),

              SizedBox(height: isSmallMobile ? 80.h : 100.h),

              const Footer(),

            ],
          ),
        ),
      ),
    );
  }
}