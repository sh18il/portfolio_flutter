// import 'package:flutter/material.dart';
// import 'package:web_app/constants.dart';
// import 'package:web_app/sections/about/about_section.dart';
// import 'package:web_app/sections/contact/contact_section.dart';
// import 'package:web_app/sections/feedback/feedback_section.dart';
// import 'package:web_app/sections/recent_work/recent_work_section.dart';
// import 'package:web_app/sections/service/service_section.dart';
// import 'package:web_app/sections/topSection/top_section.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             TopSection(onMenuItemTap: (int ) {  },),
//             SizedBox(height: kDefaultPadding * 2),
//             AboutSection(),
//             ServiceSection(),
//             RecentWorkSection(),
//             // FeedbackSection(),
//             SizedBox(height: kDefaultPadding),
//             ContactSection(),
//             // This SizeBox just for demo
//             // SizedBox(
//             //   height: 500,
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/contact/contact_section.dart';
import 'package:web_app/sections/recent_work/recent_work_section.dart';
import 'package:web_app/sections/service/service_section.dart';
import 'package:web_app/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _serviceKey = GlobalKey();
  final GlobalKey _recentWorkKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void scrollToSection(int index) {
    final targetKey = [
      _aboutKey,
      _serviceKey,
      _recentWorkKey,
      _contactKey,
    ][index];

    final context = targetKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(onMenuItemTap: scrollToSection),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(key: _aboutKey),
            ServiceSection(key: _serviceKey),
            RecentWorkSection(key: _recentWorkKey),
            SizedBox(height: kDefaultPadding),
            ContactSection(key: _contactKey),
          ],
        ),
      ),
    );
  }
}
