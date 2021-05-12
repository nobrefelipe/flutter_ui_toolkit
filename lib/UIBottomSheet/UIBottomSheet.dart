import 'package:flutter/material.dart';

class UIBottomSheet {
  static Future show({
    required BuildContext context,
    required Widget? content,
    Widget? trailing,
    bool enableDrag = true,
    bool floatted = false,
    double borderRadus = 20.0,
    bool hideHead = false,
  }) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isDismissible: true,
      isScrollControlled: true,
      enableDrag: enableDrag,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadus),
            color: floatted ? Colors.transparent : Colors.white,
          ),
          margin: EdgeInsets.fromLTRB(
            floatted ? 10.0 : 0.0,
            0.0,
            floatted ? 10.0 : 0.0,
            floatted ? 24.0 : 0,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadus),
            child: Container(
              width: double.infinity,
              color: floatted ? Colors.white : Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!hideHead)
                    SizedBox(
                      height: 50,
                      child: Stack(
                        children: [
                          ///
                          /// SWIPE INDICATOR
                          ///
                          Align(
                            alignment: Alignment.topCenter,
                            child: _swipeIndicator,
                          ),

                          ///
                          /// TRAILING
                          ///
                          Positioned(
                            right: 0,
                            top: 0,
                            child: trailing ?? const SizedBox.shrink(),
                          ),
                        ],
                      ),
                    ),

                  ///
                  /// CONTENT
                  ///
                  Container(
                    width: double.infinity,
                    padding: MediaQuery.of(context).viewInsets,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.8,
                    ),
                    child: SingleChildScrollView(
                      child: content,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Container get _swipeIndicator => Container(
      height: 5.0,
      width: 80.0,
      margin: const EdgeInsets.only(
        top: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black26,
      ),
    );
