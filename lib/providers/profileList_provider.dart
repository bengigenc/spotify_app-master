import 'package:flutter/cupertino.dart';
import 'package:spotify_app/models/profile_model.dart';
import 'package:spotify_app/service/profile_service.dart';

import '../models/profileList_model.dart';
import '../service/profileList_service.dart';

class ProfileListProvider extends ChangeNotifier {
  ProfileListModel? profileListData;
  bool isProfileListDataLoaded = false;



  GetProfilListData() async {
    profileListData = await getProfileListService();
    isProfileListDataLoaded = true;
    notifyListeners();
  }
}
