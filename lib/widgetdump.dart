// ListView.builder(
// itemCount: aniimedata.length,
// itemBuilder: (context,index){
//
// return animecont(
// iamgeurl: aniimedata[index].imageurl,
// desc: aniimedata[index].desc,
// title: aniimedata[index].title);
// }
// ),
//
//
//
// FutureBuilder(
// future: getanimedata(),
// builder: (context,snapshot){
// if(snapshot.hasData!=null){
// return ListView.builder(
// itemCount: aniimedata.length,
// itemBuilder: (context,index){
//
// return animecont(iamgeurl: aniimedata[index].imageurl ?? "",
// desc: aniimedata[index].desc ?? "",
// title: aniimedata[index].title??"");
// }
// );
// }
// return Container();
// }
// ),


// Stack(
// children: [
// ShaderMask(
// blendMode: BlendMode.dstOut,
// shaderCallback: (rect) {
// return LinearGradient(
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// colors: [Colors.black, Colors.transparent],
// ).createShader(Rect.fromLTRB(00, rect.height, rect.width, 00));
// },
// child: Container(
// padding: EdgeInsets.only(bottom: 20),
// margin: EdgeInsets.symmetric(vertical: 10),
// width: MediaQuery.of(context).size.width - 15,
// height: 325,
// decoration: BoxDecoration(
// border: Border.all(color: Colors.white, width: 0.9),
// color: Colors.black,
// borderRadius: BorderRadius.circular(20),
// image: DecorationImage(
// colorFilter:
// ColorFilter.mode(Colors.transparent, BlendMode.lighten),
// image: CachedNetworkImageProvider(
// iamgeurl,
// ),
// ),
// ),
// ),
// ),
// Positioned(
// top: 190,
// child: Text(
// title,
// style: TextStyle(
// overflow: TextOverflow.fade,
// color: Colors.white,
// fontSize: 20,
// fontWeight: FontWeight.w600),
// ),
// ),
// ],
// );