import 'package:flutter/material.dart';

class AppColors {
  // Background colors
  static const Color background = Color(0xFFFFFFFF);
  
  // Text colors
  static const Color primaryText = Color(0xFF111111);
  static const Color secondaryText = Color(0xFF444444);
  
  // Accent colors
  static const Color primaryAccent = Color(0xFF8B0000);
  static const Color lightAccentBackground = Color(0xFFF8EEEE);
  
  // Border colors
  static const Color border = Color(0xFFE5E5E5);
  
  // Opacity variations for accent color
  static Color primaryAccentWithOpacity(double opacity) {
    return primaryAccent.withValues(alpha: opacity);
  }
  
  // Opacity variations for border color
  static Color borderWithOpacity(double opacity) {
    return border.withValues(alpha: opacity);
  }
}