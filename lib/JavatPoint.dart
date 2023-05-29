import 'package:flutter/material.dart';
import 'package:web_app/classfile.dart';

class Javatpoint extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Javatpoint();
  }

  Image Imageurl() {
    Image image = Image.network(
        "https://zenprospect-production.s3.amazonaws.com/uploads/pictures/638f7a28101831000116b3e3/picture");
    return image;
  }
}

class _Javatpoint extends State<Javatpoint> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: File());
    // SafeArea(
    // child: Scaffold(backgroundColor: Colors.grey, body: ),
    // );
  }
}
