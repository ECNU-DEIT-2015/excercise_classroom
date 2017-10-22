// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;
void main() {
  querySelector('#sample_text_id')

    ..text = '点我抽取学号'

    ..onClick.listen(reverseText);
}
void reverseText(MouseEvent event) {
 var randomnumber = new math.Random().nextInt(39);
//comment by teacher:你的代码里面有很多中文标点符合，不符合编程语言的默认规范，导致不能运行，请仔细核查。同时还还//需要检查你的变量定义，请查看language tour部分
 var nobleGases = {
 1:'韩庆慧', 2:'谢函', 3:'宋金阳', 4:'李佳璇',5:'转系',  6:'无此人',7:'谢琪',8:'转系',9:'杨芙蓉', 
 10:'荆泽宇', 11:'彭丽',12:'黄大龙',13:'李敏', 14:'刘冠群',15:'陈冠雄'，16:'郑素清',17:'林凌',18:'转系',
19:'颜欢',20:'宗雨', 21:'彭茂源',22:'朋秋霞',23:'张思宁',24:'崔红洋',25:'出国',26:'已休学',27:'汤夏颖',
28:'武美玖',29:'吴兵可',30:'转系',31:'任子佳',32:'苏颖晞',33:'宋婷袅',34:'姜宇轩',35:'转系',36:'周雨萌',
37:'转系',38:'于潇雪', 

 }；

 



querySelector("#sample_text_id").text='学号：101545071'+randomnumber.toString()

  +' '+' '+' '+'姓名：'+nobleGases[randomnumber];

}
