import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ForgotPW.dart';
import 'mainpageclass.dart';

class Tutorialslogin extends StatefulWidget {
  websdetails i = websdetails();
  Tutorialslogin(this.i);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TutorialsloginState();
  }
}

class _TutorialsloginState extends State<Tutorialslogin> {
  bool? val = false;
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.width * 1,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          child: Icon(
                            Icons.close,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.08,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://yt3.googleusercontent.com/Kecf40C3ojj8ZlvZIw_Z2EPXZHvHYsejlCo9bYfBXGcAEGU_Eio0ukMtCvjyHRr56do77dA4AA=s900-c-k-c0x00ffffff-no-rj'))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, bottom: 10),
                        child: Text(
                          'tutorials',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'point',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03),
                        ),
                      ),
                    ],
                  ),
                  information(
                      detail: 'Enter Email ID/Phone Number',
                      icon_name: Icon(Icons.person_outline_outlined)),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                    indent: MediaQuery.of(context).size.width * 0.06,
                    endIndent: MediaQuery.of(context).size.width * 0.06,
                    thickness: 1,
                  ),
                  information(
                      detail: 'Enter Password',
                      icon_name: Icon(Icons.key),
                      second_icon: Icon(CupertinoIcons.eye_slash)),
                  Divider(
                    // height: 2,
                    color: Colors.grey,
                    indent: MediaQuery.of(context).size.width * 0.06,
                    endIndent: MediaQuery.of(context).size.width * 0.06,
                    thickness: 1,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 5),
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Checkbox(
                                value: ischeck,
                                onChanged: (val) {
                                  setState(() {
                                    ischeck = val!;
                                  });
                                }),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.015),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 80),
                              child: Icon(
                                Icons.person_add,
                                size: MediaQuery.of(context).size.height * 0.02,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ForgotPW(widget.i)));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.82,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 5,
                          ),
                          child: Icon(
                            Icons.login,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Center(
                                child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ))),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 5,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.login,
                              color: Colors.black,
                              size: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Center(
                                    child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ))),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
            ),
          ),
        ],
      ),
    ));
  }

  Widget information({String detail = '', Icon? icon_name, Icon? second_icon}) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
          decoration: InputDecoration(
              icon: icon_name,
              hintText: detail,
              suffixIcon: second_icon,
              border: OutlineInputBorder(borderSide: BorderSide.none),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none)),
    );
  }
}
