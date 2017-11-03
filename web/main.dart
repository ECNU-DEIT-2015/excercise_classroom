// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;
UListElement toDoList;
UListElement toDotableList;
ButtonElement deleteAll;
ButtonElement callName;
String studentname;
void main() {
  querySelector('#sample_text_id')
    ..text = '点击点名'
    ..onClick.listen(reverseText);
    
toDoList = querySelector('#sample_list_id');  
toDoList.onChange.listen(addToDoItem);
deleteAll= querySelector('#delete-all'); 
deleteAll.onClick.listen(deleteAllElements);
callName= querySelector('#call-name'); 
callName.onClick.listen(reverseText);
}

void addToDoItem(Event e){
 var nextToDo = new LIElement();
nextToDo.text=studentname;
toDoList.children.add(nextToDo); 
}
void deleteAllElements(Event e) {
  toDoList.children.clear();
}

void reverseText(MouseEvent event) {
  var randomNumber = new math.Random().nextInt(39);
  var nobleGases = {
// Keys  Values
  1:   '韩庆慧',      2:   '谢函', 
  3:   '宋金阳',      4:   '李佳璇',
  5:   '宋利',        6:   '空',
  7:   '谢琪',        8:   '张珑川',
  9:   '杨芙蓉',      10:   '荆泽宇', 
  11:   '彭丽',       12:   '黄大龙',
  13:   '李敏',       14:   '刘冠群',
  15:   '陈冠雄',     16:   '郑素清',
  17:   '林凌',       18:   '庄子凯',
  19:   '颜欢',       20:   '宗雨',
  21:   '彭茂源',     22:   '朋秋霞',
  23:   '张思宁',     24:   '崔红洋',
  25:   '董紫琪',     26:   '李雨辰',
  27:   '汤夏颖',     28:   '武美玖',
  29:   '吴兵可',     30:   '祁馨禾',
  31:   '任子佳',     32:   '苏颖晞', 
  33:   '宋婷袅',     34:   '姜宇轩',
  35:   '刘思延',     36:   '周雨萌',
  37:   '徐晟伟',     38:   '于潇雪', 
   };

studentname=nobleGases[randomNumber];

  //我做了点修改
  querySelector("#sample_text_id").text='学号：'+randomNumber.toString()
  +' '+' '+' '+'姓名：'+nobleGases[randomNumber];
  
  addToDoItem(event);

}
