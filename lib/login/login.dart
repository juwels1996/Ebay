import 'package:flutter/material.dart';
import 'package:untitled1/homepage.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Sign in",style: TextStyle(fontSize: 20,color: Colors.white60),

        
        ),
        leading: Icon(Icons.cancel_sharp,size:25,),

      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Hello",style: TextStyle(fontSize: 30,color: Colors.white),),
              SizedBox(height: 10,),
              Text("You can use your email or username or direct signin with google",style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage()));
              },
                  child: const Text('Signin')),



        ]




        ),
      ),
    );
  }
}
