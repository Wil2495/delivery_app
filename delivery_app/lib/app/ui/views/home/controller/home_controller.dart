import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  late TabController tabController;

  HomeController() {
    // ignore: avoid_print
    print("inicio controlador 😃");
    tabController = TabController(
      length: 3,
      vsync: NavigatorState(),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
