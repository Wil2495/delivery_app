import 'package:delivery_app/app/ui/views/home/controller/home_controller.dart';
import 'package:delivery_app/app/ui/views/home/home_view.dart';
import 'package:delivery_app/app/ui/views/login/login_view.dart';
import 'package:flutter/Widgets.dart' show Widget, BuildContext;
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
      Routes.login: (_) => const LoginView(),
      Routes.home: (_) => ChangeNotifierProvider(
            create: (_) => HomeController(),
            child: const HomeView(),
          ),
    };
