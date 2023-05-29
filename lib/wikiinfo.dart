import 'package:flutter/material.dart';
import 'package:web_app/model.dart';

class Language extends StatefulWidget {
  webview i = webview();
  Language(this.i);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LanguageState();
  }
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white60,
              ))
        ],
        leading: Drawer(
          elevation: 0,
          child: Icon(
            Icons.menu,
            color: Colors.white60,
          ),
          backgroundColor: Colors.grey,
        ),
        title: Text(
          widget.i.Language,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.04,
              decorationThickness: 2,
              color: Colors.white60,
              letterSpacing: 2,
              fontWeight: FontWeight.normal),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: Colors.black, width: 0.2)),
                  // color: Colors.grey,
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Welcome to ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.035)),
                            TextSpan(
                                text: widget.i.Language,
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.035)),
                            TextSpan(
                                text: ",",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.035)),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "the free encyclopedia that anyone can edit.6,660,502 articles in English",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02),
                        ),
                      )
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              // height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Color(0xfff4fefa),
                  border: Border.all(color: Colors.green, width: 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: 10, left: 10),
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Text(
                      "From today's featured article",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.topLeft,
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Image(
                                image: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/1/18/Black-and-yellow_broadbill_%28cropped%29.jpg")),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.topLeft,
                            // height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Text(
                              "Male black-and-yellow broadbill",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.topLeft,
                        // height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          "The black-and-yellow broadbill (Eurylaimus ochromalus) is a species of bird in Eurylaimidae, the typical broadbill family. It is small, with a black head, breastband, and upperparts, a white neckband, yellow streaking on the back and wings, and wine-pink",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "that turn yellow towards the belly. The beak is bright blue, with a green tip to the upper mandible and black edges. The black breastband is incomplete in females. The black-and-yellow broadbill occurs in Brunei, Indonesia, Malaysia, Myanmar, Singapore, and Thailand,in lowland forests up to an elevation of 1,220 m (4,000 ft). It is mainly insectivorous, but also eats molluscs and some fruit. It breeds during the dry season with both sexes helping build a large, untidy nest from moss, fungal mycelia, and leaves. The clutch is usually 2–3 eggs, and sometimes includes a fourth runt egg. They are incubated by both sexes. The species is listed as near-threatened by the IUCN due to a decline in its population caused by habitat loss. (Full article...)",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "\nRecently featured: A History of British Fishes Bennerley Viaduct Eye (cyclone)"
                      "\n\nArchive By email More featured articles About",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: 10, left: 10),
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Text(
                      "Did you know ...",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        // height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          "that one NFL scout compared watching Marvin Harrison Jr. (pictured) to window shopping at a Lamborghini dealership for the model that doesn't come out until next year",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Image(
                                image: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Marvin_Harrison_Jr_Warm_Up_2022_%28cropped%29.jpg/1036px-Marvin_Harrison_Jr_Warm_Up_2022_%28cropped%29.jpg")),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            // height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Text("Marvin Harrison Jr."),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "...that the Locumba uprising was thought by many to be a cover for the escape of Vladimiro Montesinos, Peru's de facto leader from 1990 to 2000?",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 2),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "... that Edward D. Boone was the last surviving member of his 1851 graduating class from the College of the Holy Cross?"
                      "\n\n... that the Easter composition Surrexit a mortuis ('He rose from the dead') was scored for choir and two organs by Charles-Marie Widor, the organist at Saint-Sulpice in Paris?"
                      "\n\n... that one abolitionist said that William L. Breckinridge's anti-slavery views would disqualify [him] from political usefulness?"
                      "\n\n... that variations of the Latin legal maxim ius civile vigilantibus scriptum est have been used by American, European and Lesotho courts?"
                      "\n\n... that the Standseilbahn Linth-Limmern, the funicular railway with the highest transport payload capacity (215 tonnes), was built to move four transformers 882 m (2,894 ft) uphill?"
                      "\n\n... that before becoming a legislator, Bettina Petzold-Mähr played volleyball for Liechtenstein when they defeated Lichtenstein?",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              // height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Color(0xfff4f9ff),
                  border: Border.all(color: Color(0xffd2e2f3), width: 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: 10, left: 10),
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Color(0xffcedff2),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Text(
                      "In the news",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            alignment: Alignment.topLeft,
                            // height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              "Rock singer and actress Tina Turner (pictured) dies at the age of 83.",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.02),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            alignment: Alignment.topLeft,
                            // height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              "In golf, Brooks Koepka wins the PGA Championship.",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.02),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            // height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Image(
                                image: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Tina_Turner_50th_Anniversary_Tour.jpg/1234px-Tina_Turner_50th_Anniversary_Tour.jpg")),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            // height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Text("Tina Turner in 2009"),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "American football Hall of Fame fullback Jim Brown dies at the age of 87.",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 2),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "\nAmid a political crisis in Ecuador, President Guillermo Lasso dissolves the National Assembly and triggers an early general election."
                      "\n\nFlooding in the Emilia-Romagna region of Italy causes 16 deaths and widespread disruption, including the cancellation of its Formula One Grand Prix.",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: 10, left: 10),
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Color(0xffcedff2),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Text(
                      "Did you know ...",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        // height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          "that one NFL scout compared watching Marvin Harrison Jr. (pictured) to window shopping at a Lamborghini dealership for the model that doesn't come out until next year",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Image(
                                image: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Marvin_Harrison_Jr_Warm_Up_2022_%28cropped%29.jpg/1036px-Marvin_Harrison_Jr_Warm_Up_2022_%28cropped%29.jpg")),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            // height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Text("Marvin Harrison Jr."),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "...that the Locumba uprising was thought by many to be a cover for the escape of Vladimiro Montesinos, Peru's de facto leader from 1990 to 2000?",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 2),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "... that Edward D. Boone was the last surviving member of his 1851 graduating class from the College of the Holy Cross?"
                      "\n\n... that the Easter composition Surrexit a mortuis ('He rose from the dead') was scored for choir and two organs by Charles-Marie Widor, the organist at Saint-Sulpice in Paris?"
                      "\n\n... that one abolitionist said that William L. Breckinridge's anti-slavery views would disqualify [him] from political usefulness?"
                      "\n\n... that variations of the Latin legal maxim ius civile vigilantibus scriptum est have been used by American, European and Lesotho courts?"
                      "\n\n... that the Standseilbahn Linth-Limmern, the funicular railway with the highest transport payload capacity (215 tonnes), was built to move four transformers 882 m (2,894 ft) uphill?"
                      "\n\n... that before becoming a legislator, Bettina Petzold-Mähr played volleyball for Liechtenstein when they defeated Lichtenstein?",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
