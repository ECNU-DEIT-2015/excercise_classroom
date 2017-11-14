import 'dart:html';
import 'dart:math';
import 'dart:io';
import 'dart:convert';

var student_list = ["74747947 张晓明","24724744 王高丽","48848482 章泽天"];
Map dianming_count = new Map();
void main() {

query("#dianming")
    ..onClick.listen(dianming);

  querySelector("#remove")
    ..onClick.listen(delete);
}

void dianming(MouseEvent event)
{
  var rng = new Random();
  var name = query("#name");
  var xuehao = query("#student_id");
  var count = query("#dianming_count");
  Int rng_num = rng.nextInt(student_list.length);
  name.text = student_list[rng_num].split(" ")[1];
  xuehao.text = student_list[rng_num].split(" ")[0];
  TableElement table = query("#table");
  if(dianming_count.containsKey(rng_num))
  {
    dianming_count[rng_num] = dianming_count[rng_num] + 1;
    List<TableRowElement> l = table.rows;
    for(var i=0; i<l.length; i++)
    {
      if(l[i].className == "warning")
      {
        l[i].className = "";
      }
      if(name.text == l[i].cells[0].text)
      {
        l[i].cells[1].text = dianming_count[rng_num];
        l[i].className = "warning";
      }

    }
  }else{
    dianming_count[rng_num] = 1;
    TableRowElement row = table.insertRow(1);

    row.insertCell(0)
      ..text = name.text;

    row.insertCell(1)
      ..text = dianming_count[rng_num];
  }
  count.text = dianming_count[rng_num];
}

void delete(MouseEvent event)
{
  TableElement t = query("#table");
   for(var i=0; i<dianming_count.length; i++)
   {
     t.deleteRow(1);
   }
   dianming_count.clear();
}

