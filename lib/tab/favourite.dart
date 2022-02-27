// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
// class Favourite extends StatefulWidget {
//   const Favourite({Key? key}) : super(key: key);
//
//   @override
//   _FavouriteState createState() => _FavouriteState();
// }
//
// class _FavouriteState extends State<Favourite> {
//   var image = [
//     "https://scontent.fdac20-1.fna.fbcdn.net/v/t1.6435-9/191522017_2849532751973676_6440938004626372635_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeFb1C0Y5waU0nfO7d7VckGSa9POMt6sXcNr084y3qxdw3wAMvuLhVnGV5Ver0tSrHQBLs5OuEznG-nvZZvsaRIW&_nc_ohc=aGAfHHw_VOsAX_eUX-T&_nc_oc=AQlnr8OoSVMsDcTh9JwT2rlwQ3D1yrXGypGv0L-2_ujcbg5Bm4rK91-lH3T4qHbaN70&_nc_ht=scontent.fdac20-1.fna&oh=00_AT-5IkhDq4I-RC6VaEwUd__eFU-Yk2D7w7hMklIv2_Y7_A&oe=623F952F",
//     "https://scontent.fdac20-1.fna.fbcdn.net/v/t1.6435-9/193098264_2852475841679367_600449060528220925_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGeAphxjRWEI57z8gLss0h73gT2jYWPm9HeBPaNhY-b0RVXx8k7a-9lLellZlTggOUb94tyCU16TvwPucIlWDLZ&_nc_ohc=CGKbsWG41CIAX_Zy5Zh&tn=cYAV4XIVJYMzUcek&_nc_ht=scontent.fdac20-1.fna&oh=00_AT_mjj9V0nF8qoq9ktX6mxOjwLd96w15d-DIAStUrhLBkw&oe=623DDC70",
//     "https://images.unsplash.com/photo-1639949691772-1d8c2fb3a09b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//     "https://images.unsplash.com/photo-1639999780234-1254d1b96fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//     "https://images.unsplash.com/photo-1639974394032-cf4e0e7731b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//     "https://images.unsplash.com/photo-1639922957725-0c6ffd44a078?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//     "https://images.unsplash.com/photo-1639949691772-1d8c2fb3a09b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//     "https://images.unsplash.com/photo-1639999780234-1254d1b96fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//     "https://images.unsplash.com/photo-1639974394032-cf4e0e7731b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//     "https://images.unsplash.com/photo-1639922957725-0c6ffd44a078?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//     "https://images.unsplash.com/photo-1639949691772-1d8c2fb3a09b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//     "https://images.unsplash.com/photo-1639999780234-1254d1b96fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: (AppBar(
//           centerTitle: true,
//           title: Text("Favourite"),
//         )),
//         body: Container(
//           width: double.infinity,
//           child: StaggeredGridView.countBuilder(
//             crossAxisCount: 2,
//             itemCount: image.length,
//             itemBuilder: (BuildContext context, int index) =>
//             new Container(child: Image.network("${image[index]}")),
//             staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
//             mainAxisSpacing: 4.0,
//             crossAxisSpacing: 4.0,
//             shrinkWrap: true,
//             //  physics: NeverScrollableScrollPhysics(),
//           ),
//         ));
//   }
// }
