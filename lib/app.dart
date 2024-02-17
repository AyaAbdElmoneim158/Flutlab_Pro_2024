import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      // theme: TAppTheme .lightTheme,
      // darkTheme: TAppTheme.darkTheme,
      home: Scaffold(
        body: Center(
          child: Text(
            "Store App",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
