class CounterWords {
  Map<String, dynamic> counter(List<String> list) {
    Map<String, dynamic> map = {};
    for (String el in list) {
      if (!map.containsKey(el)) {
        map[el] = 1;
      } else {
        map[el] += 1;
      }
    }
    return map;
  }
}