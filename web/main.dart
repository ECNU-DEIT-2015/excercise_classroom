// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:html';
import 'dart:math' as math;
void main() {
  querySelector('#sample_text_id')
    ..text = 'Click me!'
    ..onClick.listen(reverseText);
}

void reverseText(MouseEvent event) {
  var nobleGases = {
// Keys  Values
  0 :   'helium',
  1:   'neon',
  2:   'argon',
  3:   'helium',
  4:   'neo',
  5:   'arg',
};
 var rand=new math.Random().nextInt(6);
  querySelector('#sample_text_id').text = rand.toString()+nobleGases[rand].toString();

  //我做了点修改
  /*querySelector("#sample_text_id").text="new text";*/
}
