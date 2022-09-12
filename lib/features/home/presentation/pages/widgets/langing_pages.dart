import 'package:fl_discover_dashboard/features/home/presentation/pages/widgets/dashboard.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, this.pageController});
  final pageController;
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: widget.pageController,
        children: [
          PageView(
            children: [
              Container(
                color: Colors.white,
                child: const Center(
                  child: HomeDashboard(),
                ),
              )
            ],
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'Users',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'Files',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'Download',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
