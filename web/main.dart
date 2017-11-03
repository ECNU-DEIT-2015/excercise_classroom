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

1: '宋哈哈', 2: '谢函', 3: '黄大龙', 4: '韩庆慧', 5: '李佳璇', 6: '于潇雪', 7: '姜宇轩', 8: '王五',
9: '张三', 10: '陈冠雄', 11: '刘冠群', 12: '馒头', 13: '花卷', 14: '烟花', 15: '棒棒糖', 16: 'jasmine', 
17：'小黄',18:‘小红’，19：‘小绿’，20：‘小a’，21：‘小b’，22：‘小c’，23：‘小d’，24：‘茂茂彭’；

}; 

querySelector("#sample_text_id").text='学号：'+randomNumber.toString() 

+' '+' '+' '+'姓名：'+stuNames[randomNumber]; 



stuname=stuNames[randomNumber];

addToDoItem(event);



} 