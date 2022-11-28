import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:spotify_app/core/api_key.dart';
import 'package:spotify_app/models/profile_model.dart';

Future<ProfileModel> getProfileService() async {
  ProfileModel? profileData = ProfileModel();

  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': '$api',
  };




  var url = 'https://api.spotify.com/v1/me';
  var res = await Dio().get(
    url,
    options: Options(headers: headers),
  );
  if (res.statusCode != 200)
    throw Exception('http.get error: statusCode= ${res.statusCode}');
  profileData = ProfileModel.fromJson(res.data);
  return profileData;


  
}
