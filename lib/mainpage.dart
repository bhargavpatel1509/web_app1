import 'package:flutter/material.dart';
import 'package:web_app/JavatPoint.dart';
import 'package:web_app/TutorialsPoint.dart';
import 'package:web_app/Wikipedia.dart';
import 'package:web_app/mainpageclass.dart';

import 'W3Schools.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<websdetails> websitets = [];

  @override
  void initState() {
    websdetails W3Schools = websdetails(
      web_icon:
          'https://yt3.googleusercontent.com/dW6to0x5Crmeh7yi-YPLcQRqVrBtx2BSh8eoKTJbE8NbjloQ0sqlmdszIlxokJU_97-ndOt_=s900-c-k-c0x00ffffff-no-rj',
      Web_name: "W3Schools",
    );
    websdetails JavatPoint = websdetails(
        web_icon:
            'https://zenprospect-production.s3.amazonaws.com/uploads/pictures/638f7a28101831000116b3e3/picture',
        Web_name: "JavatPoint");
    websdetails TutorialsPoint = websdetails(
        web_icon: 'https://image.pngaaa.com/393/5839393-middle.png',
        Web_name: "TutorialsPoint");
    websdetails Wikipedia = websdetails(
        web_icon:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Wikipedia-logo-v2-simple.svg/640px-Wikipedia-logo-v2-simple.svg.png',
        Web_name: "Wikipedia");
    websitets.add(W3Schools);
    websitets.add(JavatPoint);
    websitets.add(TutorialsPoint);
    websitets.add(Wikipedia);
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      body: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: websitets.map((e) {
          return InkWell(
            onTap: () {
              switch (e.Web_name) {
                case 'W3Schools':
                  {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => W3s(e)));
                  }
                  break;
                case 'JavatPoint':
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Javatpoint()));
                  }
                  break;
                case 'TutorialsPoint':
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => tutorials(e)));
                  }
                  break;
                case 'Wikipedia':
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  }
                  break;
              }
            },
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    Container(
                      // padding: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(e.web_icon))),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: Center(
                        child: Text(
                          e.Web_name,
                          style: TextStyle(
                              // fontWeight: FontWeight.w400,
                              color: Colors.white,
                              // backgroundColor: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
