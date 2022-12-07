import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final User = TextEditingController();
  String username = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.login),
          title: Text('Login'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.grey[800],
        body: Container(
          //top container or the container that caintain all
          //element of entain body
          padding: EdgeInsets.only(
            left: 30,
            top: 80,
            right: 30,
          ),
          child: Container(
            //continer that contain the username and password
            //for desinging use like box shadeow etc
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    //username and udername input bar
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: TextField(
                            onChanged: (user) => setState(() {
                              this.username = user;
                            }),
                            controller: User,
                            decoration: InputDecoration(
                              hintText: 'njnsdjv@email.com',
                              suffixIcon: User.text.isEmpty
                                  ? Container(
                                      width: 0,
                                    )
                                  : IconButton(
                                      icon: Icon(Icons.close),
                                      onPressed: () {
                                        User.clear();
                                      },
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Password and input password box sixe
                SizedBox(
                  height: 80,
                ),
                //
                //Password and input password
                Container(
                  child: Column(
                    //username and udername input bar
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          top: 80,
                        ),
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            //wht to do when button is chlicked
                          },
                          backgroundColor: Colors.blue,
                          icon: Icon(Icons.upload_sharp),
                          label: Text('Submit'),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            //wht to do when button is chlicked
                          },
                          backgroundColor: Colors.blue,
                          icon: Icon(Icons.fiber_new_rounded),
                          label: Text('new'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
