import 'package:bloc_photos/Model/PhotoData.dart';

import 'dart:convert';

import 'package:bloc_photos/Service/Service.dart';
class PhotoRepository{
  Future<List<PhotoClass>>getPhotosData()async{
    final response = await HttpService.getRequest();
    if(response.statusCode == 200){
      List<PhotoClass> wordResponseData = [];
      var TempList = jsonDecode(response.body);
      TempList.forEach((element) {
        wordResponseData.add(PhotoClass.fromJson(element));
      });
      return wordResponseData;
    }
    else{

      return [];
    }

  }
}