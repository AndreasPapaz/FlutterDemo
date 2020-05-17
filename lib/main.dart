import 'package:Binge/views/Wrapper.dart';
import 'package:flutter/material.dart';

import 'strings.dart';

void main() => runApp(BingeWatchApp());


class BingeWatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      home: Wrapper(),
    );
  }
}
