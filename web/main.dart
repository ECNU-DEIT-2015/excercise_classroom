import 'dart:html';
import 'dart:math' show Random;

int selectnum = 0;
List nameList1 = ["student11","student12","student13","student14","student15","student16","student17"];
List numList1 = ["10154507101","10154507102","10154507103","10154507104","10154507105","10154507106","10154507107"];
List nameList2 = ["student21","student22","student23","student24","student25","student26","student27"];
List numList2 = ["10154507201","10154507202","10154507203","10154507204","10154507205","10154507206","10154507207"];
InputElement selectText;


void main()
{
  querySelector("#clickBtn").onClick.listen(onBtnClicked);
  selectText = querySelector("#select");

}

void onBtnClicked(Event e)
{
  if(selectText.value == "class1")
  {
    Random select_number = new Random();
    int number = select_number.nextInt(nameList1.length);
    querySelector("#select-name").text = nameList1[number];
    querySelector("#select-studentnum").text = numList1[number];
  }
  if(selectText.value == "class2")
  {
    Random select_number = new Random();
    int number = select_number.nextInt(nameList2.length);
    querySelector("#select-name").text = nameList2[number];
    querySelector("#select-studentnum").text = numList2[number];
  }
}
