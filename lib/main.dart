import 'package:automise/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Routes/routes.dart';
import 'Routes/routes_name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AppPovider())],
      child: const MaterialApp(
        title: 'My App',
        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.Generate_Routes,
      ),
    );
  }
}
