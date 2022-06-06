import 'dart:developer' as developer;
import 'package:build_flavor_example/env/env.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text("Env: ${Env.instance.endpoint}"),
              Text("Env: ${Env.instance.currentPlatform.iosBundleId}"),
            ],
          ),
        ),
      ),
    );
  }
}
