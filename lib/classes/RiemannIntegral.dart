class RiemannIntegral {
  // ∫_a^b f(x)   res ≈ (b-a) * f(a+b/2)
  //f - f(x) — подынтегральная функция.
  //a, b - нижний и верхний пределы интегрирования соответственно.
  //n - количество разбиений
  //(b-a) - ширина интервала интегрирования.

  double calculate(Function f, double a, double b, int n) {
    double dx = (b - a) / n; //dx - длина одного отрезка
    double result = 0;

    for (int i = 0; i < n; i++) {
      double x1 = a + i * dx; //начало отрезка
      double x2 = a + (i + 1) * dx; //конец отрезка
      double xm = (x1 + x2) / 2; //середина интервала интегрирования (отрезка).

      if (_isDiscontinuous(f, xm)) {
        continue; // пропускаем точки разрыва
      }

      result += f(xm) * dx; // f * ((x1 + x2) / 2) * (b-a)
    }

    return result;
  }

  bool _isDiscontinuous(Function f, double x) {
    const double eps = 1e-6; 

    /* вычисляем разность между значениями функции f 
    в точках (x + eps) и (x - eps), где eps - очень маленькое положительное число 
    (в данном случае 1e-6). Затем метод проверяем, превышает ли абсолютное 
    значение этой разности значение EPSILON.
    */
    if ((f(x + eps) - f(x - eps)).abs() > eps) {
      return true; // Точка разрыва
    }
    return false;
  }
}
