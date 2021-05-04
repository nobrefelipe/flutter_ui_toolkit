# Flutter UI Toolkit

Flutter UI Toolkit is a pre-built collection of the most used widgets we to create apps.
The Idea is that you can use these widgets the way you use classes in HTML and CSS.

The widgets can receive an argument called `as` that will carry the widget's styles.
The advantage of this method is that we don't need to repeat styling every time we create a new widget.


#### Example
```

/// SET PRIMARY BUTTON STYLE
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
),

```

### Widgets

<table>
    <thead>
        <tr>
            <td>Widget</td>
            <td>Status</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Buttons</td>
            <td>done</td>
        </tr>
        <tr>
            <td>Headings</td>
            <td>done</td>
        </tr>
        <tr>
            <td>Buttons</td>
            <td>done</td>
        </tr>
        <tr>
            <td>Text Inputs</td>
            <td>done</td>
        </tr>
        <tr>
            <td>Modals</td>
            <td>in progress</td>
        </tr>
       <tr>
            <td>Dialogs</td>
            <td>in progress</td>
        </tr>
        <tr>
            <td>Action Sheets</td>
            <td>in progress</td>
        </tr>
        <tr>
            <td>Bottom Sheets</td>
            <td>in progress</td>
        </tr>
    </tbody>
</table>


