import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:prueba_subjetiva/models/prueba_model.dart';

class ServiceReqest {
  void getReqestService() {
    var url = Uri.parse("https://rickandmortyapi.com/api/character");
    print(url);
    http.get(url).then((response) {
      print(response.body);

      Map<String, dynamic> json = jsonDecode(response.body);
      print(json);

      final Prueba prueba = Prueba.fromJson(json);
      print(prueba);
    });
  }
}
