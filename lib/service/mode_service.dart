import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:spotify_app/core/api_key.dart';
import 'package:spotify_app/models/mode_model.dart';

Future<ModeListModel> getModeService() async {
  ModeListModel? modeData = ModeListModel();

  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': '$api',
  };

  var params = {
    'country': 'TR',
    'locale': 'tr_TR',
    'limit': '10',
    'offset': '5',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');


  var url = 'https://api.spotify.com/v1/browse/categories?$query';
  var res = await Dio().get(
    url,
    options: Options(headers: headers),
  );
  if (res.statusCode != 200)
    throw Exception('http.get error: statusCode= ${res.statusCode}');
  modeData = ModeListModel.fromJson(res.data);
  return modeData;


}
