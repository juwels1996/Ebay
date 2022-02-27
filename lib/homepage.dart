import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/color/brandColors.dart';
import 'package:untitled1/list.dart';
import 'package:untitled1/login/login.dart';
import 'package:untitled1/provider/profile_provider.dart';
import 'package:untitled1/screen/firebase_screen.dart';
import 'package:untitled1/screen/sign_in_screen.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _searchVisible = true;

  @override
  Widget build(BuildContext context) {
    ProfileProvider profileProvider = Provider.of<ProfileProvider>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        drawer: Drawer(
          backgroundColor: Color(0xff1e1e1e),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // UserAccountsDrawerHeader(accountName: Text("juwel sheikh"), accountEmail: Text("juwelseu@gmail.com"),
              // currentAccountPicture: CircleAvatar(
              //   backgroundColor: Colors.orange,
              //   child: Text("A",
              //     style: TextStyle(fontSize: 40),
              //   ),
              // ),
              // ),
              profileProvider.isAuthenticated
                  ? Container()
                  : ListTile(
                      leading: Icon(
                        Icons.people,
                        color: Colors.white60,
                      ),
                      title: Text(
                        "Signin",
                        style: TextStyle(fontSize: 23, color: Colors.white60),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignInScreen()));
                      },
                    ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white60,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.notification_add,
                  color: Colors.white60,
                ),
                title: Text(
                  "Notification",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.white60,
                ),
                title: Text(
                  "Message",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                thickness: 4,
              ),
              ListTile(
                leading: Icon(
                  Icons.watch_later,
                  color: Colors.white60,
                ),
                title: Text(
                  "Watching",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.saved_search,
                  color: Colors.white60,
                ),
                title: Text(
                  "Saved",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.build,
                  color: Colors.white60,
                ),
                title: Text(
                  "Buy again",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.security_rounded,
                  color: Colors.white60,
                ),
                title: Text(
                  "Purchase",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.local_offer,
                  color: Colors.white60,
                ),
                title: Text(
                  "Bids & offer",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.sell,
                  color: Colors.white60,
                ),
                title: Text(
                  "Selling",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.category,
                  color: Colors.white60,
                ),
                title: Text(
                  "Categories",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.production_quantity_limits_rounded,
                  color: Colors.white60,
                ),
                title: Text(
                  "Deals",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white60,
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.white60,
                ),
                title: Text(
                  "Help",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              if (profileProvider.isAuthenticated)
                ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.white60,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 16, color: Colors.white60),
                  ),
                  onTap: () {
                    profileProvider.signOut();
                  },
                ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.grey),
          backgroundColor: Colors.black,
          title: Container(
            width: 62,
            height: 25,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/ebay.png'),
                    fit: BoxFit.fitHeight)),
          ),
          actions: <Widget>[
            _searchVisible ? Container() : Icon(Icons.search),
            SizedBox(width: 3),
            Icon(Icons.shopping_cart)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 80,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 5, right: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 120,
                        height: 40,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.grey[300]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              labels[index]['icon'],
                              color: Colors.blue[800],
                            ),
                            Text(labels[index]['text'],
                                style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                color: Colors.indigo[900],
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "signin so we can personalize your experience",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text("Register !",
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                    SizedBox(height: 25),
                    ListTile(
                      leading: Icon(
                        Icons.forward,
                        color: Colors.white60,
                      ),
                      title: Text(
                        "user details",
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Stack(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Row(
                          children: <Widget>[
                            Text('Deals',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Icon(
                              Icons.arrow_forward,
                              size: 20,
                            )
                          ],
                        )),
                    ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(right: 12, left: 12, top: 40),
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  width: 155,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            products[index]['image'])),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  width: 155,
                                  child: Text(products[index]['text'],
                                      style: TextStyle(fontSize: 13)),
                                ),
                                SizedBox(height: 5),
                                Text(products[index]['prix'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 3),
                                Container(
                                  width: 155,
                                  child: Text.rich(products[index]['réduction'],
                                      style: TextStyle(fontSize: 12)),
                                )
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
              Container(
                height: 350,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      color: Colors.greenAccent[400],
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Trending product',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward,
                                  color: Colors.black, size: 20)
                            ],
                          ),
                          SizedBox(height: 8),
                          Text('Enjoy 5€ on a selection',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12))
                        ],
                      ),
                    ),
                    ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 70, left: 12),
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  width: 155,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            products[index]['image'])),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  width: 155,
                                  child: Text(products[index]['text'],
                                      style: TextStyle(fontSize: 13)),
                                ),
                                SizedBox(height: 5),
                                Text(products[index]['prix'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 3),
                                Container(
                                  width: 155,
                                  child: Text.rich(products[index]['réduction'],
                                      style: TextStyle(fontSize: 12)),
                                )
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
              Container(
                color: Colors.yellow[800],
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Still open on eBay',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    SizedBox(height: 5),
                    Text(
                      'Buy, sell, join us !',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: <Widget>[
                        Text('Learn more',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                        Icon(Icons.arrow_forward, color: Colors.black, size: 20)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ebay_banner.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 422,
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Explore popular categories',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                    GridView.builder(
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, childAspectRatio: 0.73),
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 12),
                        primary: false,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.transparent,
                            elevation: 0.0,
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 55,
                                  backgroundColor: grid[index]['color'],
                                  child: Center(
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  grid[index]['image']),
                                              fit: BoxFit.fill)),
                                    ),
                                  ),
                                ),
                                Text(grid[index]['text'],
                                    textAlign: TextAlign.center)
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
              Container(
                height: 350,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 230,
                      color: Colors.blue[900],
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Get off to a flying start',
                              style: TextStyle(
                                  color: Colors.amber[300],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(height: 12),
                          Text(
                              '-15%* on a selection of products with the code Ebay100',
                              style: TextStyle(
                                  color: Colors.amber[300], fontSize: 14)),
                          SizedBox(height: 12),
                          Row(
                            children: <Widget>[
                              Text(
                                'Free delivery',
                                style: TextStyle(
                                    color: Colors.amber[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward,
                                  color: Colors.amber[300], size: 20)
                            ],
                          ),
                          SizedBox(height: 22),
                          Text(
                            "*Offer valid until 12/03. See conditions ",
                            style: TextStyle(
                                color: Colors.amber[300], fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                        itemCount: 4,
                        padding: EdgeInsets.only(top: 170, left: 12),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 7),
                                  width: 270,
                                  height: 140,
                                  padding: EdgeInsets.all(14),
                                  color: Colors.lightBlueAccent,
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: <Widget>[
                                      Container(
                                        width: 140,
                                        height: 90,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/produits/batterie.png'),
                                                fit: BoxFit.fill)),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                                width: 80,
                                                child: Text('Detached pieces',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Icon(Icons.arrow_forward, size: 20)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
              Container(
                height: 300,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/spook-logoG.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Spook',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Text('Annonce')
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ads.jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.bottomCenter)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
