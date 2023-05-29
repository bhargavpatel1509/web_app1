import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/InappWeb.dart';
import 'package:web_app/LogIn.dart';
import 'package:web_app/boot.dart';
import 'package:web_app/mainpageclass.dart';

class W3s extends StatefulWidget {
  websdetails i = websdetails();

  W3s(this.i);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _W3sState();
  }
}

class _W3sState extends State<W3s> {
  List<bigcon> big_container = [];
  List<bigcon> Small_Container = [];
  List<bigcon> Smallest_Container = [];

  @override
  void initState() {
    bigcon first = bigcon(
        container_name: 'HTML',
        container_detail: 'The language for building web pages',
        container_button1: 'Learn HTML',
        container_button2: 'Video Tutorial',
        container_button3: 'HTML Reference',
        container_button4: 'Get Certified',
        color: Color(0xffa1e5bd));
    bigcon second = bigcon(
        container_name: 'CSS',
        container_detail: 'The language for Styling web pages',
        container_button1: 'Learn CSS',
        container_button2: 'Video Tutorial',
        container_button3: 'CSS Reference',
        container_button4: 'Get Certified',
        color: Colors.amberAccent);
    bigcon third = bigcon(
        container_name: 'JavaScript',
        container_detail: 'The language for programming web pages',
        container_button1: 'Learn JavaScript',
        container_button2: 'Video Tutorial',
        container_button3: 'JavaScript Reference',
        container_button4: 'Get Certified',
        color: Colors.white24);
    bigcon fourth = bigcon(
      container_name: 'Python',
      container_detail: 'The popular programming language',
      container_button1: 'Learn Python',
      container_button2: 'Video Tutorial',
      container_button3: 'Python Reference',
      container_button4: 'Get Certified',
      color: Color(0xfff8e0e0),
    );
    bigcon fifth = bigcon(
        container_name: 'SQL',
        container_detail: 'A language for accessing databases',
        container_button1: 'Learn SQL',
        container_button2: 'Video Tutorial',
        container_button3: 'SQL Reference',
        container_button4: 'Get Certified',
        color: Color(0xff96d4d4));
    bigcon php = bigcon(
        container_name: 'PHP',
        container_detail: 'A web server programming language',
        container_button1: 'Learn PHP',
        color: Color(0xffb14d83));
    bigcon jQuery = bigcon(
        container_name: 'jQuery',
        container_detail: 'A wjs library for developing web pages',
        container_button1: 'Learn jQuery',
        color: Colors.amberAccent);
    bigcon java = bigcon(
        container_name: 'Java',
        container_detail: 'A programming language',
        container_button1: 'Learn Java',
        color: Color(0xfff8e0e0));
    bigcon Cpp = bigcon(
        container_name: 'Learn C++',
        container_detail: 'A programming language',
        container_button1: 'Learn C++',
        color: Color(0xffa1e5bd));
    bigcon CSS = bigcon(
        container_name: 'W3.CSS',
        container_detail:
            'A CSS framework for faster and batter responsive web pages',
        container_button1: 'Learn W3.CSS',
        color: Color(0xffb14d83));
    bigcon Bootstrap = bigcon(
        container_name: 'Bootstrap',
        container_detail: 'A CSS framework for designing batter web pages',
        container_button1: 'Learn Bootstrap',
        color: Color(0xff96d4d4));
    bigcon c = bigcon(container_name: 'C', color: Color(0xffb14d83));
    bigcon cSharp = bigcon(container_name: 'C#', color: Colors.amberAccent);
    bigcon R = bigcon(container_name: 'R', color: Color(0xfff8e0e0));
    bigcon Kotlin = bigcon(container_name: 'Kotlin', color: Color(0xffa1e5bd));
    bigcon NodeJS = bigcon(container_name: 'NodeJS', color: Color(0xff96d4d4));
    bigcon React = bigcon(container_name: 'React', color: Color(0xffb14d83));
    bigcon Json = bigcon(container_name: 'Json', color: Colors.amberAccent);
    bigcon Vue = bigcon(container_name: 'Vue', color: Color(0xfff8e0e0));
    bigcon MySQL = bigcon(container_name: 'MySQL', color: Color(0xffa1e5bd));
    bigcon XML = bigcon(container_name: 'XML', color: Color(0xff96d4d4));
    bigcon Sass = bigcon(container_name: 'Sass', color: Color(0xffb14d83));
    bigcon Icons1 = bigcon(container_name: 'Icons', color: Colors.amberAccent);
    bigcon RWD = bigcon(container_name: 'RWD', color: Color(0xfff8e0e0));
    bigcon Grafics =
        bigcon(container_name: 'Grafics', color: Color(0xffa1e5bd));
    bigcon SVG = bigcon(container_name: 'SVG', color: Color(0xff96d4d4));
    bigcon Canvas1 = bigcon(container_name: 'Canvas', color: Color(0xffb14d83));
    bigcon Raspberry_Pi =
        bigcon(container_name: 'RaspberryPi', color: Colors.amberAccent);
    bigcon Cyber_Security =
        bigcon(container_name: 'Cyber_Security', color: Color(0xfff8e0e0));
    bigcon Colors1 = bigcon(container_name: 'Colors', color: Color(0xffa1e5bd));
    bigcon Git = bigcon(container_name: 'Git', color: Color(0xff96d4d4));
    bigcon Matplotlib =
        bigcon(container_name: 'Matplotlib', color: Color(0xffb14d83));
    bigcon NumPy = bigcon(container_name: 'NumPy#', color: Colors.amberAccent);
    bigcon Pandas = bigcon(container_name: 'Pandas', color: Color(0xfff8e0e0));
    bigcon SciPy = bigcon(container_name: 'SciPy', color: Color(0xffa1e5bd));
    bigcon ASP = bigcon(container_name: 'ASP', color: Color(0xff96d4d4));
    bigcon AngularJS =
        bigcon(container_name: 'AngularJS', color: Color(0xffb14d83));
    bigcon AppML = bigcon(container_name: 'AppML#', color: Colors.amberAccent);
    bigcon Go = bigcon(container_name: 'Go', color: Color(0xfff8e0e0));
    bigcon TypeScript =
        bigcon(container_name: 'TypeScript', color: Color(0xffa1e5bd));
    bigcon Django = bigcon(container_name: 'Django', color: Color(0xff96d4d4));
    bigcon MongoDb =
        bigcon(container_name: 'MongoDb', color: Color(0xffb14d83));
    bigcon Statistics =
        bigcon(container_name: 'Mikin', color: Colors.amberAccent);
    bigcon Datat_Science =
        bigcon(container_name: 'Data science', color: Color(0xfff8e0e0));
    bigcon Typing_Speed =
        bigcon(container_name: 'Typing Speed', color: Color(0xffa1e5bd));
    bigcon Excel = bigcon(container_name: 'Excel', color: Color(0xff96d4d4));
    bigcon GoogleSeets =
        bigcon(container_name: 'Google Seets', color: Color(0xffb14d83));
    bigcon MachineLearning =
        bigcon(container_name: 'Machine Learning', color: Colors.amberAccent);
    bigcon ArtificialIntalligence = bigcon(
        container_name: 'Artificial Intalligence', color: Color(0xfff8e0e0));
    big_container.add(first);
    big_container.add(second);
    big_container.add(third);
    big_container.add(fourth);
    big_container.add(fifth);
    Small_Container.add(php);
    Small_Container.add(jQuery);
    Small_Container.add(java);
    Small_Container.add(Cpp);
    Small_Container.add(CSS);
    Small_Container.add(Bootstrap);
    Smallest_Container.add(c);
    Smallest_Container.add(cSharp);
    Smallest_Container.add(R);
    Smallest_Container.add(Kotlin);
    Smallest_Container.add(NodeJS);
    Smallest_Container.add(React);
    Smallest_Container.add(Json);
    Smallest_Container.add(Vue);
    Smallest_Container.add(MySQL);
    Smallest_Container.add(XML);
    Smallest_Container.add(Sass);
    Smallest_Container.add(Icons1);
    Smallest_Container.add(RWD);
    Smallest_Container.add(Grafics);
    Smallest_Container.add(SVG);
    Smallest_Container.add(Canvas1);
    Smallest_Container.add(Raspberry_Pi);
    Smallest_Container.add(Cyber_Security);
    Smallest_Container.add(Colors1);
    Smallest_Container.add(Git);
    Smallest_Container.add(Matplotlib);
    Smallest_Container.add(NumPy);
    Smallest_Container.add(Pandas);
    Smallest_Container.add(SciPy);
    Smallest_Container.add(ASP);
    Smallest_Container.add(AngularJS);
    Smallest_Container.add(AppML);
    Smallest_Container.add(Go);
    Smallest_Container.add(TypeScript);
    Smallest_Container.add(Django);
    Smallest_Container.add(MongoDb);
    Smallest_Container.add(Statistics);
    Smallest_Container.add(Datat_Science);
    Smallest_Container.add(Typing_Speed);
    Smallest_Container.add(Excel);
    Smallest_Container.add(GoogleSeets);
    Smallest_Container.add(MachineLearning);
    Smallest_Container.add(ArtificialIntalligence);

    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                              image: NetworkImage(widget.i.web_icon))),
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
              Container(
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  'Learn to Code',
                  style: TextStyle(
                      color: Colors.white,
                      wordSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.06),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.7,
                    margin: EdgeInsets.only(top: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      text: TextSpan(
                        text: "with the word's largest web developer site.",
                        style: TextStyle(
                          // color: Color.fromARGB(2554, 237, 92, 179),
                          color: Color(0xffb14d83),
                          wordSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search our tutorials,e.g. HTML"),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => original_website()));
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: EdgeInsets.only(top: 40),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Not Sure Where To Begin?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.2,
                            color: Colors.white,
                            wordSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                  children: big_container.map((e) {
                return Big_container(e);
              }).toList()),
              Container(
                height: MediaQuery.of(context).size.width * 0.12,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Column(
                  children: Small_Container.map((e) {
                return Container(child: Small_container(e));
              }).toList()),
              Container(
                height: MediaQuery.of(context).size.width * 0.12,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Column(
                  children: Smallest_Container.map((e) {
                return Container(child: Smallest_contener(e));
              }).toList()),
              Container(),
            ],
          ),
        ),
      ),
    );
  }

  Widget widcontainer() {
    return Stack(children: [
      InkWell(
        onTap: () {
          setState(() {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginScreen(widget.i)));
          });
        },
        child: Container(
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
      ),
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

  Widget Big_container(e) {
    return Container(
      // margin: EdgeInsets.only(top: 30),
      height: MediaQuery.of(context).size.height * 0.54,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                e.container_name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.075),
              )),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                e.container_detail,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.021),
              )),
          Container(
            margin: EdgeInsets.only(top: 25),
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Center(
              child: Text(
                e.container_button1,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xff04aa6d),
                borderRadius: BorderRadius.circular(30)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Center(
              child: Text(
                e.container_button2,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xfffff4a3),
                borderRadius: BorderRadius.circular(30)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Center(
              child: Text(
                e.container_button3,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(30)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Center(
              child: Text(
                e.container_button4,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xffffc0c7),
                borderRadius: BorderRadius.circular(30)),
          ),
        ],
      ),
      decoration: BoxDecoration(color: e.color),
    );
  }

  Widget Small_container(e) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.65,
      width: MediaQuery.of(context).size.width * 1,
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              e.container_name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.05),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: EdgeInsets.only(top: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    text: TextSpan(
                      text: e.container_detail,
                      style: TextStyle(
                        // color: Color.fromARGB(2554, 237, 92, 179),
                        color: Colors.black,
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                switch (e.container_name) {
                  case 'Bootstrap':
                    {
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => bootStrap(widget.i)));
                      });
                    }
                    break;
                }
              },
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Center(
                  child: Text(
                    e.container_button1,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
              ),
            )
          ]),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: e.color),
    );
  }

  Widget Smallest_contener(e) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 1,
      child: Center(
          child: Text(
        e.container_name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.height * 0.03,
        ),
      )),
      decoration: BoxDecoration(
          color: e.color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
