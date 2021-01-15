import 'package:flutter/material.dart';

class StickerListModel extends ChangeNotifier{

  List stickerList = new List();

  int get stickerListSize => stickerList.length;

  List get getStickerList => stickerList;

  void addSticker(dynamic data){
    this.stickerList.add(data);
    notifyListeners();
  }

}