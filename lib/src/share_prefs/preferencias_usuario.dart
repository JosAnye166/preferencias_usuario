import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }
  PreferenciasUsuario._internal();

  SharedPreferences? _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }
  //ninguna de estas propiedades se usa
  //bool _colorSecundario;
  //int _genero;
  //String _nombre;

  //GET y SET del género
  int get genero {
    return _prefs!.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs!.setInt('genero', value);
  }

  //GET y SET del color secundario
  bool get colorSec {
    return _prefs!.getBool('colorSec') ?? false;
  }

  set colorSec(bool value) {
    _prefs!.setBool('colorSec', value);
  }

//GET y SET del nombre usuario
  String get nombreUsuario {
    return _prefs!.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value) {
    _prefs!.setString('nombreUsuario', value);
  }

  //GET y SET de la última página
  String get ultimapag {
    return _prefs!.getString('ultimapag') ?? 'home';
  }

  set ultimapag(String value) {
    _prefs!.setString('ultimapag', value);
  }
}
