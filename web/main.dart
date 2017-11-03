import 'dart:html';
import 'dart:math' show Random;


void main() {
//你对应的html中有你要查找的元素吗？
  querySelector('#sample_text_id')
    ..text = '开始点名!'
    ..onClick.listen(makeCall);
  querySelector('#1')
    ..text = '清除'
    ..onClick.listen(removal);
}


  void makeCall(MouseEvent event) {
    var name = [
// Keys      Values
    '1.'     '小明',
    '2.'     '小红',
    '3.'     '小城',
    '4.'     '小洋',
    '5.'     '小吕',
    '6.'     '小心',
    '7.'     '小例',
    '8.'     '小系',
    '9.'     '小力',
    '10.'     '小曲'
    ];


    
    var ad=new Random();
    querySelector('#sample_text_id').text = name[ad.nextInt(name.length)];

    var newToDo=new LIElement();
    for(int i=1;i<10;i++)     newToDo.children.add(#sample_text_id.text);
    querySelector('#done_text_id').text = newToDo;

  }
void removal(MouseEvent event)
     { #done_text_id.text.removal;}

