// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:html';
import 'dart:math' as math;
void main() {
  querySelector('#sample_click_id') 
  ..text = '戳我点名'
  ..onClick.listen(reverseText);
    
  //querySelector('#sample_click_id') .text = '开始点名!';
  //querySelector('#sample_click_id').onClick.listen(reverseText);
}

void reverseText(MouseEvent event) {
  var studentmap = {
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
  18:   '杨芙蓉',
};
 var random=new math.Random().nextInt(19);
 // 这里使用var random=new math.Random();random.nextInt(19);为什么不可以呢？（dart官网上查到的格式是这样的）
  querySelector('#sample_text_id').text = '姓名:' + studentmap[random].toString();
  querySelector('#sample_studentid_id').text='学号:' + random.toString();
}