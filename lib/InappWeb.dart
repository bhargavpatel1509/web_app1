import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class original_website extends StatefulWidget {
  String arabic = "";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _original_websiteState();
  }
}

class _original_websiteState extends State<original_website> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: InAppWebView(
          initialUrlRequest: URLRequest(
              url: Uri(
                  scheme: "https",
                  host: "www.w3schools.com",
                  path: "where_to_start.asp")),
        ),
      ),
    );
  }
}
