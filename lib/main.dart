import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner_cz/scanner.dart';
import 'package:qr_scanner_cz/start_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'WebViewTrue.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: ResponsiveSizer(builder: (context, orientation, screenType) {
          return StartPage();
        }),
        initialRoute: '/',
        // передаём маршруты в приложение
        getPages: [
          GetPage(name: '/Home', page: () => StartPage()),
          GetPage(name: '/Home/scanner', page: () => const Scanner()),
          GetPage(name: '/Home/web', page: () => WebViewTrue())
        ]);
  }
}
