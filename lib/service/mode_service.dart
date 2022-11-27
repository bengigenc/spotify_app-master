import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_app/core/api_key.dart';
import 'package:spotify_app/models/mode_model.dart';

Future <ModeListModel> getModeService() async {
  ModeListModel? modeData = ModeListModel();

  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': '$apiKey',
  };

  var params = {
    'country': 'TR',
    'locale': 'tr_TR',
    'limit': '10',
    'offset': '5',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

  var url = Uri.parse('https://api.spotify.com/v1/browse/categories?$query');
  var res = await http.get(url, headers: headers);
  if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  modeData = ModeListModel.fromJson(jsonDecode(res.body));
  return modeData;
  
}


