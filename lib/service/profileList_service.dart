import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_app/core/api_key.dart';
import 'package:spotify_app/models/profileList_model.dart';

Future<ProfileListModel> getProfileListService() async {
  ProfileListModel? profileListData = ProfileListModel();
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': '$apiKey',
  };

  var params = {
    'limit': '10',
    'offset': '5',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

  var url = Uri.parse('https://api.spotify.com/v1/me/playlists?$query');
  var res = await http.get(url, headers: headers);
  if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  profileListData= ProfileListModel.fromJson(jsonDecode(res.body));
  return profileListData;
}
