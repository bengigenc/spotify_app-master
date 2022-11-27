import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:spotify_app/core/api_key.dart';
import 'package:spotify_app/models/profileList_model.dart';

Future<ProfileListModel> getProfileListService() async {
  ProfileListModel? profileListData = ProfileListModel();
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': '$api',
  };

  var params = {
    'limit': '10',
    'offset': '5',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

  var url = 'https://api.spotify.com/v1/me/playlists?$query';
  var res = await Dio().get(url, options: Options(headers: headers));
  if (res.statusCode != 200)
    throw Exception('http.get error: statusCode= ${res.statusCode}');
  profileListData = ProfileListModel.fromJson(res.data);
  return profileListData;
}
