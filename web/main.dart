// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;
var times= new List<int>();
String getsudentname=' ';
UListElement studentlist;



void main() {
  querySelector('#anniu')
    ..id
    ..onClick.listen(dianjishijian);
    times.addAll([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
    studentlist=querySelector("#namelist");
    studentlist.onChange.listen(addelemnt);
   querySelector("#delete")
   ..id
   ..onClick.listen(deleteelemnt);
   
}

void addelemnt(Event event)
 {
  var newnamelist=new LIElement();
  newnamelist.text=getsudentname;
  studentlist.children.add(newnamelist);
  newnamelist.onClick.listen((e)=>newnamelist.remove());
 }

 void deleteelemnt(Event event)
 {
  studentlist.children.clear(); 
 }

void dianjishijian(MouseEvent event)
{ 
  var idnumber=new math.Random().nextInt(20);
  var eimformation = new List<String>();
  var studentname  = new List<String>();

studentname.addAll([
  '韩庆慧',
  '谢函',
  '宋金阳',
  '李佳璇',
  '谢琪',
  '杨芙蓉',
  '荆泽宇',
  '黄大龙',
  '李敏',
  '刘冠群',
  '林凌',
  '彭茂源',
  '张思宁',
  '崔红洋',
  '汤夏颖',
  '苏颖晞',
  '姜宇轩',
  '于潇雪',
  '吴清泽',
  '权宁真',
  '10154507101',
  '10154507102',
  '10154507103',
  '10154507104',
  '10154507107',
  '10154507109',
  '10154507110',
  '10154507112',
  '10154507113',
  '10154507114',
  '10154507117',
  '10154507121',
  '10154507123',
  '10154507124',
  '10154507127',
  '10154507132',
  '10154507134',
  '10154507138',
  '10152510231',
  '10152510133']);

   eimformation.addAll([
   '时刻给人正能量的慧慧呐~',
   '谢函，一个超漂亮的小女生呢~',
   '宋金阳主席哈哈哈哈',
   '嘻嘻，佳璇是红不了的红人物呢~',
   '谢琪呀，清悦口琴社社长呀~',
   '芙蓉妹妹啊哈哈哈',
   '荆泽宇呐，一位来自内蒙的内向同学~',
   '大龙，与室友同一个高中毕业的重庆小伙子~',
   '李敏，与大龙同一个高中毕业的室友~',
   '小群子，这就是我啦~',
   '从不吃辣椒到变得比我都能吃辣的福建室友~',
   '新晋学委大大~',
   '软萌软萌的思宁同学啊~',
   '红洋红洋红洋~',
   '小仙女，超厉害，软萌妹子，惜晨社长~',
   '文体中心的重把手苏苏~',
   '公认大佬！',
   '班长大大！美丽全能的小雪儿呀~',
   '软院的同学一名~',
   '这位软院的同学去年也选了我们的Java课呢~'
   ]);
   
querySelector("#studentid").text='学号：  '+studentname[idnumber+20];
querySelector("#name").text='姓名：'+studentname[idnumber];
querySelector("#evaluate").text='了解一下这位同学的情况吧:      '+eimformation[idnumber];
times[idnumber]++;
querySelector("#timestotal").text='该同学在此堂课上已被点名：'+times[idnumber].toString()+'次';
getsudentname=studentname[idnumber];
addelemnt(event);
}





 
  


