import 'package:flutter/widgets.dart';

class websdetails {
  String Web_name = '';
  String web_icon;

  websdetails({
    this.web_icon = '',
    this.Web_name = '',
  });
}

class bigcon {
  String container_name = '';
  String container_detail = '';
  String container_button1 = '';
  String container_button2 = '';
  String container_button3 = '';
  String container_button4 = '';
  IconData? icon;
  Color? color;

  bigcon(
      {this.container_name = '',
      this.container_detail = '',
      this.container_button1 = '',
      this.container_button2 = '',
      this.container_button3 = '',
      this.container_button4 = '',
      this.color,
      this.icon});
}
