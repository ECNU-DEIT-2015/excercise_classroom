import 'dart:html';
import 'dart:math' show Random;
ButtonElement genButton;
var m=0;
class PirateName {
  //想用class创建一个类，存储学生姓名和学号。
  static final Random indexGen = new Random();
  String _stuName;
  int _id;
  PirateName({String stuName}) {
      _stuName = names[indexGen.nextInt(names.length)];
  //    _id = ids[indexGen.nextInt(ids.length)];

    }

  String toString() => pirateName;

  String get pirateName =>
      _stuName.isEmpty ? '' : '$_stuName';

  static final List names = [
    'Anne-01', 'Mary-02' ,'Jackal-03', 'King-04','Tommy-05','Shirley-06','Flora-07','Michael-08','Laura-09','Queen-10'];
//  static final List ids = ['01', '02' ,'03', '04','05','06','07','08','09','10'];

}

void setstuinfo(PirateName newName) {
  querySelector('#studentName').text = newName.pirateName;
}

void checkstu(Event e) {
  setstuinfo(new PirateName());
}

void main() {
  genButton = querySelector('#clickButton');
  genButton.onClick.listen(checkstu);
}
