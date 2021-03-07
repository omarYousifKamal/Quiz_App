import 'package:flutter/cupertino.dart';

class Person {
  String name;
  int age;
// {} lo awaya ka argumentt bakarhena bzani kama lo kamaya
// lera default valuem bakarhena
//  Person({String name, int age = 30}) {
// lera daykaya ba zore lo badast henany shtak ba bakarhenany required
  Person({String name, @required int age}) {
    this.age = age;
    this.name = name;
  }
  Person.veryOld(this.name) {
    age = 60;
  }
}

void main() {
  Person omar = new Person(name: 'omar yousif', age: 21);
  print(omar);
  Person.veryOld('max');
  print(Person.veryOld('max1'));
}
