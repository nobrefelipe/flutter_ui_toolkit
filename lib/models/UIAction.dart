class UIAction<T> {
  UIAction({
    required this.child,
    required this.onPressed,
  });

  T child;
  Function onPressed;
}
