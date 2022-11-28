import 'package:flutter/cupertino.dart';
import 'package:spotify_app/models/releases_model.dart';
import 'package:spotify_app/service/releases_service.dart';
import '../models/search_model.dart';
import '../service/search_service.dart';

class SearchProvider extends ChangeNotifier {
  SearchModel? searchData;
  bool isSearchDataLoaded = false;
  bool textCharacter=false;

  settextCharacter(bool deger){
textCharacter=deger;
notifyListeners();
  }

  getSearchData(String arama) async {
    searchData = await getSearchService(arama);
    isSearchDataLoaded = true;
    notifyListeners();
  }
}
