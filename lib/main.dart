import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/portfolio_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Enable performance optimizations
  // This helps with rendering performance
  WidgetsBinding.instance.addTimingsCallback((timings) {
    // Monitor frame times for performance analysis
    // Can be used for debugging performance issues
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Manrope',
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF8B0000),
            ),
            // Optimize text rendering
            textTheme: const TextTheme(
              bodyLarge: TextStyle(letterSpacing: 0),
              bodyMedium: TextStyle(letterSpacing: 0),
            ),
          ),
          // Use builder pattern for better performance
          builder: (context, child) {
            return MediaQuery(
              // Prevent text scaling issues
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
          home: const PortfolioView(),
        );
      },
    );
  }
}