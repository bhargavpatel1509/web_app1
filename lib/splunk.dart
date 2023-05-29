import 'package:flutter/material.dart';
import 'package:web_app/model.dart';

class Splunk extends StatefulWidget {
  webview i = webview();
  Splunk(this.i);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Splunk();
  }
}

class _Splunk extends State<Splunk> {
  @override
  void initState() {
    // TODO: implement initStat
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  widget.i.Nameint,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.045,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Image(
                  image: NetworkImage(widget.i.Url),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Text(
                  widget.i.info,
                  style:
                      TextStyle(fontSize: 20, wordSpacing: 3, letterSpacing: 1),
                  maxLines: 200,
                  // textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
