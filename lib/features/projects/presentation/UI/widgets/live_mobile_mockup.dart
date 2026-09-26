import 'dart:ui_web' as ui_web;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web/web.dart' as web;

class LiveMobileMockup extends StatefulWidget {
  final String url;
  final double width;
  final double height;

  const LiveMobileMockup({
    super.key,
    required this.url,
    this.width = 90,
    this.height = 650,
  });

  @override
  State<LiveMobileMockup> createState() => _LiveMobileMockupState();
}

class _LiveMobileMockupState extends State<LiveMobileMockup> {
  late final String _viewType;

  @override
  void initState() {
    super.initState();

    _viewType =
    'live-mobile-${DateTime.now().microsecondsSinceEpoch}';

    ui_web.platformViewRegistry.registerViewFactory(
      _viewType,
          (int viewId) {
        final iframe = web.HTMLIFrameElement()
          ..src = widget.url
          ..style.border = 'none'
          ..style.width = '100%'
          ..style.height = '100%'
          ..style.display = 'block'
          ..allow = 'autoplay; fullscreen';

        return iframe;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobile = screenWidth < 1024;
    final isSmallMobile = screenWidth < 375;
    
    // Responsive sizing for mobile view
    final mockupWidth = isMobile 
        ? (isSmallMobile ? screenWidth * 0.85 : screenWidth * 0.9)
        : widget.width.w;
    final mockupHeight = isMobile 
        ? (isSmallMobile ? screenWidth * 1.8 : screenWidth * 1.6)
        : widget.height.h;
    
    return Container(
        width: mockupWidth,
        height: mockupHeight,
        padding: EdgeInsets.all(isMobile ? 6 : 8),
        decoration: BoxDecoration(
          color: const Color(0xFF111111),
          borderRadius: BorderRadius.circular(isMobile ? 30 : 38),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(isMobile ? 24 : 31),
          ),
          clipBehavior: Clip.antiAlias,
          child: HtmlElementView(
            viewType: _viewType,
          ),
        ),
    );
  }
}