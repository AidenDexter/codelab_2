import 'package:flutter/material.dart';

import 'data.dart';
import 'pages/SPlash.dart';
import 'pages/details_page.dart';
import 'pages/landing_page.dart';

final Color mainYellow = Color(0xFFFFB02F);
final Color primaryGray = Color(0xFF313131);
final Color secondaryGray = Color(0xFF1C1C1C);
final Color lightGray = Color(0xFF3B3B3B);
void main() {
  runApp(
    MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
// DetailsPage(selectedModel: attractions[0]),
//       debugShowCheckedModeBanner: false