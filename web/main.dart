// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;


void main() {
  querySelector('#anniu')
    ..text = '点击此处随机点名'
    ..onClick.listen(reverseText);
}
void reverseText(MouseEvent event)
{ var idnumber=new math.Random().nextInt(37);
  var studentname = new List<String>();
studentname.addAll([
  '韩庆慧', 
  '谢函',
   '宋金阳',
   '李佳璇',
   '此人已转专业',
   '此人已转专业',
   '谢琪',
   '此人已转专业',
   '杨芙蓉',
   '荆泽宇',
   '彭丽',
   '黄大龙',
   '李敏',
   '刘冠群',
   '此人已转专业',
   '此人已转专业',
   '林凌',
   '此人已转专业',
   '颜欢',
   '此人已转专业',
   '此人已转专业',
   '朋秋霞',
   '张思宁',
   '崔红洋',
   '董紫琪',
   '李雨辰',
   '汤夏颖',
   '武美玖',
   '吴兵可',
   '此人已转专业',
   '任子佳',
   '苏颖晞',
   '宋婷袅',
   '姜宇轩',
   '此人已转专业',
   '周雨萌',
   '此人已转专业',
   '于潇雪']);
if(idnumber>=10){querySelector("#studentid").text='学号：  101545071'+(idnumber+1).toString();}
  else {querySelector("#studentid").text='学号：  1015450710'+(idnumber+1).toString();}
querySelector("#name").text='姓名：'+studentname[idnumber];
}
  


