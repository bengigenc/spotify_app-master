import 'package:flutter/material.dart';
import 'package:spotify_app/models/mode_model.dart';
import 'package:spotify_app/service/mode_service.dart';

class ModeListProvider extends ChangeNotifier {
  ModeListModel? modeData;
  bool isModeDataLoaded= false;

  GetModeData() async{
    modeData = await getModeService();
    isModeDataLoaded = true;
    notifyListeners();
  }
  
}





