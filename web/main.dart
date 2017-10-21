// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;
import 'dart:math' show Random;

void main() {
  querySelector('#button').onClick.listen(reverseText);
}

void reverseText(Event e) {
  Random Rand = new Random();
  int randnumber = Rand.nextInt(3);
  var nobleGases = ["学生1","学生2","学生3"];
  querySelector('#sample_text_id').text = nobleGases[randnumber];
}
