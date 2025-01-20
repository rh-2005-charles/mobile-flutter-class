import 'package:flutter/material.dart';
import 'package:semana3/presentation/components/tab_body.dart';
import 'package:semana3/presentation/components/tab_button.dart';

class LandingTabs extends StatefulWidget {
  const LandingTabs({super.key});

  @override
  State<LandingTabs> createState() => _LandingTabsState();
}

class _LandingTabsState extends State<LandingTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<TextData> _data = [
    TextData(
        title: "Ofertas de la Semana",
        body:
            "Descubre nuestras ofertas exclusivas de esta semana. Hasta 50% de descuento en productos seleccionados."),
    TextData(
        title: "Nuevos Lanzamientos",
        body:
            "¡Recién llegados! Explora nuestra nueva colección de productos y encuentra todo lo que necesitas."),
    TextData(
        title: "Envío Gratis",
        body:
            "Obtén envío gratis en compras superiores a S/. 50. ¡No dejes pasar esta oportunidad!"),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // 3 tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 150,
            child: TabBarView(
              controller: _tabController,
              children: _data.map<Widget>((e) => TabBody(data: e)).toList(),
            ),
          ),
          SizedBox(height: 50),
          Container(
            child: TabBar(
              dividerHeight: 0,
              tabAlignment: TabAlignment.center,
              controller: _tabController,
              tabs: [
                TabButton(),
                TabButton(),
                TabButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
