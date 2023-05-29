import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/mainpageclass.dart';

class bootStrap extends StatefulWidget {
  websdetails x = websdetails();
  bootStrap(this.x);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _bootStrapState();
  }
}

class _bootStrapState extends State<bootStrap> {
  List<bigcon> con = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bigcon first = bigcon(
        color: Color(0xff846bae),
        container_name: 'B3',
        container_button1: "Learn Bootstrap3 >>",
        container_detail:
            "Bootstrap 3 is the most stable version of Bootstrap, and it is still supported by the team for critical bugfixes and documentantion changes.");
    bigcon second = bigcon(
        color: Color(0xff5f4884),
        container_name: 'B4',
        container_button1: "Learn Bootstrap3 >>",
        container_detail:
            "Bootstrap 4 is a newer version of Bootstrap; with new components, faster stylesheet and more responsiveness. However, Internet Explorer 9 and down is not supported.");
    bigcon third = bigcon(
        color: Color(0xff6c3ec1),
        container_name: 'B5',
        container_button1: "Learn Bootstrap3 >>",
        container_detail:
            "Bootstrap 4 is a newer version of Bootstrap; with new components, faster stylesheet and more responsiveness. However, Internet Explorer 9 and down is not supported.");
    con.add(first);
    con.add(second);
    con.add(third);
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                child: Column(children: [
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(widget.x.web_icon))),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Row(
                          children: [
                            Center(
                                child: Text('Menu',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ))),
                            Icon(
                              CupertinoIcons.chevron_down_circle_fill,
                              size: MediaQuery.of(context).size.height * 0.02,
                            )
                          ],
                        ),
                        decoration: BoxDecoration()),
                    widcontainer()
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pop();
                          });
                        },
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Text(
                            'HTML',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.dark_mode_outlined,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.language,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Bootstrap'
                        '\n\tVersions',
                        style: TextStyle(
                          color: Colors.white,
                          wordSpacing: 2,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height * 0.070,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.7,
                margin: EdgeInsets.only(top: 30),
                child: RichText(
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  text: TextSpan(
                    text:
                        "Bootstrap is the world's most famous free CSS framework."
                        "\nYou can choose between the following versions:",
                    style: TextStyle(
                      color: Colors.white,
                      wordSpacing: 2,
                      fontWeight: FontWeight.w600,
                      fontSize: MediaQuery.of(context).size.height * 0.020,
                    ),
                  ),
                ),
              ),
              Column(
                children: con.map((e) {
                  return container(e);
                }).toList(),
              )
            ]))));
  }

  Widget container(e) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Center(
              child: Text(
                e.container_name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height * 0.1,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Colors.black,
                border: Border.all(color: Colors.white, width: 1.5)),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.5,
            margin: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                e.container_button1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height * 0.020,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                // color: Colors.black,
                border: Border.all(color: Colors.white, width: 1)),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.only(top: 30),
            child: RichText(
              textAlign: TextAlign.center,
              maxLines: 4,
              text: TextSpan(
                text: e.container_detail,
                style: TextStyle(
                  color: Colors.white,
                  wordSpacing: 2,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height * 0.020,
                ),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: e.color),
    );
  }

  Widget widcontainer() {
    return Stack(children: [
      Container(
          margin: EdgeInsets.only(left: 110),
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.25,
          child: Center(
              child: Text(
            "log in",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height * 0.02,
            ),
          )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffd8eee9),
          )),
      Container(
          margin: EdgeInsets.only(right: 10, left: 33),
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.25,
          child: Center(
              child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height * 0.02,
            ),
          )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff04aa6d),
          )),
    ]);
  }
}
