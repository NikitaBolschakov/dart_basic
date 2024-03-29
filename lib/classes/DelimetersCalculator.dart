class DelimetersCalculator {
  int gcd(int a, int b) {
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

  int lcm(int a, int b) {
    return (a * b) ~/ gcd(a, b);
  }
}