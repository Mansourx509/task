import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatefulWidget {

  static const String id = 'ItemDetailsScreen';


  @override
  _ItemDetailsScreenState createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

       // ***************************************  //////header////*******************************************************
          Container(
            width: MediaQuery.of(context).size.width,
            // height: 500,
            height: MediaQuery.of(context).size.height*0.40,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),bottomRight: Radius.circular(150),),
              //   color: Colors.red,
              color: Colors.green,
            ),

            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50,left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text('TRESEMME'.toUpperCase(),style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    height:   MediaQuery.of(context).size.height*0.40*0.5,

                    //  width: 50,
                    // height: 50,
                    child: Image(
                        fit: BoxFit.fill, image: AssetImage('photos/1.png')),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2L',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Icon(Icons.question_answer,color: Colors.grey)

              ],),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('\$ 300',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                Icon(Icons.money_off,color: Colors.grey,)

              ],),
          ),
          Container(

            // height: MediaQuery.of(context).size.height*0.60,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Description',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text('is a hair care product, typically in the form of a viscous liquid, that is used for cleaning hair. Less commonly, shampoo is available in bar form, like a bar of soap. Shampoo is used by applying it to wet hair, massaging the product into the scalp, and then rinsing it out. Some users may follow a shampooing with the use of hair conditioner..'),
                  SizedBox(height: 20,),
                  Text('Manufacturing Details',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  Text(' is a hair care product, typically in the form of a viscous liquid, that is used for cleaning hair. Less commonly, shampoo is available in bar form, like a bar of soap. Shampoo is used by applying it to wet hair, massaging the product into the scalp,..    '),

                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}