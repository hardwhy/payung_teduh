class Util {
  static bool falsyChecker(dynamic value) {
    bool isEmpty = false;
    bool isZero = false;
    bool isNull = value == null;
    if (value is int || value is double || value is num) {
      isZero = value == 0 || value == 0.0;
    } else if (!isNull && value is bool) {
      return isEmpty = !value;
    } else {
      try {
        if (!isNull) isEmpty = value?.isEmpty;
      } catch (e) {
        isEmpty = false;
      }
    }
    return isNull || isEmpty || isZero;
  }
}