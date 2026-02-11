import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/storage/hive_service.dart';
import '../provider/tag_list_provider.dart';

class TagListScreen extends StatefulWidget {
  final String name;
  const TagListScreen({super.key, required this.name});

  @override
  State<TagListScreen> createState() => _TagListScreenState();
}
class _TagListScreenState extends State<TagListScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inFun();
  }

  inFun(){
    final pro=Provider.of<TagListProvider>(context,listen: false);
    pro.tagList();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Consumer<TagListProvider>(
        builder: (context, tagProvider, child) =>
         SafeArea(
          child:

          ListView.builder(
            itemCount:tagProvider.realList.length ,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var temp=tagProvider.realList[index];
            return   designSection(BuildContext: context,temp: temp );
          },)

        ),
      ),

    );
  }

  Widget designSection({required BuildContext, required DemoClass temp }){

    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(temp.profileImage.toString(),

                  ),
                ),

                SizedBox(width: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(temp.name??"",style: TextStyle(fontSize: 14,color: Colors.black,),),
                    Text(temp.city??"",style: TextStyle(fontSize: 12,color: Colors.blue,),),

                  ],),
              ],),


              Icon(Icons.assessment_outlined,color: Colors.black,)


            ],
          ),



          SizedBox(height: 20,),

          Text(temp.descrp??"",style: TextStyle(fontSize: 12,color: Colors.grey,),),

          SizedBox(height: 20,),
          Image.network(temp.Image.toString(),
            width: double.infinity,
            fit: BoxFit.fill,
            height: 200,
          ),


        ],
      ),
    );
  }

}

class DemoClass {

  String ? profileImage;
  String ? name;
  String ? city;
  String ? descrp;
  String ? Image;

  DemoClass({
    required this.profileImage,
    required this.name,
    required this.city,
    required this.descrp,
    required this.Image});


}
