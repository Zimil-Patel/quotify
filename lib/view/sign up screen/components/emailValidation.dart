validateEmail(String? value){
  if (value!.isEmpty || value == '') {
    return 'Please enter email!';
  } else {
    var g = '';
    var gmail = 'moc.liamg@';
    var gmai = 0;
    var sepcialChecking = 0;

    g = value;
    var len = g.length;
    var k = 0;
    if (len >= 11) {
      for (var j = len - 1; j > len - 11; j--) {
        if (g[j] != gmail[k]) {
          gmai = 1;
        }
        k++;
      }
      if (gmai == 0) {
        for (var j = 0; j < len - 11; j++) {
          if ((g.codeUnitAt(j) >= 33 && g.codeUnitAt(j) <= 47) ||
              (g.codeUnitAt(j) >= 58 && g.codeUnitAt(j) <= 64)) {
            sepcialChecking = 1;
          }
        }
        if (sepcialChecking == 0) {

        } else {
          return 'Invalid email format';
        }
      } else {
        return 'Invalid domain name!';
      }
    } else {
      return 'Please enter email!';
    }
  }
  return null;
}