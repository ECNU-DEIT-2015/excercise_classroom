// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;

UListElement toDoList;
ButtonElement toDoStart, toDoDelete;

void main() {
  toDoStart = querySelector('#click');
  toDoStart.onClick.listen(rollcall);
  toDoList = querySelector('#to-do-list');
  toDoDelete = querySelector('#delete');
  toDoDelete.onClick.listen(delete);
}

void delete(MouseEvent event) {
  toDoList.children.clear();
}

void rollcall(MouseEvent event) {
  var random=new math.Random().nextInt(20);
  var studentlist = {
// Keys  Values
  0:  '10152510231  吴清泽',      1:  '10154507101  韩庆慧',
  2:  '10154507102  谢函',        3:  '10154507103  宋金阳',
  4:  '10154507104  李佳璇',      5:  '10154507107  谢琪',
  6:  '10154507109  杨芙蓉',      7:  '10154507110  荆泽宇',
  8:  '10154507112  黄大龙',      9:  '10154507113  李敏',
  10: '10154507114  刘冠群',      11: '10154507117  林凌',
  12: '10154507119  颜欢',        13: '10154507121  彭茂源',
  14: '10154507123  张思宁',      15: '10154507124  崔红洋',
  16: '10154507127  汤夏颖',      17: '10154507132  苏颖晞',
  18: '10154507134  姜宇轩',      19: '10154507138  于潇雪',
};
  querySelector('#sample_text_id').text = '学号 姓名：' + studentlist[random].toString();
  var newToDo = new LIElement();
  newToDo.text= studentlist[random].toString();
  toDoList.children.add(newToDo);
}
