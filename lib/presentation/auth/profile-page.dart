import 'package:flutter/material.dart';
import 'package:semana3/core/colors.dart';
import 'package:semana3/core/styles.dart';
import 'package:semana3/models/user.dart';
import 'package:semana3/presentation/landing/pages/products/product_data.dart';

class ProfilePage extends StatelessWidget {
  final AppUser user;
  ProfilePage({Key? key, required this.user}) : super(key: key);

  void irHome(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil("home", (_) => false);
  }

  void irProduct(BuildContext context) {
    Navigator.of(context).pushNamed("products", arguments: categoryProducts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          gradient: AppStyles.secondaryBgGradient,
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Detalle del Usuario",
                    style: AppStyles.title,
                  ),
                  SizedBox(height: 80), // Espacio para la imagen superpuesta
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: AppColors.ligthBg,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 80), // Espacio debajo de la imagen
                        ListTile(
                          title: Text(
                            "Nombres",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(user.name),
                        ),
                        Divider(),
                        ListTile(
                          title: Text(
                            "Apellidos",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(user.lastName),
                        ),
                        Divider(),
                        ListTile(
                          title: Text(
                            "Correo",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(user.email),
                        ),
                        Divider(),
                        ListTile(
                          title: Text(
                            "Teléfono",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(user.phoneNumber),
                        ),
                        //Divider(),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Botones fuera del contenedor
                  ElevatedButton(
                    onPressed: () => irProduct(context),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          AppColors.mainBg,
                          AppColors.contranstBg,
                        ]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 200,
                        height: 50,
                        alignment: Alignment.center,
                        child: const Text(
                          'VER PRODUCTOS',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () => irHome(context),
                    child: Text(
                      'Cerrar Sesion',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 70,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4)),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(user.image),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
