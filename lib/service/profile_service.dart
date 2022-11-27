import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_app/core/api_key.dart';
import 'package:spotify_app/models/profile_model.dart';

Future <ProfileModel> getProfileService() async {
ProfileModel? profileData = ProfileModel();

  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': '$apiKey',
  };


  var url = Uri.parse('https://api.spotify.com/v1/me');
  var res = await http.get(url, headers: headers);
  if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  profileData= ProfileModel.fromJson(jsonDecode(res.body));
  return profileData;
  
}