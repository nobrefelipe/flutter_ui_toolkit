class DialogAction<T> {
  DialogAction({
    required this.child,
    required this.onPressed,
  });

  T child;
  Function onPressed;
}
