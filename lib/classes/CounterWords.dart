class CounterWords {
  counter(list) {
    var map = Map();
    list.forEach((el) {
      if (!map.containsKey(el)) {
        map[el] = 1;
      } else {
        map[el] += 1;
      }
    });
    return map;
  }
}