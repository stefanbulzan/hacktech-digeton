class API {
  static const String _API_URL_DEV = 'devromro-52c7f62f9e60.herokuapp.com';

  static const String _FLAVOR_DEV = 'development';

  static const appVersion = 'api/v1';

  static String get apiUrl {
    switch (flavor) {
      case _FLAVOR_DEV:
        return _API_URL_DEV;
      default:
        return _API_URL_DEV;
    }
  }

  static String get flavor {
    return _FLAVOR_DEV;
  }

  static Future<Map<String, String>> getHeaders() async {
    // const storage = FlutterSecureStorage();
    // final token = await storage.read(key: 'token');
    final headers = {
      'Content-Type': 'application/json',
    };
    // if (token != null) {
    //   headers['Authorization'] = 'Bearer $token';
    // }
    return headers;
  }

  static String ask() {
    return 'https://';
  }
}
