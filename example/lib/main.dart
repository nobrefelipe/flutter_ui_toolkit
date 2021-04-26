import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Toolkit Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Column(
        children: [
          /// Disabled + Auto width
          Padding(
            padding: EdgeInsets.all(16),
            child: UIButton(
              label: "A button",
              disabled: true,
              onTap: () => print('dd'),
              bgColor: Colors.pink,
              labelColor: Colors.white,
            ),
          ),

          /// Full width + Icon
          Padding(
            padding: EdgeInsets.all(16),
            child: UIButton(
              label: "Full Width",
              onTap: () => print('on tap'),
              alignment: Alignment.center,
              bgColor: Colors.pink,
              labelColor: Colors.white,
              size: UIButtonSize.fullScreen,
              icon: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                /// Half width + No bg
                UIButton(
                  label: "Half Width",
                  onTap: () => print('on tap'),
                  size: UIButtonSize.halfScreen,
                ),

                /// Half width
                UIButton(
                  label: "Half Width",
                  onTap: () => print('on tap'),
                  bgColor: Colors.pink,
                  labelColor: Colors.white,
                  size: UIButtonSize.halfScreen,
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),

            /// Half width + solid + roundec
            child: UIButton(
              label: "Half Width",
              onTap: () => print('on tap'),
              bgColor: Colors.pink,
              labelColor: Colors.white,
              size: UIButtonSize.halfScreen,
              borderRadius: 50,
              shadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),

            /// Half width + solid + roundec
            child: UIButton(
              label: "Half Width",
              onTap: () => print('on tap'),
              borderColor: Colors.pink,
              labelColor: Colors.pink,
              size: UIButtonSize.halfScreen,
              appearance: UIButtonAppearance.outlined,
              borderRadius: 50,
            ),
          ),
        ],
      ),
    );
  }
}
