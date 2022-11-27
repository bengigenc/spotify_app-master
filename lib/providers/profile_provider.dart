import 'package:flutter/cupertino.dart';
import 'package:spotify_app/models/profile_model.dart';
import 'package:spotify_app/service/profile_service.dart';

class ProfileProvider extends ChangeNotifier {
  ProfileModel? profileData;
  bool isProfileDataLoaded = false;

  GetProfilData() async {
    profileData = await getProfileService();
    isProfileDataLoaded = true;
    notifyListeners();
  }
}
