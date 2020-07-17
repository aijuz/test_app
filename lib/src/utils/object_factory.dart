import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/src/utils/prefs.dart';

/// it is a hub that connecting pref,repo,client
/// used to reduce imports in pages
class ObjectFactory {
  static final _objectFactory = ObjectFactory._internal();

  ObjectFactory._internal();

  factory ObjectFactory() => _objectFactory;

  ///Initialisation of Objects
  Prefs _prefs = Prefs();

  ///
  /// Getters of Objects
  ///

  Prefs get prefs => _prefs;

  ///
  /// Setters of Objects
  ///
  void setPrefs(SharedPreferences sharedPreferences) {
    _prefs.sharedPreferences = sharedPreferences;
  }
}
