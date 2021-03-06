## [0.0.3+8] - 12/05/2021.
## [0.0.3+7] - 12/05/2021.
* Add UIBottomSheet

```
// Set up the bottom sheet

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

// Open the bottom sheet 

UIButton.native(
  label: 'Open Bottom Sheet',
  onPressed: () async {

    // OPEN BOTTOM SHEET
    // and wait until it's closed
    await _openBottomSheet(context);

    // proceed
    print('Bottom sheet closed');
  },
),
```

## [0.0.3+6] - 12/05/2021.
* README - fixed content link anchors
## [0.0.3+5] - 12/05/2021.
* README - add content links
## [0.0.3+4] - 11/05/2021.
* minor tweaks
## [0.0.3+3] - 11/05/2021.
* Added default padding capabilities to button
## [0.0.3+2] - 11/05/2021.
* Fixed button padding
## [0.0.3+1] - 10/05/2021.
* Added UIContainer widget
```
UIContainer(
  as: errorContainer,
  child: Text('This is a box with a nice shadow\nand a cool rounded border.'),
),
```
## [0.0.3] - 10/05/2021.

* Use UIAction for actions in UIDialog and UIActionSheet
* Improve documentation
## [0.0.2+7] - 08/05/2021.

* Fix styles for UIHeading
## [0.0.2+6] - 08/05/2021.
* add override styles for UIHeading
## [0.0.2+5] - 08/05/2021.

## [0.0.2+4] - 08/05/2021.
## [0.0.2+3] - 06/05/2021.
* Use universal_io for web support
## [0.0.2] - 06/05/2021.

* Upgraded to null-safety
## [0.0.1+6] - 06/05/2021.

* Use new buttons styling.
* Remove FlatButtons.
## [0.0.1+5] - 05/05/2021.

* Added UIDialog
• Added UIActionSHeet
## [0.0.1+4] - 05/05/2021.

* Add example screenshots to readme
## [0.0.1+3] - 05/05/2021.

* Fixed readme typos
## [0.0.1+2] - 04/05/2021.

* Improved UIButton widget
* Created UIHeading widget
* Created UITextField widget
* Add documentation to readme
## [0.0.1+1] - 28/04/2021.

* Created UIButton widget
