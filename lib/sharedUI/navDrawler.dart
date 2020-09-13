import 'package:flutter/material.dart';
import 'package:task/unImplementedUI/aboutUs.dart';
import 'package:task/unImplementedUI/myOrder.dart';
import 'package:task/unImplementedUI/myWallet.dart';
import 'package:task/unImplementedUI/offers.dart';
import 'package:task/unImplementedUI/refer.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: 235,
        child: Drawer(
          child: new ListView(
            children: <Widget>[
              ListTile(
                title: new Text("Company",style: TextStyle(fontSize: 25),),
                trailing: new Icon(Icons.cancel),
                onTap: () => Navigator.pop(context),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                title: new Text("+919876543210",style: TextStyle(fontSize: 19),),
                leading: new Icon(Icons.phone),
                onTap: () => Navigator.pop(context),
              ),
              Padding(
                padding: const EdgeInsets.only(right:15 ,left: 15),
                child: Divider(

                  height: 10,
                  color: Colors.white,
                ),
              ),
              new ListTile(
                  title: new Text("My Wallet"),
                  leading: new Icon(Icons.account_balance_wallet),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, MyWallet.id);
                  }
              ),
              new ListTile(
                  title: new Text("My Orders"),
                  leading: new Icon(Icons.business),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, MyOrders.id);
                  }
              ),
              new ListTile(
                  title: new Text("Offers"),
                  leading: new Icon(Icons.attach_money),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, Offers.id);
                  }
              ),
              new ListTile(
                  title: new Text("Refer"),
                  leading: new Icon(Icons.flag),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, Refer.id);
                  }
              ),
              ListTile(
                title: new Text("LogOut"),
                leading: new Icon(Icons.exit_to_app),
                onTap: null,
              ),
              new ListTile(
                  title: new Text("About Us"),
                  leading: new Icon(Icons.contact_mail),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, AboutUs.id);
                  }
              ),
              ListTile(
                title: new Text("Rate Us"),
                leading: new Icon(Icons.star),
                onTap: null,
              ),
              ListTile(
                title: new Text("Share"),
                leading: new Icon(Icons.share),
                onTap: null,
              ),
              Padding(
                padding: const EdgeInsets.only(right:15 ,left: 15),
                child: Divider(

                  height: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
