import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/settings_pages.dart';
import 'package:preferencias_usuario/src/share_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuario/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimapag = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias'),
        backgroundColor: (prefs.colorSec) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Color secundario: ${prefs.colorSec}'),
        Divider(),
        Text('Género: ${prefs.genero}'),
        Divider(),
        Text('Nombre usuario: ${prefs.nombreUsuario}'),
        Divider(),
      ]),
    );
  }
}
