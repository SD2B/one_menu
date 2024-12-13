import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomRefreshIndicator extends StatefulWidget {
  final Widget child;
  final String lottieAsset;
  final Future<void> Function() onRefresh;

  const CustomRefreshIndicator({
    Key? key,
    required this.child,
    required this.lottieAsset,
    required this.onRefresh,
  }) : super(key: key);

  @override
  _CustomRefreshIndicatorState createState() => _CustomRefreshIndicatorState();
}

class _CustomRefreshIndicatorState extends State<CustomRefreshIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.axisDirection == AxisDirection.down) {
          setState(() {
            _progress = (notification.overscroll / 100).clamp(0.0, 1.0);
            _controller.value = _progress; // Update Lottie animation progress
          });
        }
        return false;
      },
      child: Stack(
        children: [
          RefreshIndicator(
            onRefresh: widget.onRefresh,
            displacement: 80, // Adjust pull distance
            color: Colors.transparent, // Hide default color
            backgroundColor: Colors.transparent, // Hide background
            strokeWidth: 0.0, // Hide default indicator
            child: widget.child,
          ),
          if (_progress > 0) // Show Lottie only during pull
            Positioned(
              top: 50, // Adjust position of Lottie animation
              left: 0,
              right: 0,
              child: LottieBuilder.asset(
                widget.lottieAsset,
                controller: _controller,
                height: 100, // Adjust size
                animate: false, // Control manually with the controller
              ),
            ),
        ],
      ),
    );
  }
}
