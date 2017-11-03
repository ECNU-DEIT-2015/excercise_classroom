import 'dart:html';
import 'dart:math' as math;

InputElement toDoInput;
UListElement toDoList;
ButtonElement toDoStart, toDoDelete;

void main() {
  
  //querySelector('p').

  querySelector('#sample_text_id').text = "开始！";
  
  toDoDelete = querySelector("#to-do-delete");
  toDoStart = querySelector('#to-do-start');
  //querySelector('#sample_text_id')    
  //  ..onClick.listen(reverseText);
  toDoStart.onClick.listen(reverseText);

  toDoInput = querySelector('#to-do-input');
  toDoList = querySelector('#to-do-list');
  toDoInput.onChange.listen(addToDoItem);
  toDoDelete.onClick.listen(deleteText);
  
}
void addToDoItem(Event e){

  var newToDo = new LIElement();
  newToDo.text= toDoInput.value;
  toDoInput.value='';
  toDoList.children.add(newToDo);

}
void reverseText(MouseEvent event) {
  
  var k = new math.Random().nextInt(38);
  var number=10154507101+k;
  var newToDo = new LIElement();  
  var list = new List();
  var count = new Map();

  count[0]='韩庆慧'; count[1]='谢函';
  count[2]='宋金阳'; count[3]='李佳璇';
  count[4]='null'; count[5]='宋利';
  count[6]='谢琪'; count[7]='张珑川';
  count[8]='杨芙蓉'; count[9]='荆泽宇';
  count[10]='彭丽'; count[11]='黄大龙';
  count[12]='李敏'; count[13]='刘冠群';
  count[14]='陈冠雄'; count[15]='郑素清';
  count[16]='林凌'; count[17]='庄子凯';
  count[18]='颜欢'; count[19]='宗雨';
  count[20]='彭茂源'; count[21]='朋秋霞';
  count[22]='张思宁'; count[23]='崔红洋';
  count[24]='董紫琪'; count[25]='李雨辰';
  count[26]='汤夏颖'; count[27]='武美玖';
  count[28]='吴兵可'; count[29]='祁馨禾';
  count[30]='任子佳'; count[31]='苏颖晞';
  count[32]='宋婷袅'; count[33]='姜宇轩';
  count[34]='刘思延'; count[35]='周雨萌';
  count[36]='徐晟炜'; count[37]='于潇雪';
  count[38]='李庆泉';


  querySelector('#sample_text_id').text = '\n'+'姓名：' + count[k];
  querySelector('#sample_studentid_id').text='学号：' + number.toString() ;

  newToDo.text= count[k];
  toDoList.children.add(newToDo);
}
void deleteText(MouseEvent event) {
  toDoList.children.clear();
  var newToDo = new LIElement();
  newToDo.text= "点名记录";
  toDoList.children.add(newToDo);
}
