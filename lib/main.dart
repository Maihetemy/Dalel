import 'package:dalel/core/routes/route_app.dart';
import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/data/cache_helper.dart';
import 'package:dalel/services/service_lockator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  
  await getIt<CacheHelper>().init();
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ourRouter,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
    );
  }
}
