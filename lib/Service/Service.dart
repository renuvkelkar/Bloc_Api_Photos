import 'package:http/http.dart' as http;

class HttpService {
  static final baseUrl = "https://jsonplaceholder.typicode.com/photos";

  static Future<http.Response> getRequest() async {
    http.Response response;

    final url = Uri.parse("$baseUrl");

    try {
      response = await http.get(url);
    } on Exception catch (e) {
      throw e;
    }

    return response;
  }
}