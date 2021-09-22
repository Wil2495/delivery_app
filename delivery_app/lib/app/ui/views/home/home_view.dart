import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/home_controller.dart';
import 'tabs/home/home_tab.dart';
import 'tabs/other/other_tab.dart';
import 'tabs/profile/profile_tab.dart';
import 'widgets/home_tab_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeController>(context);
    return Scaffold(
      bottomNavigationBar: const HomeTabBar(),
      body: SafeArea(
        child: TabBarView(
          controller: provider.tabController,
          children: const [
            OtherTab(),
            HomeTab(),
            ProfileTab(),
          ],
        ),
      ),
    );
  }
}
