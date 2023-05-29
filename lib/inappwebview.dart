import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Appview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Appview();
  }
}

class _Appview extends State<Appview> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: InAppWebView(
          initialUrlRequest: URLRequest(
              url: Uri(
                  scheme: "https",
                  host: "www.youtube.com",
                  path: "channel/UCUnYvQVCrJoFWZhKK3O2xLg")),
        ),
      ),
    );
  }
}
