//import 'dart:html';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart';


void main() {
     return runApp(App());
}
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    //var Screensize =MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(

      backgroundColor: const Color(0xff271B0C),
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                  height: 243
              ),


              box1(
              ),
              box2(),
              box3(),
              box4(),
        ]




          ),
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container
                (
                height: 238,//height of app bar u may say
                //width: MediaQuery.of(context).size.width,
                color: Color(0xff271B0C).withOpacity(0.2),
                child: Padding
                  (
                  padding: EdgeInsets.fromLTRB(30, 50, 30, 15),
                  child: Column
                    (
                      children:
                      [
                      Row
                      (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                      //First Widget of Column
                      Text
                      (
                      "Tasty Menus",
                      style: TextStyle

                        (
                        fontSize: 30,
                        color: const Color(0xffE4BE93),
                      )
                  ),
                        Icon(Icons.shopping_cart,
                          color: const Color(0xffE4BE93),
                        ),
            ]
                  ),
                        searchbox()
            ]
            ),
          ),
    ),
            ),
          ),

      ],
    ),

          ),
    );

  }
}
//boxes

Widget box1(){
  return Padding(

    padding: EdgeInsets.fromLTRB(15, 30,15, 30),
    child:Container
      (
      decoration: BoxDecoration(
          color: Color(0xff633F22).withOpacity(0.3),
        borderRadius: BorderRadius.circular(10)
      ),
      height: 215,
      width: 310,


      child: Row(
          children: <Widget>[

            Expanded(
              child: Image.asset(
                "assets/hamburger.png"
              ),
            ),

            Column(
              children: [
                SizedBox(
                  height: 35,
                ),
               Text(
                 "Ham Burger",
                 style: TextStyle(
                   fontSize: 20,
                   color: Color(0xffE4BE93),
                   fontWeight: FontWeight.w400,


                 ),
               ),
                SizedBox(
                  height:8 ,
                //  width: 5,
                ),
                Text(
                  "A hamburger, or simply\n burger, is a food\n consisting of fillings—usually\n a patty of ground meat...",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffB28551).withOpacity(0.7),
                    fontWeight: FontWeight.w400,


                  ),),
                SizedBox(
                  height: 20,
                ),

                  Row(
                    children:[
                      SizedBox(
                        width: 2,
                      ),
                  Text(
                      "INR 260",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffE4BE93),
                      )
                  ),
                      SizedBox(
                        width:20,
                      ),
                      ClipOval(
                        child: Material(
                          color: Color(0xffE4BE93),// Button color
                        // Splash color
                            child: SizedBox(width: 35, height: 35, child: Icon(Icons.shopping_cart)),
                          ),
                        ),

                    ]

)
            ]
            ),
  ]
  )
  )
  );
}




Widget box2(){
  return Padding(

    padding: EdgeInsets.fromLTRB(30, 30,30, 30),
    child:Container
      (
      height: 155,
      width: 300,
      color: Color(0xff633F22).withOpacity(0.3),
      child: Column(
          children: <Widget>[
            //Ink.image(image: image)
            Text(
              "Italian Platter",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 22,
                color:Color(0xffE4BE93) ,
              ),
            ),
          ]
      ),

    ),
  );
}


Widget box3(){
  return Padding(

    padding: EdgeInsets.fromLTRB(30, 30,30, 30),
    child:Container
      (
      height: 155,
      width: 300,
      color: Color(0xff633F22).withOpacity(0.3),
      child: Column(
          children: <Widget>[
            //Ink.image(image: image)
            Text(
              "Supreme Burger",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 22,
                color:Color(0xffE4BE93) ,
              ),
            ),
          ]
      ),

    ),
  );
}


Widget box4(){
  return Padding(

    padding: EdgeInsets.fromLTRB(30, 30,30, 30),
    child:Container
      (
      height: 155,
      width: 300,
      color: Color(0xff633F22).withOpacity(0.3),
      child: Column(
          children: <Widget>[
            //Ink.image(image: image)
            Text(
              "Cheese Burger",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 22,
                color:Color(0xffE4BE93) ,
              ),
            ),
          ]
      ),

    ),
  );
}


//search
Widget searchbox(){
  return Padding(
    padding: EdgeInsets.fromLTRB(0,30,0,30),
    child: Container
      (
      width: 390,
      height: 35,
      decoration: BoxDecoration
        (
          color: const Color(0xffB28551).withOpacity(0.3),
          borderRadius: BorderRadius.circular(40)
      ),
    ),
  );
}
