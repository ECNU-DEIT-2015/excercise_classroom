// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;
UListElement studentlist;
String getname=" ";

void Click(MouseEvent event){          //鼠标点击进行随机点名
  var idnumber=new math.Random().nextInt(20);
  var studentname = new List<String>();
  var studentid=new List<String>();

  studentname.addAll([
 '韩庆慧','谢函','宋金阳','李佳璇','谢琪','杨芙蓉','荆泽宇','黄大龙','李敏','刘冠群','林凌','彭茂源','张思宁','崔红洋',
 '汤夏颖','苏颖晞','姜宇轩','于潇雪','吴清泽','权宁真',]);

studentid.addAll([
 '10154507101', '10154507102','10154507103', '10154507104','10154507107','10154507109','10154507110','10154507112',
  '10154507113','10154507114','10154507117','10154507121','10154507123','10154507124','10154507127',
  '10154507132','10154507134','10154507138','10152510231','10152510133'
]);

  querySelector("#studentid").text='学号：  '+studentid[idnumber];
  querySelector("#name").text='姓名：'+studentname[idnumber];         //点击后显示学生学号和姓名
  getname=studentname[idnumber];
  addelemnt(event);             //点名后将名字储存在列表中
}

void DeleteButton(MouseEvent event){
   studentlist.children.clear(); 
}

void addelemnt(Event event)       //动态显示列表
 {  var newnamelist=new LIElement();
    newnamelist.text=getname;
    studentlist.children.add(newnamelist);
    newnamelist.onClick.listen((e)=>newnamelist.remove());
 }

void main() {
  querySelector('#anniu')
    ..id
    ..onClick.listen(Click);

    studentlist=querySelector("#namelist");
    studentlist.onChange.listen(addelemnt);

    querySelector("#delete")//删除
   ..id
   ..onClick.listen(DeleteButton);
}


