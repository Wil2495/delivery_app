import 'package:delivery_app/app/themes/colors/colors.dart';
import 'package:delivery_app/app/ui/routes/app_routes.dart';
import 'package:delivery_app/app/ui/views/login/login_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //scaffoldBackgroundColor: ColorsApp.colorPrincipalApp,
          primarySwatch: ColorsApp.colorPrincipalApp),
      home: const LoginView(),
      routes: appRoutes,
    );
  }
}
