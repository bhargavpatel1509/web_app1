import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/mainpageclass.dart';

import 'Tutorials_login.dart';

class tutorials extends StatefulWidget {
  websdetails i = websdetails();
  tutorials(this.i);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _tutorialsState();
  }
}

class _tutorialsState extends State<tutorials> {
  List<bigcon> slider1 = [];
  @override
  void initState() {
    bigcon priemium = bigcon(
        color: Colors.amber,
        icon: Icons.laptop,
        container_name: '5000+',
        container_detail: 'Premium Courses');
    bigcon Expert = bigcon(
        color: Colors.indigoAccent,
        icon: Icons.person_outline,
        container_name: '1200+',
        container_detail: 'Expert Tutors');
    bigcon Online = bigcon(
        color: Colors.teal,
        icon: Icons.person_add_outlined,
        container_name: '30M+',
        container_detail: 'Online Students');
    bigcon Certificates = bigcon(
        color: Colors.blue,
        icon: Icons.brightness_5_outlined,
        container_name: '1.2M+',
        container_detail: 'Certificates Delivered');
    slider1.add(priemium);
    slider1.add(Expert);
    slider1.add(Online);
    slider1.add(Certificates);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(color: Colors.grey),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.black45,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 5),
                          child: Center(child: Text('Home'))),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.code_off_rounded,
                        color: Colors.black45,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 5),
                          child: Center(child: Text('Coding Ground'))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.08,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://yt3.googleusercontent.com/Kecf40C3ojj8ZlvZIw_Z2EPXZHvHYsejlCo9bYfBXGcAEGU_Eio0ukMtCvjyHRr56do77dA4AA=s900-c-k-c0x00ffffff-no-rj'))),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 5),
                child: Text(
                  'tutorials',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.03),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'point',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * 0.03),
                ),
              ),
              Container(
                // alignment: Alignment.,
                margin: EdgeInsets.only(top: 10, left: 130),
                child: Icon(
                  Icons.menu,
                  size: MediaQuery.of(context).size.height * 0.04,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Tutorialslogin(widget.i)));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 5),
                  width: MediaQuery.of(context).size.width * 0.22,
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 5,
                        ),
                        child: Icon(
                          Icons.login,
                          color: Colors.black45,
                          size: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Center(child: Text('Login'))),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            alignment: Alignment.center,
            child: Text(
              'Simply Easy Learning \n\t\t at your fingertips',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.036,
              ),
            ),
          ),
          information(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button(CupertinoIcons.cube, 'Prime Packs'),
              button(CupertinoIcons.play_circle, 'Courses'),
              button(Icons.local_library_outlined, 'eBooks'),
              button(Icons.my_library_books_sharp, 'Library'),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [button(Icons.article_outlined, 'Articles')]),
          Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width * 0.38,
            height: MediaQuery.of(context).size.height * 0.04,
            margin: EdgeInsets.only(top: 60, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.code_off_rounded,
                  color: Colors.white,
                ),
                Container(
                    margin: EdgeInsets.only(top: 5, left: 5),
                    child: Text(
                      'Coding Ground',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: button(Icons.engineering, 'Engineering Tutorials')),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: EdgeInsets.only(top: 100),
            // decoration: BoxDecoration(color: Colors.black),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: slider1.map((e) {
                  return silder_botton(e);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget information() {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 20),
      height: MediaQuery.of(context).size.height * 0.056,
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextField(
          decoration: InputDecoration(
              // counterText: 'hello',
              label: Text(
                'Search your favourite tutotials...',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.017,
                ),
              ),
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(borderSide: BorderSide.none),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none)),
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(5)),
    );
  }

  Widget button(IconData icon_of_button, String button_name) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: 10),
        // height: MediaQuery.of(context).size.height * 0.06,
        child: Row(children: [
          Icon(
            icon_of_button,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
              margin: EdgeInsets.only(left: 5),
              child: Center(
                  child: Text(button_name,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.016,
                      ))))
        ]));
  }

  Widget silder_botton(e) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            color: e.color, borderRadius: BorderRadius.circular(10)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            e.icon,
            size: MediaQuery.of(context).size.height * 0.08,
          ),
          Container(
              // margin: EdgeInsets.only(left: 5),
              child: Center(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(e.container_name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  )),
              Text(e.container_detail,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.017,
                  )),
            ],
          )))
        ]));
  }
}
