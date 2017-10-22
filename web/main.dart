// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' ;
ButtonElement genButton;

//很好，尝试使用类来做。加油！
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
//对包的使用有误，想想：quesrySelector怎么不用html.querySelecto？
 var number=new math.Random().nextInt(10);
  querySelector('#name').text = Student(number,name);
}

void main() {
  querySelector('clickButton').text = '点名小程序.';
  ..onClick.listen(Click)
  //..onClick的用法有误，请查看案例。dart语句语法有误，请查看案例
}
