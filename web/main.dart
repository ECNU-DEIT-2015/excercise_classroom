// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' show Random;
ButtonElement genButton;

class Student{
  static final Random indexGen = new Random();
  final int id;
  String name;
  Student(this.id,this.name);
  String toString()=>'$id,$name';
List<Student> students=[new Student(1,'Apple'),new Student(2,'Banana'),new Student(3,'Orange'),new Student(4,'Watermelon'),
new Student(5,'Pear'),new Student(6,'Lemon'),new Student(7,'Mango')];
}



void Click(Event e){
 var number=new math.Random().nextInt(10);
  querySelector('#name').text = Student(number,name);
}

void main() {
  querySelector('clickButton').text = '点名小程序.';
  ..onClick.listen(Click)
}
