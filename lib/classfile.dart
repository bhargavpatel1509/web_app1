import 'package:flutter/material.dart';
import 'package:web_app/JavatPoint.dart';
import 'package:web_app/inappwebview.dart';
import 'package:web_app/model.dart';
import 'package:web_app/splunk.dart';
import 'package:web_app/wikiinfo.dart';

class File extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FileState();
  }
}

class _FileState extends State<File> {
  ScrollController scrollController = ScrollController();
  Javatpoint a = Javatpoint();
  webview web = webview();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return container2();
  }

  Widget container2() {
    Javatpoint a = Javatpoint();
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30),
              alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.white,
              child: a.Imageurl(),
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 1,
              margin: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(
                child: TextField(
                  onTap: () {},
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.brown)),
                    suffixIconColor: Colors.brown,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 100)),
                    suffixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.padding,
                    color: Colors.white,
                  ),
                  Text(
                    "Python",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "Java",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "JavaScript",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              padding: const EdgeInsets.only(left: 10, right: 10),
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://www.youtube.com/img/desktop/yt_1200.png"),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: Text(
                        "For Videos Join Our Youtube Channel: ",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Appview()));
                        });
                      },
                      child: Text(
                        "Join Now",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.01,
              width: MediaQuery.of(context).size.width * 0.9,
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Latest Tutorials",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035),
              ),
            ),
            Gridview1(web.bhargav()),
          ],
        ),
      ),
    );
  }

  Widget Gridview1(List<webview> bhargav) {
    return GridView.count(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        shrinkWrap: true,
        children: bhargav.map((e) {
          return InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Splunk(e)));
            },
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.black, blurRadius: 4),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // margin:  EdgeInsets.only(top: 10),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Image(
                        image: NetworkImage(e.Url),
                      ),
                    ),
                    Container(
                      // alignment: Alignment.center,
                      // margin: const EdgeInsets.only(top: 15),
                      color: Colors.white,
                      child: Text(
                        e.Name,
                        style: TextStyle(
                            color: Colors.green,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025),
                      ),
                    )
                  ],
                )),
          );
        }).toList());
  }
}

class Wiki extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WikiState();
  }
}

class _WikiState extends State<Wiki> {
  ScrollController scrollController = ScrollController();
  webview web = webview();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return container1();
  }

  Widget container1() {
    Javatpoint a = Javatpoint();
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/1200px-Wikipedia-logo-v2.svg.png")),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "WikipediA",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05),
                    ),
                  ),
                  Container(
                    child: Text(
                      "The Free Encylopedia",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onTap: () {}),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 10, right: 10),
                  height: MediaQuery.of(context).size.height * 0.07,
                  color: Colors.blue,
                  child: Center(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Gridview2(web.Wikilist(), Colors.cyan),
          Container(
              margin: EdgeInsets.only(right: 30, left: 30),
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.translate_outlined,
                    color: Colors.blue,
                  ),
                  Center(
                    child: Text(
                      "Read Wikipedia in your language",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 1,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Image(
              image: NetworkImage(
                  "https://wikimediafoundation.org/wp-content/uploads/2018/08/Wikimedia-logo_black.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.height * 0.1,
            child: Text(
              maxLines: 10,
              textAlign: TextAlign.center,
              "Wikipedia is hosted by the Wikimedia Foundation, a non-profit organization that also hosts a range of other projects.You can support our work with a donation.",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: MediaQuery.of(context).size.height * 0.02),
            ),
          ),
          Gridview3(web.wiki4()),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 1,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.height * 0.1,
            child: Text(
              maxLines: 10,
              textAlign: TextAlign.center,
              "This page is available under the Creative Commons Attribution-ShareAlike License Terms of Use Privacy Policy",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: MediaQuery.of(context).size.height * 0.015),
            ),
          ),
        ],
      ),
    );
  }

  Widget Gridview2(List<webview> b, Color color) {
    return GridView.count(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        padding: EdgeInsets.all(20),
        crossAxisCount: 3,
        shrinkWrap: true,
        children: b.map((e) {
          return InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Language(e)));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    // margin:  EdgeInsets.only(top: 10),
                    // height: MediaQuery.of(context).size.height * 0.1,
                    // width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                  e.Name,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      color: Colors.blue),
                )),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  color: Colors.white,
                  child: Text(
                    e.Nameint,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuery.of(context).size.height * 0.025),
                  ),
                ),
                Container(
                  // alignment: Alignment.center,
                  // margin: const EdgeInsets.only(top: 15),
                  color: Colors.white,
                  child: Text(
                    e.info,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuery.of(context).size.height * 0.02),
                  ),
                ),
              ],
            ),
          );
        }).toList());
  }

  Widget Gridview3(List<webview> bh) {
    return GridView.count(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(5),
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 2 / 1,
        children: bh.map((e) {
          return InkWell(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Splunk(e)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // margin:  EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Image(
                    image: NetworkImage(e.Image),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      color: Colors.white,
                      child: Text(
                        e.Name,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      color: Colors.white,
                      child: Text(
                        e.Nameint,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      // alignment: Alignment.center,
                      // margin: const EdgeInsets.only(top: 15),
                      color: Colors.white,
                      child: Text(
                        e.info,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }).toList());
  }
}
