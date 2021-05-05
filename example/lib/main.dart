import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';

///
/// Import Default Styles
///
import 'styles.dart';

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
/// Creates a Native Dialog Factory
///
void _openDialog(BuildContext context) {
  DialogFactory.showAlertDialog(
    context,
    title: Text('Are you sure?'),
    content: Text('You cannot reverse this action.'),
    actions: [
      DialogAction(
        child: Text('YES'),
        onPressed: () {
          ///
          /// Do Something

          ///
          /// Close dialog
          Navigator.of(context).pop();
        },
      ),
      DialogAction(
        child: Text('NO'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ],
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///
            ///
            ///
            UIHeading(
              text: 'BUTTONS',
              heading: 4,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 20),

            ///
            ///
            ///
            UIHeading(
              as: smallTitle,
              text: 'Solid Button with icon',
            ),
            SizedBox(height: 10),

            ///
            ///
            ///
            UIButton.solid(
              as: solidButtonStyles,
              label: "Button",

              ///  Will open a dialog based on the current OS
              onPressed: () => _openDialog(context),
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
            SizedBox(height: 20),

            ///
            ///
            ///
            UIHeading(
              as: smallTitle,
              text: 'Outlined Button with defaults',
            ),
            SizedBox(height: 10),

            ///
            ///
            ///
            UIButton.outlined(
              as: outlinedButtonStyles,
              label: "Button",
              onPressed: () => print('With defaults'),
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.pink,
                size: 20,
              ),
            ),
            SizedBox(height: 20),

            ///
            ///
            ///
            UIHeading(
              as: smallTitle,
              text: 'Native Button',
            ),
            SizedBox(height: 10),

            ///
            ///
            ///
            UIButton.native(
              label: 'Native Button',
              onPressed: () => print('native button'),
              bgColor: Colors.blue,
            ),
            SizedBox(height: 40),

            ///
            ///
            ///
            UIHeading(
              text: 'TEXT INPUTS',
              heading: 4,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 20),
            //
            ///
            ///
            UIHeading(
              as: smallTitle,
              text: 'Custom Text Input',
            ),
            SizedBox(height: 10),

            ///
            ///
            ///
            UITextField(
              as: primaryInput,
              hint: 'Email',
              prefix: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 20),

            ///
            ///
            ///
            UIHeading(
              as: smallTitle,
              text: 'Native Text Input',
            ),
            SizedBox(height: 10),

            ///
            ///
            ///
            UITextField.native(
              hint: 'Search',
              label: 'Search',
              suffix: Icon(Icons.search_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
