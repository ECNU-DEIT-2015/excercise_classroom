// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:html';
import 'dart:math' as math;
void main() {
  querySelector('#sample_text_id') 
  ..text = '开始点名!'
  ..onClick.listen(reverseText);
}

void reverseText(MouseEvent event) {
  var nobleGases = {
// Keys  Values
  0 :   '韩庆慧',
  1:   '宋金阳',
  2:   '李佳璇',
  3:   '林凌',
  4:   '刘冠群',
  5:   '汤夏颖',
  6 :   '彭茂源',
  7:   '黄大龙',
  8:   '荆泽宇',
  9:   '于潇雪',
  10:   '姜宇轩',
  11:   '苏颖晞',
  12:   '吴清泽',
  13:   '李敏',
  14:   '崔红洋',
  15:   '张思宁',
  16:   '谢函',
  17:   '权宁真',
};
 var rand=new math.Random().nextInt(6);
  querySelector('#sample_text_id').text = rand.toString()+' '+' '+nobleGases[rand].toString();

  //我做了点修改
  /*querySelector("#sample_text_id").text="new text";*/
}
