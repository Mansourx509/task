import 'package:flutter/material.dart';
import 'package:task/widgets/customWidget.dart';

class ItemScreen extends StatefulWidget {



  static const String id = 'ItemScreen';

  String title, imageURL;
  ItemScreen(this.title, this.imageURL);

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  //String imageOne,imageTwo,imageThree,imageFour,imageFive,imageSix,imageSeven,imageEight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade200,
      // backgroundColor:Colors.grey,
      body: Column(
        children: <Widget>[


            Padding(
              padding: EdgeInsets.only(top: 50,left: 25,),
              //**********************************************************************
              //top
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //  mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50), bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50),topLeft: Radius.circular(50)),
                        //   color: Colors.red,
                        color: Colors.white,
                      ),

                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(


                            width: 50,
                            height: 50,
                            child: Image(
                                fit: BoxFit.fill, image: AssetImage(widget.imageURL)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 12),



                              child: Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, fontFamily: 'Pacifico'),)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ////*******************************************************************
            ),

          Grid(context),

        ],
      ),
    );
  }

  Widget Grid(BuildContext context){
    return  Expanded(
      child: GridView.count(

        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        //
        children: <Widget>[
          CustomWidget(
            text:'Dove' ,
            fixedColor: Colors.pink,
            image: 'photos/1.png',
          ),
          CustomWidget(
            text:'PANTEN' ,
            fixedColor: Colors.green,
            image:'photos/1.png',
          ),
         /* CustomWidget(
            text:'Heed not the rabble' ,
            fixedColor: Colors.amber,
            image: 'photos/3.jpg',
          ),*/
          CustomWidget(
            text:'Heed not the rabble' ,
           fixedColor: Colors.purple,
            image: 'photos/1.png',
          ),
          CustomWidget(
            text:'Heed not the rabble' ,
            fixedColor: Colors.blue,
            image: 'photos/4.png',
          ),
          CustomWidget(
            text:'Heed not the rabble' ,
            fixedColor: Colors.red,
            image: 'photos/7.png',
          ),
          CustomWidget(
            text:'Heed not the rabble' ,
            fixedColor: Colors.blueGrey,
            image: 'photos/6.png',
          ),
          CustomWidget(
            text:'Heed not the rabble' ,
            fixedColor: Colors.grey,
            image: 'photos/1.png',
          ),
          CustomWidget(
            text:'Heed not the rabble' ,
            fixedColor: Colors.blue,
            image: 'photos/4.png',
          ),


        ],
      ),
    );
  }
}
/*
String func(int val) {
    if (widget.title == 'shampoo') {
      _list[0] = 'images/shampoo/one.jpg';
      _list[1] = 'images/shampoo/two.jpg';
      _list[2] = 'images/shampoo/three.jpg';
      _list[3] = 'images/shampoo/four.jpg';
      _list[4] = 'images/shampoo/five.jpg';
      _list[5] = 'images/shampoo/six.png';
      _list[6] = 'images/shampoo/seven.png';
      _list[7] = 'images/shampoo/eight.jpg';
      for(int i=0 ; i<= _list.length ; i++){
        if(val == i){
          return _list[i];
        }
      }
    } else {
      Navigator.pop(context);
    }
  }




*/
