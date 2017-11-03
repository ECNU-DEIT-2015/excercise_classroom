import 'dart:html';
import 'dart:math' show Random;

LIElement DoList;
ButtonElement Delname;

int selectnum = 0;
List name = ["stu1","stu2","stu3","stu4","stu5"];
List stunum = ["10154507101","10154507102","10154507103","10154507104","10154507105"];
InputElement selectstu;

void clicked(Event c)
{
  if(selectstu.value == "class")
  {
    Random select_number = new Random();
    int number = select_number.nextInt(name.length);
    querySelector("#select-name").text = name[number];
    querySelector("#select-stunum").text = stunum[number];
  }
}

void addToDoItem(Event e)
{
    var ToDo = new LIElement();
    ToDo.text=name;
    DoList.children.add(ToDo); 
}

void deleteEle(Event e)
{
    DoList.children.clear();
}

void main()
{
  querySelector("#click").onClick.listen(clicked);
  selectstu = querySelector("#select");
  DoList = querySelector('#select-name');
  Dolist.onClick.listen(addToDoItem);
  Delname = querySelector('#delname');
  Delname.onClick.listen(deleteEle);
}

//为什么不行呢？
