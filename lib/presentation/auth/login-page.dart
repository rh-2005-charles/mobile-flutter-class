import 'package:flutter/material.dart';
import 'package:semana3/core/colors.dart';
import 'package:semana3/core/styles.dart';
import 'package:semana3/models/user.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void irRegister(BuildContext context) {
    Navigator.of(context).pushReplacementNamed("register");
  }

  void irProfile(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      AppUser myProfile = AppUser(
        id: 1,
        name: "Charles Richar",
        lastName: "Revolo Hinostroza",
        email: "i2317251@continental.edu.pe",
        phoneNumber: "+51 946 858 888",
        image: "assets/images/perfil2.png",
      );

      Navigator.of(context)
          .pushReplacementNamed("profile", arguments: myProfile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina de Inicio de Sesion"),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue, gradient: AppStyles.secondaryBgGradient),
        child: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.maxFinite),
            Text(
              "Iniciar Sesion",
              style: AppStyles.title,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.ligthBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Correo",
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Contraseña",
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () => irProfile(context),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              AppColors.mainBg,
                              AppColors.contranstBg
                            ]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          width: 200,
                          height: 50,
                          alignment: Alignment.center,
                          child: const Text(
                            'INICIAR SESION',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                        onPressed: () => irRegister(context),
                        child: Text(
                          'Crear Cuenta',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              decoration: TextDecoration.underline),
                        )),
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
