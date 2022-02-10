import 'package:http/http.dart'as http;
import 'dart:convert';

import 'dataclass.dart';
 String url='https://api.aniapi.com/v1/anime?page=2';


 class apidata {
   List<animedata> anidata =[];

   Future getinfo()async{

     var animeinfo = await http.get(Uri.parse(url),);
     var animedecode = json.decode(animeinfo.body);
     //print(animeinfodecode);
     //var documents = animedecode["data"]["documents"] [index];
     if(animedecode["status_code"] == 200){
       animedecode["data"]["documents"].forEach((element)async{
         animedata data =  animedata(
             imageurl: element["cover_image"]??"",
             title: element["titles"]["en"]??"",
             desc: element["descriptions"]["en"]??"",
             malid: element["mal_id"]??"",
             anidi: element["anilist_id"]??"");
         anidata.add(data);
         return data;
       }


       );
     }
    // print(anidata.length);

   }

 }
