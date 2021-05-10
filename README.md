# Flutter UI Toolkit
```
The development of this  package is still in progress. More widgets are to come.
However because the widgets are purely Flutter widgets, you can use it with no fear :)
```

Flutter UI Toolkit is a pre-built collection of the most used widgets to create apps, 
the basic ones like:  Buttons, Inputs, Headings, Dialogs, Action Sheets, etc..

The idea is that you can use these widgets the way you use classes in HTML and CSS and be a simple helper.

The widgets can receive an argument called `as` that will carry the widget's styles.
The advantage of this approach is that we don't need to repeat styling every time we create a new widget.

In addition to custom styles, this package also provides `native` look and feel to the widgets.
This is useful when you want to have one widget that displays the right look and feel based on the Platform.



## Widgets and Roadmap

<table>
    <thead style="background-color: #666; color: #fff;">
        <tr>
            <td>Widget</td>
            <td>Status</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Buttons</td>
            <td style="color: #0c0;">done</td>
        </tr>
        <tr>
            <td>Headings</td>
            <td style="color: #0c0;">done</td>
        </tr>
        <tr>
            <td>Text Inputs</td>
            <td style="color: #0c0;">done</td>
        </tr>
        <tr>
            <td>Dialogs</td>
            <td style="color: #ff3434;">done</td>
        </tr>
         <tr>
            <td>Action Sheets</td>
            <td style="color: #ff3434;">done</td>
        </tr>
        <tr>
            <td>Containers</td>
            <td style="color: #ff3434;">in progress</td>
        </tr>
        <tr>
            <td>Modals</td>
            <td style="color: #ff3434;">in progress</td>
        </tr>
        <tr>
            <td>Bottom Sheets</td>
            <td style="color: #ff3434;">in progress</td>
        </tr>
    </tbody>
</table>



## Examples


<table>
<tr>
<td>iOS</td>
<td><span style="width: 40px"></span></td>
<td>Android</td>
<tr>
<tr>
<td><img src="https://firebasestorage.googleapis.com/v0/b/weddy-app-1.appspot.com/o/Simulator%20Screen%20Shot%20-%20iPhone%2012%20Pro%20-%202021-05-05%20at%2021.45.34.png?alt=media&token=17db3b6e-04b1-40b6-8aff-a47183fba202" width="300"></td>
<td><span style="width: 40px"></span></td>
<td><img src="https://firebasestorage.googleapis.com/v0/b/weddy-app-1.appspot.com/o/android.png?alt=media&token=c8b949d8-de64-4cb9-a7c7-2fa50a395fca" width="300"></td>
</tr>
</table>



## `UIButton`


This class provides a full customizable button.

There are three kind of buttons you can choose from:
```
UIButton.solid(),
UIButton.outlined(),
UIButton.native(),
```

To create default styles for the button you need to create a class of type `UIButtonDefaults`.

You can have a separated directory where you add all your default styles.
```

// styles/buttons.dart

final primaryButton = UIButtonDefaults(
  elevation: 10.0,
  borderRadius: 50.0,
  borderColor: Colors.purple,
  borderWidth: 2.0,
  labelColor: Colors.purple,
  bgColor: Colors.white,
  widthFactor: 0.5, // sets the button width
);
```

Then use the button anywhere in your application. 
```

import 'styles/buttons.dart';

// Outlined Button
UIButton.outlined(
    as: primaryButton,
    label: "Outlined Button",
    onPressed: () => print('Call API'),
),

// Solid Button
UIButton.solid(
    as: primaryButton,
    label: "Solid Button",
    onPressed: () => print('Call API'),
),


// Native Button
UIButton.native(
    label: "Button",
    onPressed: () => print('Call API'),
),


```



## `UIHeading`

This class can be used to create custom headings or text content.

To create default styles for the heading you need to create a class of type `UIHeadingDefaults`.

You can have a separated directory where you add all your default styles.


```
// styles/headings.dart

final articleTitle = UIHeadingDefaults(
    heading: 2,
    color: Colors.pink,
    fontWeight: FontWeight.bold,
);

```
We can also add custom styles to UIHeading as well

```
/// Use Google Fonts to set font family and extend stylyes 

final articleTitleLato = UIHeadingDefaults(
    color: Colors.pink,
    style: GoogleFonts.lato(
      fontSize: 40.0,
    ),
);


```

Then use the headings anywhere in your application. 
```
import 'styles/headings.dart'

// Use articleTitle
UIHeading(
    as: articleTitle,
    text: 'Article Title',
),


// Use articleTitleLato
UIHeading(
    as: articleTitleLato,
    text: 'Big title using font Lato',
),
```


## `UITextField`

This class renders a input text field.


There are two kind of text fields you can choose from:
```
UITextField(),
UITextField.native(),
```

To create default styles for the text field you need to create a class of type `UITextFieldDefaults`.

You can have a separated directory where you add all your default styles.

```
// styles/inputs.dart


final primaryInput = UITextFieldDefaults(
  borderColor: Colors.black45,
  borderRadius: 8,
  borderType: UIBorderType.outlineBorder,
  borderWidth: 2.0,
  hintColor: Colors.black54,
  bgColor: Colors.white,
);

```

Then use the inputs anywhere in your application. 
```
import 'styles/inputs.dart'

UITextField(
    as: primaryInput,
    hint: 'Email',
),

// Native Text Field
UITextField.native(
    hint: 'Email',
),

```








## `UIActionSheet`


This class creates a Native Action Sheet.

Compared with the other classes in this package,`UIActionSheet` is a bit more verbose.
However you write once for all platforms.

### How to use:

Create a function that calls `UIActionSheet.show()`.

The actions need to be of type `UIAction`.

Call the function when you need it (eg.: on tap on a button)

See example below:

```
// Creates a Native Action Sheet Factory

void _openActionSheet(BuildContext context) {
  UIActionSheet.show(
    context,

    /// TITLE
    title: UIHeading(
      text: 'Select you favorite color',
      color: Colors.blue,
      textAlign: TextAlign.center,
      heading: 5,
    ),

    /// CONTENT
    content: Text('We will use the color on your profile.'),

    /// ACTIONS
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

    /// CANCEL BUTTON
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

// Will open  action sheet based on the current OS

UIButton.solid(
    as: solidButtonStyles,
    label: "Open Action SHeet",
    onPressed: () => _openActionSheet(context),
),

```

## `UIDialog`


This class creates a Native Dialog.

Compared with the other classes in this package,  `UIDialog` is a bit more verbose.
However you write once for all platforms.


### How to use:

Create a function that calls `UIDialog.show()`.

The actions need to be of type `UIAction`.

Call the function when you need it (eg.: on tap on a button)

See example below:

```
// Creates a Native Dialog Factory

void _openDialog(BuildContext context) {
  UIDialog.show(
    context,

    /// TITLE
    title: Text('Are you sure?'),

    /// CONTENT
    content: Text('You cannot reverse this action.'),

    /// ACTIONS
    actions: [
      UIAction(
        child: Text('YES'),
        onPressed: () => print('YES'),
      ),
      UIAction(
        child: Text('NO'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ],
  );
}

// Will open a dialog based on the current OS

UIButton.solid(
    as: solidButtonStyles,
    label: "Open Dialog",
    onPressed: () => _openDialog(context),
),
```


If you find any bug or want to request a feature, feel free to open an issue on Github.

https://github.com/nobrefelipe/flutter_ui_toolkit/issues


I will be improving this package bit by bit and will always try to keep it simple and objective.

If you want to connect with me, send a request on Linkedin:

https://www.linkedin.com/in/felipe-nobre/

### Thanks for watching :)



