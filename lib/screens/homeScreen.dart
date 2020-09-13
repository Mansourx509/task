//import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:mobile_sidebar/mobile_sidebar.dart';
import 'package:task/sharedUI/navDrawler.dart';

import 'itemScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'HomeScreen';
  //String title ,imageURL;
  //HomeScreen(this.title,this.imageURL);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //int _bottomBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade200,
        //currentIndex: _bottomBarIndex,
        unselectedItemColor: Colors.grey.shade400,
        onTap: null,
        fixedColor: Colors.grey.shade600,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('more'), icon: Icon(Icons.more)),
          BottomNavigationBarItem(title: Text('saved'), icon: Icon(Icons.save)),
          BottomNavigationBarItem(
              title: Text('profile'), icon: Icon(Icons.person)),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(
          'Company',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey.shade200,
        iconTheme: new IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: null),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Discover',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                    width: MediaQuery.of(context).size.width * .16,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                        padding:
                            const EdgeInsetsDirectional.only(start: 2, end: 2),
                        child: Text(
                          'See all',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(18),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ItemScreen('Shampoo', 'photos/1.png');
                          }));
                        },
                        child: Hero(
                          tag: 'shampoo',
                          child: CircleAvatar(
                            backgroundImage: AssetImage('photos/1.png'),
                            maxRadius: 33.5,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Shampoo',
                            style: TextStyle(fontSize: 16),
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ItemScreen('Oil', 'photos/oil.jpg');
                          }));
                        },
                        child: Hero(
                          tag: 'oil',
                          child: CircleAvatar(
                            backgroundImage: AssetImage('photos/oil.jpg'),
                            maxRadius: 33.5,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Oil',
                            style: TextStyle(fontSize: 16),
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ItemScreen('Biscuits', 'photos/b1.png');
                          }));
                        },
                        child: Hero(
                          tag: 'biscuits',
                          child: CircleAvatar(
                            backgroundImage: AssetImage('photos/b1.png'),
                            maxRadius: 33.5,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Biscuits',
                            style: TextStyle(fontSize: 16),
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ItemScreen('Spices', 'photos/spices.jpg');
                          }));
                        },
                        child: Hero(
                          tag: 'spices',
                          child: CircleAvatar(
                            backgroundImage: AssetImage('photos/spices.jpg'),
                            maxRadius: 33.5,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Spices',
                            style: TextStyle(fontSize: 16),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width * .85,
            child: Image(image: AssetImage('photos/tide2.jpg')),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Your Previous orders',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                    width: MediaQuery.of(context).size.width * .16,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 2, end: 2),
                      child: Text(
                        'See all',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(height: 15),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width * .4,
                  child: Column(
                    children: <Widget>[
                      Image.asset('photos/tata.jpg'),
                      Positioned(
                        bottom: 0,
                        child: Opacity(
                            opacity: .6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '\$ 30',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('Tata sait lite'),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .16,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade700,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 2, end: 2),
                                          child: Text(
                                            'Add'.toUpperCase(),
                                            textAlign: TextAlign.start,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                      //Text('Tata sait lite'),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 15),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width * .4,
                  child: Column(
                    children: <Widget>[
                      Image.asset('photos/tata2.jpg'),
                      Positioned(
                        bottom: 0,
                        child: Opacity(
                            opacity: .6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '\$ 30',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('Tata sait lite'),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .16,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade700,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 2, end: 2),
                                          child: Text(
                                            'Add'.toUpperCase(),
                                            textAlign: TextAlign.start,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                      //Text('Tata sait lite'),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * .9,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .44,
                      child: Image.asset('photos/offer.jpg'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .44,
                      child: Image.asset('photos/elvive2.jpg'),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
