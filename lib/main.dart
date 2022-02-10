import 'package:anime_app/api_calls.dart';
import 'package:anime_app/dataclass.dart';
import 'package:anime_app/widget.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  List<animedata> aniimedata=[];


bool loading = false;


  @override
     void getanimedata()async{
    apidata dta = apidata();
    await dta.getinfo();
    //print(aniimedata);
   aniimedata = dta.anidata;

  //print(aniimedata);

  }
  void initState() {
    loading = true;
    // TODO: implement initState
    super.initState();
     getanimedata();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Scaffold(

        backgroundColor: Colors.black,
        body: loading?Container(
          child: ListView.builder(
              itemCount: aniimedata.length,
              itemBuilder: (context,index){

                return animecont(
                    iamgeurl: aniimedata[index].imageurl  ,
                    desc: aniimedata[index].desc,
                    title: aniimedata[index].title);
              }
          ),

        ):Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
