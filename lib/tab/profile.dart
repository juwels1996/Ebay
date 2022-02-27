// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   User? user;
//   var image = [
//     "https://scontent.fdac20-1.fna.fbcdn.net/v/t1.6435-9/193098264_2852475841679367_600449060528220925_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGeAphxjRWEI57z8gLss0h73gT2jYWPm9HeBPaNhY-b0RVXx8k7a-9lLellZlTggOUb94tyCU16TvwPucIlWDLZ&_nc_ohc=CGKbsWG41CIAX_Zy5Zh&tn=cYAV4XIVJYMzUcek&_nc_ht=scontent.fdac20-1.fna&oh=00_AT_mjj9V0nF8qoq9ktX6mxOjwLd96w15d-DIAStUrhLBkw&oe=623DDC70",
//     "https://scontent.fdac20-1.fna.fbcdn.net/v/t1.6435-9/191522017_2849532751973676_6440938004626372635_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeFb1C0Y5waU0nfO7d7VckGSa9POMt6sXcNr084y3qxdw3wAMvuLhVnGV5Ver0tSrHQBLs5OuEznG-nvZZvsaRIW&_nc_ohc=aGAfHHw_VOsAX_eUX-T&_nc_oc=AQlnr8OoSVMsDcTh9JwT2rlwQ3D1yrXGypGv0L-2_ujcbg5Bm4rK91-lH3T4qHbaN70&_nc_ht=scontent.fdac20-1.fna&oh=00_AT-5IkhDq4I-RC6VaEwUd__eFU-Yk2D7w7hMklIv2_Y7_A&oe=623F952F",
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
//   void initState() {
//     // TODO: implement initState
//     user = auth.currentUser;
//     super.initState();
//   }
//
//   GoogleSignIn googleSignIn = GoogleSignIn();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//
//         body: Container(
//           width: double.infinity,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 CircleAvatar(
//                   radius: 80,
//                   backgroundImage: NetworkImage("${user!.photoURL}"),
//                 ),
//                 Text("Name: ${user!.displayName}"),
//                 Text("Email :${user!.email}"),
//                 Text("verified :${user!.emailVerified}"),
//                 Text("userid :${user!.uid}"),
//                 Text("${user!.phoneNumber}"),
//
//                 MaterialButton(
//                   color: Colors.green,
//                   onPressed: () async {
//                     final GoogleSignInAccount? googleUser =
//                     await googleSignIn.signOut();
//                   },
//                   child: Text(
//                     "Log out",
//                     style: TextStyle(fontSize: 32),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("my design"),
//                     Icon(Icons.add,color: Colors.white,),
//                   ],
//                 ),
//                 StaggeredGridView.countBuilder(
//                   crossAxisCount: 2,
//                   itemCount: image.length,
//                   itemBuilder: (BuildContext context, int index) =>
//                   new Container(child: Image.network("${image[index]}")),
//                   staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
//                   mainAxisSpacing: 4.0,
//                   crossAxisSpacing: 4.0,
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
