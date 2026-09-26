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
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();

    _viewType = 'live-mobile-${widget.url.hashCode}';

    ui_web.platformViewRegistry.registerViewFactory(
      _viewType,
      (int viewId) {
        final iframe = web.HTMLIFrameElement()
          ..src = widget.url
          ..style.border = 'none'
          ..style.width = '100%'
          ..style.height = '100%'
          ..style.display = 'block'
          ..allow = 'autoplay; fullscreen'
          ..loading = 'lazy' // Lazy load iframe content
          ..style.opacity = '0'; // Start invisible

        // Fade in when loaded
        iframe.onLoad.listen((_) {
          iframe.style.transition = 'opacity 0.3s ease-in';
          iframe.style.opacity = '1';
        });

        return iframe;
      },
    );

    // Mark as loaded after a short delay
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        setState(() {
          _isLoaded = true;
        });
      }
    });
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
    
    return SizedBox(
      width: mockupWidth,
      height: mockupHeight,
      child: Container(
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
          child: _isLoaded
              ? HtmlElementView(
                  viewType: _viewType,
                )
              : const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
        ),
      ),
    );
  }
}