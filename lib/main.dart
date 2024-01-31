import 'package:dart_classes/classes/RootNumber.dart';
import 'classes/CounterWords.dart';
import 'classes/NumberConversion.dart';
import 'classes/ParseInt.dart';
import 'classes/Point.dart';
import 'classes/PrimeFactors.dart';
import 'classes/RiemannIntegral.dart';
import 'classes/TransformInNumbers.dart';
import 'classes/DelimetersCalculator.dart';
import 'classes/User.dart';

void main(List<String> arguments) {
  //задание 1
  final DelimetersCalculator delimetersCalculator = DelimetersCalculator();
  print(
      'НОД: ${delimetersCalculator.gcd(156, 234)} и НОК: ${delimetersCalculator.lcm(156, 234)}.');

  final PrimeFactors primeFactors = PrimeFactors();
  print('Простые множители числа: ${primeFactors.decompose(99)}.');

  //задание 2
  final NumberConversion numberConversion = NumberConversion();
  print(
      'Из двоичного в десятичное: ${numberConversion.binaryToDecimal(1010110)}.');
  print('Из десятичного в двоичное: ${numberConversion.decimalToBinary(86)}.');

  //задание 3
  final ParseInt parseInt = ParseInt();
  print(
      'Массив чисел из строки: ${parseInt.buildCollection('Intel Core 9 10980 2400 МГц 175A 76 ')}.');

  //задание 4
  final CounterWords counterWords = CounterWords();
  print('Подсчет слов в коллекции: ${counterWords.counter([
        'cap',
        'map',
        'car',
        'ios',
        'map',
        'cap',
        'map',
        'ios',
        'ios',
        'ios',
      ])}.');

  //задание 5
  final TransformInNumbers transformInNumbers = TransformInNumbers();
  print('Массив чисел из строки: ${transformInNumbers.transform([
        'one',
        'cat',
        'two',
        'dog',
        'three',
        'four',
        'ios',
        'map',
        'cap',
        'five',
        'six',
        'seven',
        'ios',
        'map',
        'cap',
        'eight',
        'nine',
        'zero',
        'zero',
        'zero',
        'zero',
      ])}.');

  //задание 6
  Point point1 = Point(23, 45, 36);
  Point point2 = Point(445, 566, 776);
  double distance = point1.distanceTo(point2);
  print('Расстояние между точкой 1 и точкой 2: $distance');

  Point pointA = Point(6, 5, 6);
  Point pointB = Point(8, 8, 7);
  Point pointC = Point(3, 1, 4);

  double area = pointA.areaTriangle(pointA, pointB, pointC);
  print('Площадь треугольника: $area');

  Point origin = Point.origin();
  print('Начало координат: (${origin.x}, ${origin.y}, ${origin.z})');

  Point unitVector = Point.unitVector();
  print(
      'Единичный вектор: (${unitVector.x}, ${unitVector.y}, ${unitVector.z})');

  //задание 7
  num rootNumber = 0;
  print(
      'Корень числа заданной степени: ${rootNumber.calculateRootNthDegree(59049, 5)}.');

  //задание 8
  AdminUser admin = AdminUser('admin@yandex.ru');
  GeneralUser general = GeneralUser('general@mail.com');
  User simpleUser = User('simple@rambler.ru');

  var userManager = UserManager();

  userManager.addUser(admin);
  userManager.addUser(general);
  userManager.addUser(simpleUser);

  print(userManager.displayUserEmails(userManager.users));

  //задание 9
  f(double x) => x * x; // функция, для которой вычисляем интеграл
  RiemannIntegral riemann = RiemannIntegral();
  double integral = riemann.calculate(f, 0, 2, 2000);
  print('Значение определенного интеграла: $integral');
}
