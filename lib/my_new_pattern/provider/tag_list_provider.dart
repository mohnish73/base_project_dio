import 'package:flutter/cupertino.dart';

import '../repo/TagListRepo.dart';
import '../ui/TagListScreen.dart';

class TagListProvider extends ChangeNotifier{


  final _api = TagListRepo();
  DemoClass ? demoClass;

  List<DemoClass> itemList=[

    DemoClass(profileImage:"https://picsum.photos/200/300" ,
        name: "Rohan",
        city: "India",
        descrp: "akhfbidf ihfbu wfe",
        Image: "https://picsum.photos/200/300"
    ),

    DemoClass(profileImage:"https://picsum.photos/200/300" ,
        name: "Vikas",
        city: "America",
        descrp: "akhfbidf ihfbu wfe",
        Image: "https://picsum.photos/200/300"
    ),

    DemoClass(profileImage:"https://picsum.photos/200/300" ,
        name: "Mohnish kumar",
        city: "America",
        descrp: "akhfbidf ihfbu wfe",
        Image: "https://picsum.photos/200/300"
    ),


  ];


  List<DemoClass> realList=[];

   Future<void> tagList() async {


    var data= {
      "userName": "bittu13",
      "password": "7890",

    };
    // var result= await _api.tagListAPi(data: data);
    // if(result['response']==200){
    //
      realList=itemList;
      notifyListeners();

      print("real List---->> ${realList}");

    // }else{
    //
    // }

  }





}