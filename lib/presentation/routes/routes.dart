import 'package:flutter/material.dart';
import 'package:semana3/models/user.dart';
import 'package:semana3/presentation/auth/login-page.dart';
import 'package:semana3/presentation/auth/profile-page.dart';
import 'package:semana3/presentation/auth/register-page.dart';
import 'package:semana3/presentation/landing/home-page.dart';
import 'package:semana3/presentation/landing/pages/products/product-page.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    "home": (_) => HomePage(),
    "login": (_) => LoginPage(),
    "register": (_) => RegisterPage(),
    "products": (_) => ProductPage(),
    //"recovery-password": (_) => RecoveryPasswordPage(),
    "profile": (context) =>
        ProfilePage(user: ModalRoute.of(context)!.settings.arguments as AppUser)
  };
}
