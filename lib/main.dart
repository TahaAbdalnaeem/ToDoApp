import 'package:flutter/material.dart';
import 'package:todoapp_provider/Providers/model.dart';
import 'package:todoapp_provider/Screens/homepage.dart';
import 'package:provider/provider.dart';
void main() => runApp(todoapp_provider());

class todoapp_provider extends StatelessWidget {
  const todoapp_provider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        home: HomePage(),
      ),
    );
  }
}
