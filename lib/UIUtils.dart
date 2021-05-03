import 'dart:ui';
import 'models/UIButtonDefaults.dart';
import 'models/UIDefaults.dart';

class UIUtils {
  ///
  /// Get Double
  /// returns a [double] based on [UIButtonDefaults] or overridden properties
  static double getDouble(UIDefaults defaults, double defaultProp, double overrideWith, double defaultTo) {
    /// if defaults is defined
    if (defaults != null) {
      ///
      /// Check if an override property is set
      /// if so, use it
      if (overrideWith != null) return overrideWith;

      /// if the current prop is not set in [UIButtonDefaults]
      /// use override prop or a default one
      if (defaultProp == null) {
        return overrideWith ?? defaultTo;
      }

      /// If the passed default prop is set, use it.
      return defaultProp;
    }

    /// if defaults is null
    /// try to set [overrideWith] orhterwuse defaults to [defaultTo]
    return overrideWith ?? defaultTo;
  }

  /// Get Color
  /// returns a [Color] based on [UIButtonDefaults] or overridden properties
  static Color getColor(UIDefaults defaults, Color defaultProp, Color overrideWith, Color defaultTo) {
    /// if defaults is defined
    if (defaults != null) {
      ///
      /// Check if an override property is set
      /// if so, use it
      if (overrideWith != null) return overrideWith;

      /// if the current prop is not set in [UIButtonDefaults]
      /// use override prop or a default one
      if (defaultProp == null) {
        return overrideWith ?? defaultTo;
      }

      /// If the passed default prop is set, use it.
      return defaultProp;
    }

    /// if defaults is null
    /// try to set [overrideWith] orhterwuse defaults to [defaultTo]
    return overrideWith ?? defaultTo;
  }
}
