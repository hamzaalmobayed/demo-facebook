import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(),
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              iconBar(),
              publish(),
              makeRoom(),
              storyBar(),
              postList(),





                ],
              ),
        )



      )
    );

  }
  Widget postList(){
    return Column(
      children: [
        post("images/good.png"),
        post(""),
        post("images/good.png"),
        post("images/good.png"),
        post(""),
        post(""),
        post("images/good.png"),
        post(""),
        post("images/good.png"),
        post("images/good.png"),
        post(""),
        post(""),
        post("images/good.png"),
        post(""),
        post("images/good.png"),
        post("images/good.png"),
        post(""),
        post(""),
        post("images/good.png"),
        post(""),
        post("images/good.png"),
        post("images/good.png"),
        post(""),
        post(""),
      ],
    );
  }
  Widget post(String im){
    return  Container(
      margin: EdgeInsets.only(top: 10),
      color: Color.fromRGBO(18, 255, 136,15) ,
      width: double.infinity,
      height: 750,
      child:Column(
        children: [
          postTitle(),
          postIcon(),
          postText(),
          postImage(im),
          postComment(),
          like(),
          postReply(),
          postWrite(),
        ],
      ) ,
    );
  }
  Widget postWrite(){
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/hhh.png"),
            radius: 30.0,
          ),
          SizedBox(width: 10,),
          Container(
            width: 250,
            height: 40,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(18, 255, 136,15),

              border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3,color: Colors.black)),

              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 2),
                  padding: EdgeInsets.only(top:9),
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "write comment.....",
                      hintStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
                      fillColor: Colors.black,
                    ),
                  ),
                ),

                Positioned(
                    left: 180,
                    bottom: 0,
                    top: 1,
                    child: FlatButton.icon(label:Text(""),icon: Icon(Icons.sentiment_satisfied),color:Color.fromRGBO(18, 255, 136,15))),
                Positioned(
                    left: 150,
                    bottom: 0,
                    top: 1,
                    child: FlatButton.icon(label:Text(""),icon: Icon(Icons.camera_alt),color:Color.fromRGBO(18, 255, 136,15)))

              ],
            ),
          ),

        ],
      ),
    );
  }
  Widget postReply(){
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          SizedBox(width: 10,),
          CircleAvatar(
            backgroundImage: AssetImage("images/hhh.png"),
            radius: 30.0,
          ),
          SizedBox(width: 10,),
          Column(
            children: [
              Container(
                width: 200,
                height: 60,


                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Container(margin: EdgeInsets.all(10),child: Text("Ahmed Ali\ngood night",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Color.fromRGBO(18, 255, 136,15) ),)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Like",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),),
                  SizedBox(width: 70,),
                  Text("Reply",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
  Widget postLCS(){
    Icon c=Icon(Icons.thumb_up);
    return Container(
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 2))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton.icon(onPressed: (){c=Icon(Icons.thumb_up,color: Colors.blue,);}, icon: c, label: Text("like")),
          FlatButton.icon(onPressed: (){}, icon: Icon(Icons.mode_comment), label: Text("comment")),
          FlatButton.icon(onPressed: (){}, icon: Icon(Icons.reply), label: Text("share")),

        ],
      ),
    );
  }
  Widget postComment(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(margin: EdgeInsets.only(left: 5),child: Text("3,500 comments",style: TextStyle(fontWeight: FontWeight.bold),)),
        FlatButton.icon(onPressed: (){}, icon: Row(children: [Icon(Icons.favorite,color: Colors.red,),Icon(Icons.thumb_up,color: Colors.blue,)],), label: Text("10,000 lIKES")),
      ],
    );
  }
  Widget postImage(String image){
    return Image.asset(image,width: double.infinity,height: 300,fit: BoxFit.cover,);
  }
  Widget postIcon(){
    return Container(
      margin: EdgeInsets.only(left: 80),
      child: Row(
        children: [
          Text("3h"),
          Icon(Icons.language)
        ],
      ),
    );
  }
  Widget postTitle(){
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(children: [
        CircleAvatar(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                border: Border.fromBorderSide(BorderSide(width: 5,color: Colors.blue,style: BorderStyle.solid))
            ),
          ),
          radius: 30,
          backgroundImage: AssetImage("images/hhh.png"),

        ),
        Container(
            margin: EdgeInsets.all(10),
            child: Text("Ahmed Ali",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black ,),)),
        Container(
            margin: EdgeInsets.only(top: 10,right: 10,bottom: 10,left: 130),
            child: Icon(Icons.more_horiz))
      ],),
    );
  }
  Widget storyBar(){
    return Container(

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,color: Colors.black)),
        color: Color.fromRGBO(18, 255, 136,15) ,
      ),
      width: double.infinity,
      height: 200,
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              addStory(),
              stories("images/hhh.png", "images/hhh.png", "your story"),
              stories("images/hhh.png", "images/hhh.png", "Ahmed Ali"),
              stories("images/hhh.png", "images/hhh.png", "Ahmed Ali"),
              stories("images/hhh.png", "images/hhh.png", "Ahmed Ali"),
              stories("images/hhh.png", "images/hhh.png", "Ahmed Ali"),
              stories("images/hhh.png", "images/hhh.png", "Ahmed Ali"),
              stories("images/hhh.png", "images/hhh.png", "Ahmed Ali"),
              stories("images/hhh.png", "images/hhh.png", "Ahmed Ali"),
              stories("images/hhh.png", "images/hhh.png", "Ahmed Ali"),
              stories("images/hhh.png", "images/hhh.png", "Ahmed Ali"),






            ],
          ),
        ),
      ),
    );
  }
  Widget stories(String m1,String m2,String name){
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black ,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),

        child: ClipRRect(

          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            width: 150,
            height: 180,
            child: Stack(
              children: [

                Image.asset(m1,width: 200,height: 180,fit: BoxFit.cover,),
                Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          border: Border.fromBorderSide(BorderSide(width: 5,color: Colors.blue,style: BorderStyle.solid))
                      ),
                    ),
                    radius: 30,
                    backgroundImage: AssetImage(m2),

                  ),),
                Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(name ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black ,),)),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget addStory(){
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black ,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),

        child: ClipRRect(

          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            width: 150,
            height: 180,
            child: Stack(
              children: [

                Image.asset("images/hhh.png",width: 200,height: 120,fit: BoxFit.cover,),
                Positioned(
                  bottom: 35,
                  left: 55,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(18, 255, 136,15) ,
                    child: Icon(Icons.add,size: 40,color: Colors.black,),
                  ),),
                Positioned(
                    bottom: 10,
                    left: 40,
                    child: Text("add story" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(18, 255, 136,15) ,),)),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget makeRoom(){
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,color: Colors.black)),
        color: Color.fromRGBO(18, 255, 136,15) ,
      ),
      width: double.infinity,
      height: 70,
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                    border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,color: Colors.black)),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.video_call), label: Text("make\n Room"))
            ),
            roomList(),




          ],
        ),
      ),
    );
  }
  Widget roomList(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),
        SizedBox(width: 20,),
        room("images/hhh.png"),





        ],
    );
  }
  Widget room(String image){
    return CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: 25,
    );

  }
  Widget publish(){
    return  Container(

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,color: Colors.black)),
        color: Color.fromRGBO(18, 255, 136,15) ,
      ),
      width: double.infinity,
      height: 120,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Container(
               margin: EdgeInsets.only(left: 30),
               child: CircleAvatar(
                 backgroundImage: AssetImage("images/hhh.png"),
                 radius: 25,
               ),
             ),

              Container(
                width: 250,
                height: 40,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(

                  border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3,color: Colors.black)),

                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20,top: 2),
                  padding: EdgeInsets.only(top:9),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "What d you think?",
                      hintStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      fillColor: Colors.black,
                    ),
                  ),
                ),
              ),


            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(onPressed: (){}, icon: Icon(Icons.videocam), label: Text("live")),
              FlatButton.icon(onPressed: (){}, icon: Icon(Icons.photo_library), label: Text("photo")),
              FlatButton.icon(onPressed: (){}, icon: Icon(Icons.video_call), label: Text("Room")),
            ],
          ),
        ],
      ) ,


    );
  }
  Widget iconBar(){
  return  Container(

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,color: Colors.black)),
        color: Color.fromRGBO(18, 255, 136,15) ,
      ),
      width: double.infinity,
      height: 50,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home,color: Colors.black,size: 30,),
          Icon(Icons.supervised_user_circle,color: Colors.black,size: 30,),
          Icon(Icons.ondemand_video,color: Colors.black,size: 30,),
          Icon(Icons.account_circle,color: Colors.black,size: 30,),
          Icon(Icons.notifications,color: Colors.black,size: 30,),
        ],
      ) ,
    );
  }
  AppBar appBar(){
    return AppBar(
      title: Container(
          alignment: Alignment.center,
          child: Container(margin: EdgeInsets.only(top:20),child: Text("facebook",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),))
      ),
      backgroundColor: Color.fromRGBO(18, 255, 136,15),
      elevation: 6,
      leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: Icon(Icons.menu,color: Colors.black,size: 30,)
      ),
      actions: [
        Icon(Icons.search,color: Colors.black,size: 30,),
        SizedBox(width: 10,),
      ],

    );
  }
  Widget postText() {
    return Container(
        margin: EdgeInsets.only(top: 30,bottom: 10),
        child: Text("Good Night My Friends" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black ,),));
  }

}
class like extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return likeState();
  }

}
class likeState extends State<like>{
  Icon c=Icon(Icons.thumb_up);
  void onClick(){

    setState(() {

      c=Icon(Icons.thumb_up,color: Colors.blue,);
      return c;
    });
  }
  @override
  Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 2))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton.icon(onPressed: (){onClick();}, icon: c, label: Text("like")),
            FlatButton.icon(onPressed: (){}, icon: Icon(Icons.mode_comment), label: Text("comment")),
            FlatButton.icon(onPressed: (){}, icon: Icon(Icons.reply), label: Text("share")),

          ],
        ),
      );

  }

}