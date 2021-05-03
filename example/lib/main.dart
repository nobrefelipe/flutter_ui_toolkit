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

///
/// SET PRIMARY BUTTON STYLES
///
final primaryButton = UIButtonDefaults(
  elevation: 10.0,
  borderRadius: 50.0,
  borderColor: Colors.purple,
  borderWidth: 2.0,
  labelColor: Colors.purple,
  bgColor: Colors.white,
  widthFactor: 0.5,
);

///
/// SET PRIMARY TEXT INPUT STYLES
///
final primaryInput = UITextFieldDefaults(
  borderColor: Colors.black,
  borderRadius: 20,
  borderType: UIBorderType.outlineBorder,
  borderWidth: 2.0,
  focusBorderColor: Colors.green,
  hintColor: Colors.white,
  bgColor: Colors.purple.withOpacity(0.6),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHeading(
              text: 'Solid Button with icon',
              heading: 5,
            ),
            SizedBox(height: 10),

            UIButton.solid(
              label: "Button",
              onPressed: () => print('Solid defaults'),
              bgColor: Colors.green,
              labelColor: Colors.white,
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),

            SizedBox(height: 20),

            UIHeading(
              text: 'Outlined Button with defaults',
              heading: 5,
            ),
            SizedBox(height: 10),

            UIButton.outlined(
              as: primaryButton,
              label: "Button",
              onPressed: () => print('With defaults'),
            ),

            SizedBox(height: 20),

            UIHeading(
              text: 'Outlined Button with defaults overridden',
              heading: 5,
            ),
            SizedBox(height: 10),
            UIButton.outlined(
              as: primaryButton,
              label: "Button",
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

            UIHeading(
              text: 'Native Button',
              heading: 5,
            ),
            SizedBox(height: 10),

            UIButton.native(
              label: 'Native Button',
              onPressed: () => print('native button'),
              bgColor: Colors.blue,
            ),

            SizedBox(height: 40),

            ///
            /// INPUT TEXT WITH PRIMARY STYLES
            ///
            UITextField(
              as: primaryInput,
              hint: 'Email',
            ),

            SizedBox(height: 40),

            ///
            /// HEADING
            ///
            UIHeading(
              text: 'Native Text Input',
              heading: 3,
            ),

            SizedBox(height: 10),

            ///
            /// NATIVE INPUT TEXT WITH PRIMARY STYLES
            ///
            UITextField.native(
              hint: 'Email',
            ),
          ],
        ),
      ),
    );
  }
}
