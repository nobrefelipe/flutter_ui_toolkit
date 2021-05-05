# Flutter UI Toolkit
```
The development of this  package is still in progress. More widgets are to come.
However because the widgets are purely Flutter widgets, you can use it with no fear :)
```

Flutter UI Toolkit is a pre-built collection of the most used widgets to create apps.
The idea is that you can use these widgets the way you use classes in HTML and CSS.

The widgets can receive an argument called `as` that will carry the widget's styles.
The advantage of this approach is that we don't need to repeat styling every time we create a new widget.

In addition to custom styles, this package also provides `native` look and feel to the widgets.
This is useful when you want to have one widget that displays the right look and feel based on the Platform.


### Examples

<table>
<tr>
<td><img src="https://firebasestorage.googleapis.com/v0/b/weddy-app-1.appspot.com/o/Simulator%20Screen%20Shot%20-%20iPhone%2012%20Pro%20-%202021-05-05%20at%2021.45.34.png?alt=media&token=17db3b6e-04b1-40b6-8aff-a47183fba202" width="300"></td>
<td><span style="width: 40px"></span></td>
<td><img src="https://firebasestorage.googleapis.com/v0/b/weddy-app-1.appspot.com/o/android.png?alt=media&token=c8b949d8-de64-4cb9-a7c7-2fa50a395fca" width="300"></td>
</tr>
</table>




#### Outlined button with default styles
```
/// Set primary button styles

final primary = UIButtonDefaults(
  elevation: 10.0,
  borderRadius: 50.0,
  borderColor: Colors.purple,
  borderWidth: 2.0,
  labelColor: Colors.purple,
  bgColor: Colors.white,
  widthFactor: 0.5, // sets the button width
);

UIButton.outlined(
    as: primary,
    label: "Button",
    onPressed: () => print('Call API'),
    //
    // You can override the labelColor set in primary
    // by defining it again here
    labelColor: Colors.blue,
),


```
#### Native button
```
UIButton.native(
    label: "Button",
    onPressed: () => print('Call API'),
),

```

#### Heading
```
/// Set article title styles

final articleTitle = UIHeadingDefaults(
    heading: 2,
    color: Colors.pink,
    fontWeight: FontWeight.bold,
);

UIHeading(
    as: articleTitle,
    text: 'Heading 2',
    //
    // You can override the color set in mainTitle
    // by defining it again here
    color: Colors.blue, 
),
```

#### Text input
```
/// Set primary text input styles

final primaryInput = UITextFieldDefaults(
  borderColor: Colors.black,
  borderRadius: 20,
  borderType: UIBorderType.outlineBorder,
  borderWidth: 2.0,
  focusBorderColor: Colors.green,
  hintColor: Colors.white,
  bgColor: Colors.purple.withOpacity(0.6),
);

UITextField(
    as: primaryInput,
    hint: 'Email',
),

```

#### Native text input
```
UITextField.native(
    hint: 'Email',
),
```

#### Dialogs
```
/// Creates a Native Dialog Factory

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
          /// Call API
          callApi();

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

/// Will open a dialog based on the current OS

UIButton.solid(
    as: solidButtonStyles,
    label: "Open Dialog",
    onPressed: () => _openDialog(context),
),
```

### Widgets and Roadmap

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
            <td>Modals</td>
            <td style="color: #ff3434;">in progress</td>
        </tr>
        <tr>
            <td>Action Sheets</td>
            <td style="color: #ff3434;">in progress</td>
        </tr>
        <tr>
            <td>Bottom Sheets</td>
            <td style="color: #ff3434;">in progress</td>
        </tr>
    </tbody>
</table>


