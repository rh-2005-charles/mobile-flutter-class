import 'package:flutter/material.dart';
import 'package:semana3/core/styles.dart';
import 'package:semana3/presentation/landing/landing_tabs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void irALogin(BuildContext context) {
    Navigator.of(context).pushNamed("login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina principal"),
        actions: [
          TextButton(
            onPressed: () => irALogin(context),
            child: Text(
              "Iniciar Sesión",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue, gradient: AppStyles.mainBgGradient),
        child: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.maxFinite),
            Image.asset("assets/images/mainbg.png", width: 260),
            Container(child: LandingTabs()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        )),
      ),
    );
  }
}
