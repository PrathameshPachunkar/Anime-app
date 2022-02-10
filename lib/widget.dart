import 'package:anime_app/api_calls.dart';
import 'package:anime_app/dataclass.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class animecont extends StatelessWidget {
  String iamgeurl, desc, title;

  animecont({
    required this.iamgeurl,
    required this.desc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){print("widgettapped");},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: 350,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
               child: CachedNetworkImage(imageUrl: iamgeurl,),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(title,style: TextStyle(color: Colors.white),),
                    Text(desc,overflow: TextOverflow.fade,style: TextStyle(color: Colors.white),maxLines: 5,)

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
