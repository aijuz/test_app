import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// shared preference storage
class Prefs {
  JsonCodec codec = new JsonCodec();
  SharedPreferences _sharedPreferences;

  static const String _IS_CONNECTED = "is_connected";
  static const String _IS_USER_LOADED = "is_user_loaded";

  static const String _AUTH_TOKEN = "auth_token";
  static const String _FCM_TOKEN = "fcm_token";

  static const String _IS_LOGGED_IN = "is_logged_in";

  static const String _USER_ID = "user_id";

  static const String _LAT = "lat";

  static const String _LNG = "lng";

  static const String _PHONE = "phone";

  static const String _PHONE_MODEL = "phone_moel";

  static const String _OTP = "otp";

  static const String _PROFILE_PHOTO = "profile _photo";
  static const String _DISPLAY_NAME = "display_name";

  Prefs();

  set sharedPreferences(SharedPreferences value) {
    _sharedPreferences = value;
  }

  ///saving  the auth token as a String
  void setAuthToken({String token}) {
    _sharedPreferences.setString(_AUTH_TOKEN, "Token " + token);
  }

  ///saving  the profile photo as a String
  void setProfilePhoto({String photo}) {
    _sharedPreferences.setString(_PROFILE_PHOTO, photo);
  }

  ///saving  the profile photo as a String
  void setDisplayName({String name}) {
    _sharedPreferences.setString(_DISPLAY_NAME, name);
  }

  ///saving  the profile phone no. as a String
  void setPhone({String phone}) {
    _sharedPreferences.setString(_PHONE, phone);
  }

  ///get method  for auth token
  String getPhone() => _sharedPreferences.getString(_PHONE);

  ///get method  for auth token
  String getAuthToken() => _sharedPreferences.getString(_AUTH_TOKEN);

  ///get method  for profile photo
  String getProfilePhoto() => _sharedPreferences.getString(_PROFILE_PHOTO);

  ///get method  for profile photo
  String getDisplayName() => _sharedPreferences.getString(_DISPLAY_NAME);

  ///saving  the auth token as a String
  void setFcmToken({String token}) async {
    await _sharedPreferences.setString(_FCM_TOKEN, token);
  }

  ///get method  for auth token
  String getFcmToken() => _sharedPreferences.getString(_FCM_TOKEN);

  ///after login set isLoggedIn true
  ///before logout set isLoggedIn false
  void setIsLoggedIn(bool status) {
    _sharedPreferences.setBool(_IS_LOGGED_IN, status);
  }

  ///checking that is logged in or not

  bool isLoggedIn() => _sharedPreferences.getBool(_IS_LOGGED_IN) != null &&
          _sharedPreferences.getBool(_IS_LOGGED_IN)
      ? true
      : false;

  /// for clearing the data in preference
  void clearPrefs() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
  }

  ///setting  connection status
  void setIsConnected(bool status) {
    _sharedPreferences.setBool(_IS_CONNECTED, status);
  }

  /// checking network is available or not
  bool isConnected() => _sharedPreferences.getBool(_IS_CONNECTED) != null &&
          _sharedPreferences.getBool(_IS_CONNECTED)
      ? true
      : false;

  void setIsUserLoaded(bool status) {
    _sharedPreferences.setBool(_IS_USER_LOADED, status);
  }

  /// checking network is available or not
  bool isUserLoaded() => _sharedPreferences.getBool(_IS_USER_LOADED) != null &&
          _sharedPreferences.getBool(_IS_USER_LOADED)
      ? true
      : false;

  ///saving  the user id
  void setUserId({String userId}) {
    _sharedPreferences.setString(_USER_ID, userId);
  }

  ///get method  for user id
  String getUserID() => _sharedPreferences.getString(_USER_ID);

  ///saving  the latitude
  void setLat({String lat}) {
    _sharedPreferences.setString(_LAT, lat);
  }

  ///get method  for latitude
  String getLat() => _sharedPreferences.getString(_LAT);

  ///saving  the longitude
  void setLng({String lng}) {
    _sharedPreferences.setString(_LNG, lng);
  }

  ///get method  for latitude
  String getLng() => _sharedPreferences.getString(_LNG);

  ///saving  the flat id
  void setPhoneModel({String phoneModel}) {
    _sharedPreferences.setString(_PHONE_MODEL, phoneModel);
  }

  ///get method  for user id
  String getPhoneModel() => _sharedPreferences.getString(_PHONE_MODEL);

  ///saving  the otp
  void setOTP({String otp}) {
    _sharedPreferences.setString(_OTP, otp);
  }

  ///get method  for otp
  String getOTP() => _sharedPreferences.getString(_OTP);
}
