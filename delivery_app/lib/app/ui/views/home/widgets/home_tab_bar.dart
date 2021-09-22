import 'package:delivery_app/app/themes/colors/colors.dart';
import 'package:delivery_app/app/ui/views/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerHome = Provider.of<HomeController>(context);
    return SafeArea(
      top: false,
      child: TabBar(
        unselectedLabelColor: Colors.grey,
        labelColor: ColorsApp.colorPrincipalApp,
        indicator: _CustomIndicator(),
        tabs: const [
          Tab(icon: Icon(Icons.account_tree)),
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.person_rounded)),
        ],
        controller: providerHome.tabController,
      ),
    );
  }
}

class _CustomIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter();
  }
}

class _CirclePainter extends BoxPainter {
  @override
  void paint(
    Canvas canvas,
    Offset offset,
    ImageConfiguration configuration,
  ) {
    final size = configuration.size!;
    final paint = Paint();
    paint.color = ColorsApp.colorPrincipalApp;
    final center = Offset(offset.dx + size.width * 0.5, size.height * 0.8);
    canvas.drawCircle(center, 3, paint);
  }
}
