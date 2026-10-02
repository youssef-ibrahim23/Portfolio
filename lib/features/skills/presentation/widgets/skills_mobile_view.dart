import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isSmallMobile = screenWidth < 375;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isSmallMobile ? 20.w : 24.w,
        vertical: isSmallMobile ? 40.h : 50.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // ═══════════════════════════════════════════
          // MAIN SKILL CARD (highlighted, 2 columns)
          // ═══════════════════════════════════════════
          _SkillCard(
            title: 'Mobile App Development',
            icon: Icons.phone_iphone_rounded,
            columns: 2,
            highlight: true,
            isSmallMobile: isSmallMobile,
            delay: 150,
            skills: const [
              'Flutter',
              'Dart',
              'Clean Architecture',
              'MVVM',
              'BLoC',
              'Cubit',
              'Provider',
              'Riverpod',
              'Firebase',
              'Supabase',
              'REST APIs',
              'Platform Channels',
              'Isolates',
              'Background Services',
              'Local & Push Notifications',
              'Google Play Store Deployment',
            ],
          ),
          SizedBox(height: isSmallMobile ? 14.h : 16.h),

          // ═══════════════════════════════════════════
          // OTHER SKILL CARDS (stacked, 2 columns)
          // ═══════════════════════════════════════════
          _SkillCard(
            title: 'Core Development Concepts',
            icon: Icons.architecture_rounded,
            columns: 2,
            isSmallMobile: isSmallMobile,
            delay: 300,
            skills: const [
              'OOP',
              'Data Structure',
              'Design Pattern',
              'SOLID',
              'Agile',
              'CI/CD',
            ],
          ),
          SizedBox(height: isSmallMobile ? 14.h : 16.h),

          _SkillCard(
            title: 'Backend & Web',
            icon: Icons.dns_rounded,
            columns: 2,
            isSmallMobile: isSmallMobile,
            delay: 400,
            skills: const [
              'Java',
              'Spring Boot',
              'Angular',
              'HTML',
              'CSS',
              'TypeScript',
            ],
          ),
          SizedBox(height: isSmallMobile ? 14.h : 16.h),

          _SkillCard(
            title: 'Database Development',
            icon: Icons.storage_rounded,
            columns: 2,
            isSmallMobile: isSmallMobile,
            delay: 500,
            skills: const [
              'SQL',
              'PL/SQL',
              'Oracle Database',
              'PostgreSQL',
            ],
          ),
          SizedBox(height: isSmallMobile ? 14.h : 16.h),

          _SkillCard(
            title: 'Tools',
            icon: Icons.handyman_rounded,
            columns: 2,
            isSmallMobile: isSmallMobile,
            delay: 600,
            skills: const [
              'Git',
              'GitHub',
              'GitLab',
              'Figma',
              'Android Studio',
              'VS Code',
            ],
          ),
          SizedBox(height: isSmallMobile ? 14.h : 16.h),

          _SkillCard(
            title: 'Soft Skills',
            icon: Icons.people_alt_rounded,
            columns: 2,
            isSmallMobile: isSmallMobile,
            delay: 700,
            skills: const [
              'Problem-solving',
              'Effective communication',
              'Cross-functional collaboration',
              'Time management',
              'Continuous and Fast learner',
              'Team player',
            ],
          ),
        ],
      ),
    );
  }

}

// ═══════════════════════════════════════════════════════════
// SKILL CARD
// ═══════════════════════════════════════════════════════════
class _SkillCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> skills;
  final int columns;
  final int delay;
  final bool highlight;
  final bool isSmallMobile;

  const _SkillCard({
    required this.title,
    required this.icon,
    required this.skills,
    required this.columns,
    required this.delay,
    required this.isSmallMobile,
    this.highlight = false,
  });

  @override
  Widget build(BuildContext context) {
    final accent = AppColors.primaryAccent;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(isSmallMobile ? 14.w : 16.w),
      decoration: BoxDecoration(
        color: AppColors.lightAccentBackground,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: highlight
              ? accent.withOpacity(0.55)
              : AppColors.primaryAccent20,
          width: highlight ? 1.4 : 1,
        ),
        boxShadow: highlight
            ? [
          BoxShadow(
            color: accent.withOpacity(0.10),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ]
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // ─── Header (icon badge + title) ───
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(isSmallMobile ? 7.w : 8.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      accent,
                      accent.withOpacity(0.55),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  icon,
                  size: isSmallMobile ? 14.sp : 15.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: 'Manrope',
                    fontSize: isSmallMobile ? 14.sp : 15.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Container(height: 1, color: AppColors.primaryAccent20),
          SizedBox(height: 12.h),

          // ─── Grid ───
          _SkillGrid(
            skills: skills,
            columns: columns,
            isSmallMobile: isSmallMobile,
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(duration: 500.ms, curve: Curves.easeOut)
        .then(delay: delay.ms)
        .slideY(begin: 0.06, end: 0, duration: 500.ms, curve: Curves.easeOut);
  }
}

// ═══════════════════════════════════════════════════════════
// ALIGNED SKILL GRID  (rows of N equal-width chips)
// ═══════════════════════════════════════════════════════════
class _SkillGrid extends StatelessWidget {
  final List<String> skills;
  final int columns;
  final bool isSmallMobile;

  const _SkillGrid({
    required this.skills,
    required this.columns,
    required this.isSmallMobile,
  });

  @override
  Widget build(BuildContext context) {
    // Split skills into rows of `columns`
    final rows = <List<String>>[];
    for (var i = 0; i < skills.length; i += columns) {
      rows.add(
        skills.sublist(i, (i + columns).clamp(0, skills.length)),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var r = 0; r < rows.length; r++) ...[
          if (r > 0) SizedBox(height: isSmallMobile ? 8.h : 9.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var c = 0; c < columns; c++) ...[
                if (c > 0) SizedBox(width: 8.w),
                Expanded(
                  child: c < rows[r].length
                      ? _SkillChip(
                    skill: rows[r][c],
                    isSmallMobile: isSmallMobile,
                  )
                      : const SizedBox.shrink(),
                ),
              ],
            ],
          ),
        ],
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════
// SKILL CHIP
// ═══════════════════════════════════════════════════════════
class _SkillChip extends StatelessWidget {
  final String skill;
  final bool isSmallMobile;

  const _SkillChip({
    required this.skill,
    required this.isSmallMobile,
  });

  @override
  Widget build(BuildContext context) {
    final accent = AppColors.primaryAccent;

    return Container(
      height: isSmallMobile ? 32.h : 34.h,
      padding: EdgeInsets.symmetric(horizontal: isSmallMobile ? 10.w : 11.w),
      decoration: BoxDecoration(
        color: accent.withOpacity(0.08),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.primaryAccent20),
      ),
      child: Row(
        // ⚠️ Do NOT add mainAxisSize: MainAxisSize.min here —
        // it conflicts with Expanded and gives the text 0 width.
        children: [
          Container(
            width: 5.w,
            height: 5.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: accent,
            ),
          ),
          SizedBox(width: 6.w),
          Expanded(
            child: Text(
              skill,
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w600,
                fontSize: isSmallMobile ? 11.sp : 12.sp,
                color: AppColors.primaryText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}