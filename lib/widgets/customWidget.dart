
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/screens/itemDetailsScreen.dart';

class CustomWidget extends StatelessWidget {
  final String text;
  final Color fixedColor;
  final String image;
  CustomWidget(
      {@required this.text, @required this.fixedColor, @required this.image});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ItemDetailsScreen.id);
      },
      child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            // color: Colors.pink,
            color: fixedColor,
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                        child: Image(fit: BoxFit.fill, image: AssetImage(image))),
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.shopping_cart,color: Colors.white,size: 18,),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                          child: Icon(Icons.save,color: Colors.white,size: 18,))
                    ],
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20,left: 0),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text(text),

                        Text('2L'),
                       Text('\$250'),
                      ],
                    ),
                 ),
            ],
          ),
          //  color: Colors.pink,
        ),
    );

  }
}
