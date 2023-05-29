import 'package:flutter/material.dart';
import 'package:web_app/mainpageclass.dart';

import 'ForgotPW.dart';

class LoginScreen extends StatefulWidget {
  websdetails i = websdetails();
  LoginScreen(this.i);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.only(right: 320),
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(widget.i.web_icon))),
          ),
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
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              'Login',
              style: TextStyle(
                decoration: (TextDecoration.none),
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.03,
                color: Colors.black,
                // height:
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 16),
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: (TextDecoration.none),
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    color: Colors.black,
                    // height:
                  ),
                ),
              ),
              string("Need an account?", Colors.black),
              string("Sign up", Colors.green),
            ],
          ),
          information(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 16),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: (TextDecoration.none),
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    color: Colors.black,
                    // height:
                  ),
                ),
              ),
              string(
                "Show",
                Colors.black,
              ),
            ],
          ),
          information(),
          button(
              image: '',
              button_name: 'Log in',
              Text_color: Colors.white,
              c: Colors.green),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Divider(
                  height: 80,
                  // endIndent: 10,
                  indent: 30,
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                flex: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.02,
                  child: Center(
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.013,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Divider(
                  height: 80,
                  endIndent: 15,
                  // indent: 20,
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          button(
              button_name: "Continue with Facebook",
              c: Colors.indigo,
              Text_color: Colors.white,
              image:
                  "https://www.freeiconspng.com/uploads/official-facebook-icon-png-4.png"),
          button(
              button_name: 'Continue with Google',
              c: Colors.transparent,
              Text_color: Colors.black,
              image:
                  'https://www.freeiconspng.com/uploads/official-facebook-icon-png-4.png'),
          button(
              button_name: 'Continue with GitHub',
              c: Colors.transparent,
              Text_color: Colors.black,
              image:
                  'https://www.freeiconspng.com/uploads/official-facebook-icon-png-4.png'),
          InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ForgotPW(widget.i)));
                });
              },
              child: string('Forgot password?', Colors.black))
        ]),
      ),
    ));
  }

  Widget string(String a, Color c) {
    return Container(
      margin: EdgeInsets.only(top: 33),
      child: Text(
        a,
        style: TextStyle(
          color: c,
          decoration: (TextDecoration.none),
          fontSize: MediaQuery.of(context).size.height * 0.015,
        ),
      ),
    );
  }

  Widget information() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.058,
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none)),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(5)),
    );
  }

  Widget button(
      {String button_name = "",
      Color? c,
      Color? Text_color,
      String image = ""}) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height * 0.058,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  button_name,
                  style:
                      TextStyle(color: Text_color, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: c,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
