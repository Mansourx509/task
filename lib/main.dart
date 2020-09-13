import 'package:flutter/material.dart';
import 'package:task/screens/homeScreen.dart';
import 'package:task/screens/itemDetailsScreen.dart';
import 'package:task/unImplementedUI/aboutUs.dart';
import 'package:task/unImplementedUI/myOrder.dart';
import 'package:task/unImplementedUI/myWallet.dart';
import 'package:task/unImplementedUI/offers.dart';
import 'package:task/unImplementedUI/refer.dart';
//import 'file:///F:/flutter%20project/first_run/lib/screens/homeScreen.dart';
//import 'file:///F:/flutter%20project/task/lib/screens/itemDetailsScreen.dart';
//import 'file:///F:/flutter%20project/task/lib/screens/itemScreen.dart';
//import 'package:task/unImplementedUI/aboutUs.dart';
//import 'package:task/unImplementedUI/myOrder.dart';
//import 'package:task/unImplementedUI/myWallet.dart';
//import 'package:task/unImplementedUI/offers.dart';
//import 'package:task/unImplementedUI/refer.dart';

void main(List<String> args) {
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        canvasColor: Colors.grey.shade600
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context)=>HomeScreen(),
        //ItemScreen.id:(context)=>ItemScreen(),
        ItemDetailsScreen.id:(context)=>ItemDetailsScreen(),
        AboutUs.id:(context)=>AboutUs(),
        MyOrders.id:(context)=>MyOrders(),
        MyWallet.id:(context)=>MyWallet(),
        Offers.id:(context)=>Offers(),
        Refer.id:(context)=>Refer(),
      },
    );
  }
}