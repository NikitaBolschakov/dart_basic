class ParseInt {
  List buildCollection(string) {
    List num = [];
    var str = string.split(' ');
    for (var i = 0; i < str.length; i++) {
      if (int.tryParse(str[i]) != null) {
        num.add(str[i]);
      }
    }
    return num;
  }
}