class NumberConversion {
  int binaryToDecimal(int n) {
    int num = n;
    int decValue = 0;
    int base = 1;
    int temp = num;
    while (temp >= 1) {
      int lastDigit = temp % 10;
      temp = temp ~/ 10;
      decValue += lastDigit * base;
      base = base * 2;
    }
    return decValue;
  }

  decimalToBinary(v) {
    int num = v;
    List<int> binary = [];

    while (num >= 2) {
      if (num % 2 == 0) {
        binary.add(0);
        num = num ~/ 2;
      } else {
        binary.add(1);
        num = num ~/ 2;
      }
    }

    if (num == 1) {
      binary.add(1);
    }
    if (num == 0) {
      binary.add(0);
    }
    return binary.reversed.join();
  }
}