import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Toolkit Example',
      home: MyHomePage(),
    );
  }
}

/// SET PRIMARY BUTTON STYLES
/// creates a [UIButtonDefaults] class with the default styles for your primary button.
/// These styles can be overridden from the widget at any point.
final UIButtonDefaults primaryButton = UIButtonDefaults(
  elevation: 10.0,
  borderRadius: 50.0,
  borderColor: Colors.purple,
  borderWidth: 2.0,
  labelColor: Colors.purple,
  bgColor: Colors.white,
  widthFactor: 0.5,
);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ///
            /// OUTLINED BUTTON
            /// Using [UIButtonDefaults] [primaryButton]
            ///
            UIButton.solid(
              as: primaryButton,
              bgColor: Colors.green,
              labelColor: Colors.white,
              label: "Solid  defaults",
              onPressed: () => print('Solid defaults'),
            ),
            SizedBox(height: 20),

            ///
            /// OUTLINED BUTTON
            /// Using [UIButtonDefaults] [primaryButton]
            ///
            UIButton.outlined(
              as: primaryButton,
              label: "With defaults",
              onPressed: () => print('With defaults'),
            ),

            SizedBox(height: 20),

            ///
            /// OUTLINED BUTTON
            /// Using [UIButtonDefaults] [primaryButton]
            /// Being overridden by local styles
            ///
            UIButton.outlined(
              as: primaryButton,
              label: "Overridden",
              onPressed: () => print('Overridden'),
              borderColor: Colors.black,
              labelColor: Colors.black,
              bgColor: Colors.white,
              borderRadius: 5.0,
              elevation: 5.0,
              borderWidth: 2.0,
              widthFactor: 0.5,
            ),

            SizedBox(height: 20),

            ///
            /// NATIVE BUTTON
            /// will display a native button based on the OS
            ///
            UIButton.native(
              label: 'Native Button',
              onPressed: () => print('native button'),
            ),
          ],
        ),
      ),
    );
  }
}
