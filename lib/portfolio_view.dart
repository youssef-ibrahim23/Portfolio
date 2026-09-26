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

  @override
  Widget build(BuildContext context) {

    final isDesktop = MediaQuery
        .sizeOf(context)
        .width >= 1024;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: isDesktop
          ? DesktopAppBar(scrollController: _scrollController)
          : MobileAppbar(),
      endDrawer: isDesktop ? null : MobileDrawer(scrollController: _scrollController),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: GridBackground(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IntroPresenter(scrollController: _scrollController),
              SizedBox(height: 150.h,),
              Padding(
                padding: EdgeInsets.only(left:  20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 60.h,
                      width: 2.w,
                      decoration: BoxDecoration(
                        color: AppColors.primaryAccent,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    SizedBox(width: 7.w),
                    Text(
                      'Featured Mobile Projects',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: 'Manrope',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 13.h),

              ProjectsPresenter(),

              SizedBox(height: 100.h),

              ContactMePresenter(),

              SizedBox(height: 60.h),

              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}