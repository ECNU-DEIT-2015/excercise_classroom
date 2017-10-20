// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;
void main() {
  querySelector('#sample_text_id')
    ..text = '点击点名'
    ..onClick.listen(reverseText);
}

void reverseText(MouseEvent event) {
  var randomNumber = new math.Random().nextInt(39);
  var nobleGases = {
// Keys  Values
  1:   '韩庆慧', 2:   '谢函',
  3:   '宋金阳', 4:   '李佳璇',
  5:   '空',     6:   '空',
  7:   '谢琪',   8:   '空',
  9:   '杨芙蓉', 10:   '荆泽宇',
  11:   '彭丽',  12:   '黄大龙',
  13:   '李敏',  14:   '刘冠群',
  15:   '空',    16:   '空',
  17:   '林凌',  18:   '空',
  19:   '颜欢',  20:   '空',
  21:   '空',    22:   '朋秋霞',
  23:   '张思宁', 24:   '崔红洋',
  25:   '董紫琪', 26:   '李雨辰',
  27:   '汤夏颖', 28:   '武美玖',
  29:   '吴兵可', 30:   '空',
  31:   '任子佳', 32:   '苏颖晞', 
  33:   '宋婷袅', 34:   '姜宇轩',
  35:   '空',     36:   '周雨萌',
  37:   '空',     38:   '于潇雪', 
   };

  //我做了点修改
  querySelector("#sample_text_id").text='学号：'+randomNumber.toString()
  +' '+' '+' '+'姓名：'+nobleGases[randomNumber];
  
}
