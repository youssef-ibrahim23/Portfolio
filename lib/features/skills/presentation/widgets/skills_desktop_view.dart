import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/core/constants/app_colors.dart';

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ═══════════════════════════════════════════
          // ROW 1 — MAIN SKILL (full width, 4 columns)
          // ═══════════════════════════════════════════
          _SkillCard(
            title: 'Mobile App Development',
            icon: Icons.phone_iphone_rounded,
            columns: 4,
            highlight: true,
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
          SizedBox(height: 16.h),

          // ═══════════════════════════════════════════
          // ROW 2 — 2 CARDS
          // ═══════════════════════════════════════════
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: _SkillCard(
                    title: 'Core Development Concepts',
                    icon: Icons.architecture_rounded,
                    columns: 2,
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
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: _SkillCard(
                    title: 'Backend & Web',
                    icon: Icons.dns_rounded,
                    columns: 2,
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
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),

          // ═══════════════════════════════════════════
          // ROW 3 — 2 CARDS
          // ═══════════════════════════════════════════
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: _SkillCard(
                    title: 'Database Development',
                    icon: Icons.storage_rounded,
                    columns: 2,
                    delay: 500,
                    skills: const [
                      'SQL',
                      'PL/SQL',
                      'Oracle Database',
                      'PostgreSQL',
                    ],
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: _SkillCard(
                    title: 'Tools',
                    icon: Icons.handyman_rounded,
                    columns: 2,
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
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),

          // ═══════════════════════════════════════════
          // ROW 4 — SOFT SKILLS (full width, 3 columns)
          // ═══════════════════════════════════════════
          _SkillCard(
            title: 'Soft Skills',
            icon: Icons.people_alt_rounded,
            columns: 3,
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

  const _SkillCard({
    required this.title,
    required this.icon,
    required this.skills,
    required this.columns,
    required this.delay,
    this.highlight = false,
  });

  @override
  Widget build(BuildContext context) {
    final accent = AppColors.primaryAccent;

    return Container(
      padding: EdgeInsets.all(14.w),
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
          // ─── Header ───
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(6.w),
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
                child: Icon(icon, size: 10.sp, color: Colors.white),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: 'Manrope',
                    fontSize: 4.6.sp,
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
          _SkillGrid(skills: skills, columns: columns),
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

  const _SkillGrid({required this.skills, required this.columns});

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
          if (r > 0) SizedBox(height: 8.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var c = 0; c < columns; c++) ...[
                if (c > 0) SizedBox(width: 8.w),
                Expanded(
                  child: c < rows[r].length
                      ? _SkillChip(skill: rows[r][c])
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

  const _SkillChip({required this.skill});

  @override
  Widget build(BuildContext context) {
    final accent = AppColors.primaryAccent;

    return Container(
      height: 30.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: accent.withOpacity(0.08),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.primaryAccent20),
      ),
      child: Row(
        // ⚠️ IMPORTANT: do NOT use mainAxisSize.min here —
        // it fights with Expanded and gives the text 0 width.
        children: [
          Container(
            width: 5.w,
            height: 5.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: accent,
            ),
          ),
          SizedBox(width: 7.w),
          Expanded(
            child: Text(
              skill,
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w600,
                fontSize: 4.2.sp,
                color: AppColors.primaryText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}