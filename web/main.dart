// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;
var times= new List<int>();


void main() {
  querySelector('#anniu')
    ..id
    ..onClick.listen(dianjishijian);
    times.addAll([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}
void dianjishijian(MouseEvent event)
{ var idnumber=new math.Random().nextInt(38);
  var studentname = new List<String>();
  var eimformation = new List<String>();
studentname.addAll([
   '韩庆慧', 
   '谢函',
   '宋金阳',
   '李佳璇',
   '空',
   '宋利',
   '谢琪',
   '张珑川',
   '杨芙蓉',
   '荆泽宇',
   '彭丽',
   '黄大龙',
   '李敏',
   '刘冠群',
   '陈冠雄',
   '郑素清',
   '林凌',
   '庄子凯',
   '颜欢',
   '宗雨',
   '彭茂源',
   '朋秋霞',
   '张思宁',
   '崔红洋',
   '董紫琪',
   '李雨辰',
   '汤夏颖',
   '武美玖',
   '吴兵可',
   '祁馨禾',
   '任子佳',
   '苏颖晞',
   '宋婷袅',
   '姜宇轩',
   '刘思延',
   '周雨萌',
   '徐晟炜',
   '于潇雪',
   '李庆泉']);
   eimformation.addAll([
   '慧慧是一个很积极向上的同学呐~',
   '谢函是一个很漂亮的小女孩呢~',
   '宋金阳主席哈哈哈哈',
   '嘻嘻，佳璇是红不了的红人物呢~',
   '班级5号学号是空缺的，啊哈哈',
   '此人已转专业',
   '谢琪呀，清悦口琴社社长呀~',
   '此人已转专业',
   '芙蓉妹妹啊哈哈哈',
   '荆泽宇呐，一位来自内蒙的内向同学~',
   '彭丽，壹幕工作室小伙伴~',
   '大龙，与室友同一个高中毕业的重庆小伙子~',
   '李敏，与大龙同一个高中毕业的室友~',
   '小群子，这就是我啦~',
   '此人已转专业',
   '此人已转专业',
   '从不吃辣椒到变的比我都能吃辣的福建室友~',
   '此人已转专业',
   '这学期经历过惊吓与惊喜的江西室友~',
   '此人已转专业',
   '新晋学委大大~',
   '秋霞，大一时期的代理班长一枚~',
   '软萌软萌的思宁同学啊~',
   '红洋红洋红洋~',
   '大学霸同学~美国交流ing~',
   '超厉害啥都知道的雨辰~',
   '小仙女，超厉害，软萌妹子，惜晨社长~',
   '九妹九妹，漂亮的妹妹~气质绝佳啊！',
   '可可可可可可可可！可可~',
   '此人已转专业',
   '小佳佳~云南的妹子舞蹈都很厉害呢~',
   '文体中心的重把手苏苏~',
   '嘻嘻~系嫂？',
   '公认大佬！',
   '此人已转专业',
   '早上吃什么，中午吃什么，晚上吃什么呢？',
   '此人已转专业',
   '压轴班长大大！美丽全能的小雪儿呀~',
   '此人已转专业'
   ]);
if(idnumber>=10){querySelector("#studentid").text='学号：  101545071'+(idnumber+1).toString();}
  else {querySelector("#studentid").text='学号：  1015450710'+(idnumber+1).toString();}
querySelector("#name").text='姓名：'+studentname[idnumber];
querySelector("#evaluate").text='了解一下这位同学的情况吧:      '+eimformation[idnumber];
times[idnumber]++;
querySelector("#timestotal").text='该同学在此堂课上已被点名：'+times[idnumber].toString()+'次';
}
  


