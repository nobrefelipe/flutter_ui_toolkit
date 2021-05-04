# Flutter UI Toolkit
```
The development of this  package is still in progress. More widgets are to come.
However because the widgets are purely Flutter widgets, you can use it with no fear :)
```

Flutter UI Toolkit is a pre-built collection of the most used widgets to create apps.
The idea is that you can use these widgets the way you use classes in HTML and CSS.

The widgets can receive an argument called `as` that will carry the widget's styles.
The advantage of this method is that we don't need to repeat styling every time we create a new widget.

In addition to custom styles, this package alo provides `native` look in feel to the widgets.
THis is useful when you want to have one widget that displays the right look in feel based on the Platform.


### Examples

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

### Widget and Roadmap

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
            <td>Modals</td>
            <td style="color: #ff3434;">in progress</td>
        </tr>
       <tr>
            <td>Dialogs</td>
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


