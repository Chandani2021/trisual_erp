import 'package:flutter/material.dart';

class Toast {
  static void show(
    BuildContext context,
    String message, {
    Color backgroundColor = const Color(0xff656565),
    Color textColor = Colors.white,
    Duration duration = const Duration(seconds: 3),
  }) {
    dismiss();
    Toast._createView(context, message, backgroundColor, textColor, duration);
  }

  static OverlayEntry? _overlayEntry;
  static bool isVisible = false;

  static void _createView(
    BuildContext context,
    String message,
    Color background,
    Color textColor,
    Duration duration,
  ) async {
    var overlayState = Overlay.of(context);

    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) => _ToastAnimatedWidget(
        duration: duration,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Text(
                message,
                softWrap: true,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontFamily: 'AppFont',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    isVisible = true;
    overlayState!.insert(_overlayEntry!);
  }

  static dismiss() async {
    if (!isVisible) {
      return;
    }
    isVisible = false;
    _overlayEntry?.remove();
  }
}

class _ToastAnimatedWidget extends StatefulWidget {
  final Widget? child;
  final Duration? duration;

  const _ToastAnimatedWidget({
    Key? key,
    @required this.child,
    this.duration,
  }) : super(key: key);

  @override
  _ToastWidgetState createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<_ToastAnimatedWidget>
    with SingleTickerProviderStateMixin {
  bool get _isVisible => true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((context) {
      if (mounted) {
        Future.delayed(widget.duration!, () {
          Toast.dismiss();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: kToolbarHeight,
      child: AnimatedOpacity(
        duration: const Duration(seconds: 2),
        opacity: _isVisible ? 1.0 : 0.0,
        child: widget.child,
      ),
    );
  }
}
