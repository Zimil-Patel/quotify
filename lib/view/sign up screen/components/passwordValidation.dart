validatePassword(String? value) {
  if (value!.isEmpty || value == '') {
    return 'Enter strong password!';
  } else {
    var upparcaseChecking = 0;
    var lowercaseChecking = 0;
    var numberChecking = 0;
    var sepcialCharcterChecking = 0;
    var len = value.length;
    if (len >= 8 && len <= 32) {
      for (var i = 0; i < len; i++) {
        if (value.codeUnitAt(i) >= 65 && value.codeUnitAt(i) <= 90) {
          upparcaseChecking = 1;
        }
      }
      if (upparcaseChecking == 1) {
        for (var i = 0; i < len; i++) {
          if (value.codeUnitAt(i) >= 97 && value.codeUnitAt(i) <= 122) {
            lowercaseChecking = 1;
          }
        }
        if (lowercaseChecking == 1) {
          for (var i = 0; i < len; i++) {
            if (value.codeUnitAt(i) >= 48 && value.codeUnitAt(i) <= 57) {
              numberChecking = 1;
            }
          }
          if (numberChecking == 1) {
            for (var i = 0; i < len; i++) {
              if ((value.codeUnitAt(i) >= 33 && value.codeUnitAt(i) <= 47) ||
                  (value.codeUnitAt(i) >= 58 && value.codeUnitAt(i) <= 64)) {
                sepcialCharcterChecking = 1;
              }
            }
            if (sepcialCharcterChecking == 1) {
            } else {
              return 'Enter strong password!';
            }
          } else {
            return 'Enter strong password!';
          }
        } else {
          return 'Enter strong password!';
        }
      } else {
        return 'Enter strong password!';
      }
    } else {
      return 'Enter strong password!';
    }
  }

  return null;
}
