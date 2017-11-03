// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.





// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code 

// is governed by a BSD-style license that can be found in the LICENSE file. 



import 'dart:html';

import 'dart:math' as math; 

UListElement DoList;

ButtonElement deleteAll;

String stuname;


void main() { 

querySelector('#sample_text_id') 

..text = 'click to choose one student' 

..onClick.listen(reverseText); 



DoList = querySelector('#list_id');  

DoList.onChange.listen(addToDoItem);

deleteAll= querySelector('#delete-all'); 

deleteAll.onClick.listen(deleteAllElements);



} 




void addToDoItem(Event e){

 var ToDo = new LIElement();

ToDo.text=stuname;

DoList.children.add(ToDo); 

}

void deleteAllElements(Event e) {

  DoList.children.clear();

}



void reverseText(MouseEvent event) { 

var randomNumber = new math.Random().nextInt(16); 

var stuNames = { 

 1:'韩庆慧', 2:'谢函', 3:'宋金阳', 4:'李佳璇',5:'转系',  6:'无此人',7:'谢琪',8:'转系',9:'杨芙蓉', 
 10:'荆泽宇', 11:'彭丽',12:'黄大龙',13:'李敏', 14:'刘冠群',15:'陈冠雄'，16:'郑素清',17:'林凌',18:'转系',
19:'颜欢',20:'宗雨', 21:'彭茂源',22:'朋秋霞',23:'张思宁',24:'崔红洋',25:'出国',26:'已休学',27:'汤夏颖',
28:'武美玖',29:'吴兵可',30:'转系',31:'任子佳',32:'苏颖晞',33:'宋婷袅',34:'姜宇轩',35:'转系',36:'周雨萌',
37:'转系',38:'于潇雪',39:'没人了'



}; 

querySelector("#sample_text_id").text='学号：'+randomNumber.toString() 

+' '+' '+' '+'姓名：'+stuNames[randomNumber]; 



stuname=stuNames[randomNumber];

addToDoItem(event);



} 