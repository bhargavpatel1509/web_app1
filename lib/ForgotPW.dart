import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mainpageclass.dart';

class ForgotPW extends StatefulWidget {
  websdetails i = websdetails();
  ForgotPW(this.i);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ForgotPWState();
  }
}

class _ForgotPWState extends State<ForgotPW> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Column(
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
                  Row(
                    children: [
                      information(
                          detail: 'Enter Email ID/Phone Number',
                          icon_name: Icon(Icons.person_outline_outlined)),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Center(
                            child: Text(
                          'Get OTP',
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                    indent: MediaQuery.of(context).size.width * 0.06,
                    endIndent: MediaQuery.of(context).size.width * 0.06,
                    thickness: 1,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
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
                    ),
                  )
                ],
              ),
              //   decoration:
              //       BoxDecoration(border: Border.all(color: Colors.black)),
            ),
          ),
        ],
      ),
    ));
  }

  Widget information({String detail = '', Icon? icon_name, Icon? second_icon}) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 20),
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width * 0.6,
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
