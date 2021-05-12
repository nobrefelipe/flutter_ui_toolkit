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
/// Creates a Native Dialog Fatory
///
void _openDialog(BuildContext context) {
  UIDialog.show(
    context,
    title: Text('Are you sure?'),
    content: Text('You cannot reverse this action.'),
    actions: [
      UIAction(
        child: Text('YES'),
        onPressed: () {
          ///
          /// Do Something here

          ///
          /// Close dialog
          Navigator.of(context).pop();
        },
      ),
      UIAction(
        child: Text('NO'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ],
  );
}

//
/// Creates a Native Action Sheet Factory
///
void _openActionSheet(BuildContext context) {
  UIActionSheet.show(
    context,
    title: UIHeading(
      text: 'Select you favorite color',
      color: Colors.blue,
      textAlign: TextAlign.center,
      heading: 5,
    ),
    content: Text('We will use the color on your profile.'),
    // forceAndroid: true,
    actions: [
      UIAction(
        child: Text('Red'),
        onPressed: () => Navigator.of(context).pop(),
      ),
      UIAction(
        child: Text('Green'),
        onPressed: () => Navigator.of(context).pop(),
      ),
      UIAction(
        child: Text('Bue'),
        onPressed: () => Navigator.of(context).pop(),
      ),
      UIAction(
        child: Text('Pink'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ],
    cancel: UIAction(
      child: UIHeading(
        text: 'Cancel',
        color: Colors.red,
        heading: 4,
      ),
      onPressed: () => print('Cancel'),
    ),
  );
}

Future<void> _openBottomSheet(BuildContext context) async {
  await UIBottomSheet.show(
    context: context,
    floatted: true,
    hideHead: false,
    content: Container(
      alignment: Alignment.center,
      height: 400,
      child: UIHeading(
        heading: 3,
        text: 'Some cool content',
      ),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examples'),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                label: "Open Dialog",

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
                label: "Open Action Sheet",

                ///  Will open a action sheet based on the current OS
                onPressed: () => _openActionSheet(context),
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
                label: 'Open Bottom Sheet',
                onPressed: () async {
                  await _openBottomSheet(context);
                  print('Bottom sheet closed');
                },
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
                onChanged: (value) => print(value),
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
                onChanged: (value) => print(value),
                suffix: Icon(Icons.search_rounded),
              ),
              SizedBox(height: 30),

              ///
              ///
              ///
              UIHeading(
                as: smallTitle,
                text: 'UIContainer',
              ),
              SizedBox(height: 10),

              ///
              ///
              ///
              UIContainer(
                as: errorContainer,
                child: Text('This is a box with a nice shadow\nand a cool rounded border.'),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
