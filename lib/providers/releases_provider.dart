import 'package:flutter/cupertino.dart';
import 'package:spotify_app/models/releases_model.dart';
import 'package:spotify_app/service/releases_service.dart';

class ReleasesProvider extends ChangeNotifier{
  ReleasesModel? releasesData;
  bool isReleasesDataLoaded = false;

  GetReleasesData () async {
    releasesData = await getReleasesService();
    isReleasesDataLoaded = true;
    notifyListeners();
  }
}