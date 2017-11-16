import 'dart:html';
import 'dart:math' as math;

var stuInfor = [
   '10154507101 韩庆慧',
   '10154507102 谢函',
   '10154507103 宋金阳',
   '10154507104 李佳璇',
   '10154507107 谢琪',
   '10154507109 杨芙蓉',
   '10154507110 荆泽宇',
   '10154507112 黄大龙',
   '10154507113 李敏',
   '10154507114 刘冠群',
   '10154507117 林凌',
   '10154507119 颜欢',
   '10154507121 彭茂源',
   '10154507123 张思宁',
   '10154507124 崔红洋',
   '10154507127 汤夏颖',
   '10154507132 苏颖晞',
   '10154507134 姜宇轩',
   '10154507138 于潇雪',
   '10152510231 吴清泽',
   '10152510133 权宁真',
];
 
UListElement parent_li;

void main() {
  parent_li = querySelector('#sample_studentid_id');
  querySelector('#start_dianming')
    ..text = '点名'
    ..onClick.listen(dianming);
}

void dianming(MouseEvent event) {
  var rdm = new math.Random();
  int i = rdm.nextInt(stuInfor.length);
  querySelector('#sample_text_id').text = stuInfor[i];
  
  var new_name = new LIElement();
  new_name.text = querySelector('#sample_text_id').text;
  parent_li.children.add(new_name);
  new_name.onClick.listen((e)=>new_name.remove());
}



