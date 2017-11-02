// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:html';
import 'dart:math' as math;
UListElement toDoList;

void main() {
  querySelector('#anniu').onClick.listen(reverseText);  
  toDoList=querySelector('#to-do-list'); 
  querySelector('#button').onClick.listen(clear);     
}

void clear(Event e){
  toDoList.children.clear();
}

void reverseText(MouseEvent event) {
  var studentmap = {
// Keys  Values
  0:   '韩庆慧',
  1:   '谢函',
  2:   '宋金阳',
  3:   '李佳璇',
  4:   '谢琪',
  5:   '杨芙蓉',
  6:   '荆泽宇',
  7:   '黄大龙',
  8:   '李敏',
  9:   '刘冠群',
  10:  '林凌',
  11:   '彭茂源',
  12:   '张思宁',
  13:   '崔红洋',
  14:   '汤夏颖',
  15:   '苏颖晞',
  16:   '姜宇轩',
  17:   '于潇雪',
  18:   '权宁真',
  19:   '吴清泽',
  20:   '10154507101',
  21:   '10154507102',
  22:   '10154507103',
  23:   '10154507104',
  24:   '10154507107',
  25:   '10154507109',
  26:   '10154507110',
  27:   '10154507112',
  28:   '10154507113',
  29:   '10154507114',
  30:   '10154507117',
  31:   '10154507121',
  32:   '10154507123',
  33:   '10154507124',
  34:   '10154507127',
  35:   '10154507132',
  36:   '10154507134',
  37:   '10154507138',
  38:   '10152510231',
  39:   '10152510133',
};
 var random=new math.Random().nextInt(19);
  querySelector('#name').text = '姓名:' + studentmap[random].toString();
  querySelector('#studentid_id').text='学号:' +  studentmap[random+20].toString();
  var newToDO=new LIElement();
  newToDO.text=studentmap[random].toString();
  toDoList.children.add(newToDO);
  newToDO.onClick.listen((e)=>newToDO.remove());
}

