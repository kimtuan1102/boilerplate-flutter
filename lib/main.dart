import 'package:boilerplate_flutter/providers.dart';
import 'package:boilerplate_flutter/routes.dart';
import 'package:boilerplate_flutter/ui/screens/main_screen.dart';
import 'package:boilerplate_flutter/ui/shared/app_color.dart';
import 'package:boilerplate_flutter/ui/shared/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.themeLight,
        routes: Routes.routes,
        home: MainScreen(),
      ),
    );
  }
}