import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  var image = [
    "https://images.unsplash.com/photo-1639974394032-cf4e0e7731b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639922957725-0c6ffd44a078?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639949691772-1d8c2fb3a09b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639999780234-1254d1b96fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639974394032-cf4e0e7731b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639922957725-0c6ffd44a078?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639949691772-1d8c2fb3a09b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639999780234-1254d1b96fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639974394032-cf4e0e7731b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639922957725-0c6ffd44a078?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639949691772-1d8c2fb3a09b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1639999780234-1254d1b96fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
  ];
  @override
  void initState() {
    // TODO: implement initState
    user = auth.currentUser;
    super.initState();
  }

  GoogleSignIn googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage("${user!.photoURL}"),
                ),
                Text("${user!.displayName}"),
                MaterialButton(
                  color: Colors.green,
                  onPressed: () async {
                    final GoogleSignInAccount? googleUser =
                    await googleSignIn.signOut();
                  },
                  child: Text(
                    "Log out",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Add wallpaper"),
                    Icon(Icons.add),
                  ],
                ),
                StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: image.length,
                  itemBuilder: (BuildContext context, int index) =>
                  new Container(child: Image.network("${image[index]}")),
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
