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
    return Container(
        width: widget.width.w,
        height: widget.height.h,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFF111111),
          borderRadius: BorderRadius.circular(38),
        
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(31),
          ),
          clipBehavior: Clip.antiAlias,
          child: HtmlElementView(
            viewType: _viewType,
          ),
        ),
    );
  }
}