import 'dart:html';
import 'dart:math' show Random;

int selectnum = 0;
List name = ["stu1","stu2","stu3","stu4","stu5"];
List stunum = ["10154507101","10154507102","10154507103","10154507104","10154507105"];
InputElement selectstu;


void main()
{
  querySelector("#click").onClick.listen(clicked);
  selectstu = querySelector("#select");
}

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
