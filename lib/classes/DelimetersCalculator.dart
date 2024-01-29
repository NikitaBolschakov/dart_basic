class DelimetersCalculator {
  int gcd(a, b) {
    while (a > 0 && b > 0) {
      if (a >= b) {
        a = a % b;
      } else {
        b = b % a;
      }
    }
    int res = a > b ? a : b;
    return res;
  }

  dynamic lcm(a, b) {
    return (a * b) ~/ gcd(a, b);
  }
}