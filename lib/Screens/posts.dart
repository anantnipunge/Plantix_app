// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plantix/constants.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => PostsState();
  
}

class PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kFoamColor,
      ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              foregroundImage: AssetImage('assets/user.jpeg', ),
            ),
            title: Text('User title'),
            subtitle: Text("user subtitle"),
            trailing: IconButton(
              icon: Icon(Icons.more_vert_outlined),
              onPressed: () => {},
            ),
          ),
          SizedBox(
            height: 250,
            width: 400,
            child: Image.asset('assets/post_image.jpg',fit: BoxFit.cover,),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: (){
                              var snackBar = SnackBar(
                                content: Text('You\'ve liked the post'), 
                                margin: EdgeInsets.all(20),
                                behavior:SnackBarBehavior.floating,);
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            }, 
                            icon: Icon(Icons.thumb_up_alt_outlined, size: 32, color: Colors.blue,)
                          ),
                          const Spacer(),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.transparent,
                            ),
                            child: const Text(
                              "SHARE",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onPressed: () {
                              var snackBar = SnackBar(
                                content: Text('Post has been shared'), 
                                margin: EdgeInsets.all(20),
                                behavior:SnackBarBehavior.floating,);
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            },
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.transparent,
                            ),
                            child: const Text(
                              "EXPLORE",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


  // void showToastMessage(String message){
  //   Fluttertoast.showToast(
  //     msg: message,
  //     toastLength: Toast.LENGTH_LONG,
  //     gravity: ToastGravity.CENTER,
  //     timeInSecForIosWeb: 1,
  //     //backgroundColor: Colors.red, //background Color for message
  //     textColor: Colors.white,
  //     fontSize: 16.0 
  //   );
  // }