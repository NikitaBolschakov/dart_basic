extension RootNumber on num {
  calculateRoot(int num) {
    if (num.isNaN) {
      return null;
    }

    double squareRoot = num / 2;
    double temp = 0;

    while (squareRoot != temp) {
      temp = squareRoot;
      //итерационная формула Герона 
      squareRoot = (num / squareRoot + squareRoot) / 2;
    }

    return squareRoot;
  }

  calculateRootNthDegree(int num, n) {
    if (num.isNaN) {
      return null;
    } 

    //начальное предположение
    double x = num / 2;
    double temp = 0;

    while (x != temp) {
      temp = x;
      //быстросходящийся алгоритм нахождения корня n-ной степени
      x = 1/n * ((n - 1) * x + (num / power(x, n - 1)));
    }

    try {
      return x;
    } catch (e) {
      print(e);
    }
    
  }

 power(x, y) {
    if (y == 0) {
      return 1;
    } else if (y % 2 == 0) {
      return power(x, y ~/ 2) * power(x, y ~/ 2);
    } else {
      return x * power(x, y ~/ 2) * power(x, y ~/ 2);
    }
  }
}