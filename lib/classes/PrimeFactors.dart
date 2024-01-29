class PrimeFactors {
  List<int> decompose(int inputNumber) {
    // объявляем внутреннюю функцию — она проверяет, простое число ей передали или нет
    bool isPrime(int m) {
      for (int i = 2; i < m; i++) {
        // если число делится нацело на любое число из этого диапазона, значит, оно не простое
        if (m % i == 0) {
          return false;
        }
      }
      return true;
    }

    List<int> result = [];

    // точно так же проходим все числа от 2 до введённого числа
    for (int j = 2; j < inputNumber; j++) {
      // если введённое число делится нацело и делитель — простое число, добавляем его в массив
      if (inputNumber % j == 0 && isPrime(j)) {
        result.add(j);
      }
    }

    return result;
  }
}