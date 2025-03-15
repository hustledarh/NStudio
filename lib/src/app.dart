import 'package:flutter/material.dart';
import 'package:nstudio/src/home/home_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: settingsController,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
              restorationScopeId: 'app',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(),
              darkTheme: ThemeData.dark(),
              themeMode: settingsController.themeMode,
              builder: (context, child) => ResponsiveBreakpoints.builder(
                    child: child!,
                    breakpoints: const [
                      Breakpoint(start: 0, end: 450, name: MOBILE),
                      Breakpoint(start: 451, end: 800, name: TABLET),
                      Breakpoint(start: 801, end: 1920, name: DESKTOP),
                    ],
                  ),
              initialRoute: "/",
              onGenerateRoute: (RouteSettings routeSettings) {
                return MaterialPageRoute<void>(
                  settings: routeSettings,
                  builder: (BuildContext context) {
                    return MaxWidthBox(
                      maxWidth: 1200,
                      backgroundColor: const Color(0xFFF5F5F5),
                      child: ResponsiveScaledBox(
                        width: ResponsiveValue<double>(context,
                            conditionalValues: [
                              Condition.equals(name: MOBILE, value: 450),
                              Condition.equals(name: TABLET, value: 800),
                              Condition.equals(name: DESKTOP, value: 1200),
                            ]).value,
                        child: BouncingScrollWrapper.builder(
                          context,
                          _buildPage(routeSettings.name ?? ''),
                          dragWithMouse: true,
                        ),
                      ),
                    );
                  },
                );
              });
        });
  }

  Widget _buildPage(String name) {
    if (name == "/settings") {
      return SettingsView(controller: settingsController);
    }
    return HomeView();
  }
}
