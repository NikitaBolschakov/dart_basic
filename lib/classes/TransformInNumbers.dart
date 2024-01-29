import 'package:unique_list/unique_list.dart';

class TransformInNumbers {
  transform(list) {
    List<String> numbers = [
      'one',
      'two',
      'three',
      'four',
      'five',
      'six',
      'seven',
      'eight',
      'nine',
      'zero',
    ];

    List result = UniqueList();

    for (int i = 0; i < list.length; i++) {
      for (int j = 0; j < numbers.length; j++) {
        if (list[i] == numbers[j]) {
          result.add(list[i]);
        }
      }
    }

    List<dynamic> check() {
      for (int i = 0; i < result.length; i++) {
        if (result[i] == 'one') {
          result.add(1);
          result.remove('one');
          check();
        } else if (result[i] == 'two') {
          result.add(2);
          result.remove('two');
          check();
        } else if (result[i] == 'three') {
          result.add(3);
          result.remove('three');
          check();
        } else if (result[i] == 'four') {
          result.add(4);
          result.remove('four');
          check();
        } else if (result[i] == 'five') {
          result.add(5);
          result.remove('five');
          check();
        } else if (result[i] == 'six') {
          result.add(6);
          result.remove('six');
          check();
        } else if (result[i] == 'seven') {
          result.add(7);
          result.remove('seven');
          check();
        } else if (result[i] == 'eight') {
          result.add(8);
          result.remove('eight');
          check();
        } else if (result[i] == 'nine') {
          result.add(9);
          result.remove('nine');
          check();
        } else if (result[i] == 'zero') {
          result.add(0);
          result.remove('zero');
          check(); 
        } 
      }
      return result;
    }

    check(); 
    return result;
  }
}