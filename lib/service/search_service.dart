import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:spotify_app/core/api_key.dart';
import 'package:spotify_app/models/search_model.dart';

Future  <SearchModel> getSearchService(String aramaDegeri)  async {
  SearchModel? searchData= SearchModel();
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': '$api',
  };

  var params = {
    'q': '$aramaDegeri',
    'type': 'track,artist',
    'market': 'TR',
    'limit': '10',
    'offset': '0',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

  var url = 'https://api.spotify.com/v1/search?$query';
  var res = await Dio().get(url, options: Options( headers: headers));
  if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  searchData= SearchModel.fromJson(res.data);
  return searchData;
  
}
