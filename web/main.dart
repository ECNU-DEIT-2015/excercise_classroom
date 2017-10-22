// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import "dart:math";

void main() {
  querySelector('#output').text = 'Your Dart app is running.';

  var startBtn = query(".class_but");
  startBtn.onClick.listen((e) {
    start();
  });
}

start() {
  var nobleGases = new Map<String, String>();
  nobleGases["2015001"] = "A";
  nobleGases["2015002"] = "B";
  nobleGases["2015003"] = "C";
  nobleGases["2015004"] = "D";
  nobleGases["2015005"] = "E";
  nobleGases["2015006"] = "F";
  nobleGases["2015007"] = "G";
  nobleGases["2015008"] = "H";
  nobleGases["2015009"] = "I";
  var randomNum = new Random().nextInt(9);
  var number = "201500" + randomNum.toString();
  var name = nobleGases[number];
  query(".name").innerHtml = "$name";
  query(".number").innerHtml = "$number";
}
