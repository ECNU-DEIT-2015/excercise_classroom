import 'dart:html';
import 'dart:math';


var students = [
  '10154507101 韩庆慧',
	'10154507103 宋金阳',
	'10154507104 李佳璇',
	'10154507107 谢琪',
	'10154507109 杨芙蓉',
	'10154507113 李敏',
	];

Map dianmingstudent = {};

void main() async{
	querySelector('#dianming_button')
    ..onClick.listen(dianming);

  querySelector("#remove")
    ..onClick.listen(remove);
}

void remove(MouseEvent event)
{
  TableElement t = query("#my_table");
   for(var i=0; i<dianmingstudent.length; i++)
   {
     t.deleteRow(1);
   }
   dianmingstudent.clear();
   querySelector("#student").text = "点击按钮随机点名";
}



void dianming(MouseEvent event) {
  var rng = new Random();
  String stu = students[rng.nextInt(students.length)];
  querySelector('#student').text = stu;
  String xuehao = stu.split(" ")[0];
  String name = stu.split(" ")[1];
  TableElement table = query('#my_table');


  if(dianmingstudent[xuehao] == null)
  {
    List l = [];
    l.add(name);
    l.add(1);
    dianmingstudent[xuehao] = l; 

    TableRowElement row = table.insertRow(1);

    row.className = 'warning';
    if(table.rows.length > 2)
    {
      for(var i= 2; i<table.rows.length; i++)
      {
        table.rows[i].className = 'success';
      }
      
    }
    
    TableCellElement cell = row.insertCell(0);
    cell.text = xuehao;

    row.insertCell(1)
      ..text = name;

    row.insertCell(2)
      ..text = dianmingstudent[xuehao][1];
  }
  else
  {
    dianmingstudent[xuehao][1] += 1;

    
    List<TableRowElement> l = table.rows;
    for(var i=0; i<l.length; i++)
    {
      if(l[i].className == "warning")
      {
        l[i].className = "success";
      }
      if(xuehao == l[i].cells[0].text)
      {
        l[i].cells[2].text = dianmingstudent[xuehao][1];
        l[i].className = "warning";
        
      }

    }

  }
  
}

