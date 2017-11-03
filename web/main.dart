import 'dart:html';
import 'dart:math' show Random;

int selectnum = 0;
List nameList1 = ["student11","student12","student13","student14","student15","student16","student17"];
List numList1 = ["10154507101","10154507102","10154507103","10154507104","10154507105","10154507106","10154507107"];
List count1 = [0,0,0,0,0,0,0];
List nameList2 = ["student21","student22","student23","student24","student25","student26","student27"];
List numList2 = ["10154507201","10154507202","10154507203","10154507204","10154507205","10154507206","10154507207"];
List count2 = [0,0,0,0,0,0,0];
InputElement selectText;
InputElement selectedStudent;
InputElement selectedStudentHistory;


void main()
{
  querySelector("#clickBtn").onClick.listen(onBtnClicked);
  querySelector("#removeBtn").onClick.listen(onRemoveBtnClicked);

  selectText = querySelector("#select");
  selectedStudent = querySelector("#selected-stuList");
  selectedStudentHistory = querySelector("#selected-stuList-history");
}

void onBtnClicked(Event e)
{
  if(selectText.value == "class1")
  {
    Random select_number = new Random();
    int number = select_number.nextInt(nameList1.length);

    querySelector("#select-name").text = nameList1[number];
    querySelector("#select-studentnum").text = numList1[number];
    count1[number]++;

    var htmlString0 = '<option value="class1" class = "selected-stu-class-history" id="selected-history-stu1$number">' + nameList1[number] + '</option>';
    querySelector("#selected-stuList-history").appendHtml(htmlString0);

    if(count1[number] == 1)
      {
        var htmlString = '<option value="class1" class = "selected-stu-class" id="selected-stu1$number">' + nameList1[number] + '------1</option>';
        querySelector("#selected-stuList").appendHtml(htmlString);
      }
    else
      {
        int countnumber = count1[number];
        querySelector("#selected-stuList #selected-stu1$number").innerHtml = nameList1[number] + '------$countnumber';
      }

  }
  if(selectText.value == "class2")
  {
    Random select_number = new Random();
    int number = select_number.nextInt(nameList2.length);

    querySelector("#select-name").text = nameList2[number];
    querySelector("#select-studentnum").text = numList2[number];
    count2[number]++;

    var htmlString0 = '<option value="class2" class = "selected-stu-class-history" id="selected-history-stu2$number">' + nameList2[number] + '</option>';
    querySelector("#selected-stuList-history").appendHtml(htmlString0);

    if(count2[number] == 1)
      {
        var htmlString = '<option value="class2" class = "selected-stu-class" id="selected-stu2$number">' + nameList2[number] + '------1</option>';
        querySelector("#selected-stuList").appendHtml(htmlString);
      }
    else
      {
        int countnumber = count2[number];
        querySelector("#selected-stuList #selected-stu2$number").innerHtml = nameList2[number] + '------$countnumber';
      }

  }
}

void onRemoveBtnClicked(Event e)
{
  selectedStudent.value = "点击以查看点到的次数";
  selectedStudent.innerHtml = '<option value="class1" class = "selected-stu-class" id="selected-stu">点击以查看点到的同学</option>';
  selectedStudentHistory.value = "点击以查看点名历史记录";
  selectedStudentHistory.innerHtml = '<option value="class1" class = "selected-stu-class-history" id="selected-history-stu">点击以查看点名历史记录</option>';
  count1 = [0,0,0,0,0,0,0];
  count2 = [0,0,0,0,0,0,0];
}
