// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;

var studentname = {
// Keys  Values
  0:  '吴清泽',      1:  '韩庆慧',
  2:  '谢函',        3:  '宋金阳',
  4:  '李佳璇',      5:  '谢琪',
  6:  '杨芙蓉',      7:  '荆泽宇',
  8:  '黄大龙',      9: '李敏',
  10: '刘冠群',      11: '林凌',
  12: '颜欢',        13: '彭茂源',
  14: '张思宁',      15: '崔红洋',
  16: '汤夏颖',      17: '苏颖晞',
  18: '姜宇轩',      19: '于潇雪',
};
  var studentnumber = {
// Keys  Values
  0:  '10152510231',        1:  '10154507101',
  2:  '10154507102',        3:  '10154507103',
  4:  '10154507104',        5:  '10154507107',
  6:  '10154507109',        7:  '10154507110',
  8:  '10154507112',        9:  '10154507113',
  10: '10154507114',        11: '10154507117',
  12: '10154507119',        13: '10154507121',
  14: '10154507123',        15: '10154507124',
  16: '10154507127',        17: '10154507132',
  18: '10154507134',        19: '10154507138',
};

void main() {
  querySelector('#sample_text_id')
    ..text = '点击屏幕开始点名'
    ..onClick.listen(rollcall);
}

void rollcall(MouseEvent event) {
  var random=new math.Random().nextInt(20);
  querySelector('#sample_text_id').text = '姓名:' + studentname[random].toString();
  querySelector('#sample_studentid_id').text='学号:' + studentnumber[random].toString();
     
}