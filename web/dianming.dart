import 'dart:html';
import 'dart:math';
import 'dart:io';
import 'dart:convert';

String xxstring ="""
{
  "student":[
        {
            "id":"10152510284",
            "name":"吴一凡",
            "gender":"f"
        },
        {
            "id":"10152510277",
            "name":"王慧琪",
            "gender":"f"
        },
        {
            "id":"10152510211",
            "name":"李子澜",
            "gender":"f"
        },
        {
          "id":"10152130248",
          "name":"余天昊",
          "gender":"m"
        },
        {
          "id":"10152130227",
          "name":"张伦",
          "gender":"m"
        },
        {
          "id":"10152130206",
          "name":"郭东瑞",
          "gender":"m"
        },
        {
            "id":"10152510283",
            "name":"吴一",
            "gender":"f"
        },
        {
            "id":"10152510273",
            "name":"王琪",
            "gender":"f"
        },
        {
            "id":"10152514211",
            "name":"李澜",
            "gender":"f"
        },
        {
          "id":"10152130f248",
          "name":"余天",
          "gender":"m"
        },
        {
          "id":"101521d30227",
          "name":"张伦发",
          "gender":"m"
        },
        {
          "id":"101521s0206",
          "name":"郭瑞",
          "gender":"m"
        }
    ]
}
""";

List list;
Map stu = new Map();

void main() async{
 
  // querySelector("#display").hidden = true;
  list = JSON.decode(xxstring)["student"];
	querySelector('#dianming')
    ..onClick.listen(dianming);

  querySelector("#remove")
    ..onClick.listen(delete);

  querySelector("#nansheng")
    ..onClick.listen(nansheng);

  querySelector("#nvsheng")
    ..onClick.listen(nvsheng);
}

void dianming(MouseEvent event)
{
  querySelector("#display").hidden = false;
  var rng = new Random();
  Map s = list[rng.nextInt(list.length)];
  String name = s["name"];
  querySelector('#name').text = s['name'];
  TableElement table = query("#table");

  if(stu[s['id']] == null)
  {
    stu[s['id']] = 1;
    TableRowElement row = table.insertRow(1);

    row.insertCell(0)
      ..text = s['id'];

    row.insertCell(1)
      ..text = s['name'];

  }
  else
  {
    stu[s['id']] += 1;
  }
  querySelector("#count").text = stu[s['id']];

  ImageElement img = querySelector("#pic");
  if(s['gender'] == 'f')
  {
    img.src = "http://pic29.nipic.com/20130525/7487939_155123274150_2.jpg";
  }
  else{
    img.src = "https://img00.deviantart.net/e2ed/i/2011/254/f/8/l_death_note_tshirt_design_by_yoonhee-d49iw6y.jpg"; 
  }
  
}

void nansheng(MouseEvent event)
{
  querySelector("#display").hidden = false;
  var rng = new Random();
  Map s = list[rng.nextInt(list.length)];
  while(s['gender'] != 'm')
  {
    s = list[rng.nextInt(list.length)];
  }
  
  querySelector('#name').text = s['name'];
  TableElement table = query("#table");

  if(stu[s['id']] == null)
  {
    stu[s['id']] = 1;
    TableRowElement row = table.insertRow(1);

    row.insertCell(0)
      ..text = s['id'];

    row.insertCell(1)
      ..text = s['name'];

  }
  else
  {
    stu[s['id']] += 1;
  }
  querySelector("#count").text = stu[s['id']];

  ImageElement img = querySelector("#pic");
  img.src = "https://img00.deviantart.net/e2ed/i/2011/254/f/8/l_death_note_tshirt_design_by_yoonhee-d49iw6y.jpg"; 
  
}

void nvsheng(MouseEvent event)
{
  querySelector("#display").hidden = false;
  var rng = new Random();
  Map s = list[rng.nextInt(list.length)];
  while(s['gender'] != 'f')
  {
    s = list[rng.nextInt(list.length)];
  }
  
  querySelector('#name').text = s['name'];
  TableElement table = query("#table");

  if(stu[s['id']] == null)
  {
    stu[s['id']] = 1;
    TableRowElement row = table.insertRow(1);

    row.insertCell(0)
      ..text = s['id'];

    row.insertCell(1)
      ..text = s['name'];

  }
  else
  {
    stu[s['id']] += 1;
  }
  querySelector("#count").text = stu[s['id']];

  ImageElement img = querySelector("#pic");
  img.src = "http://pic29.nipic.com/20130525/7487939_155123274150_2.jpg"; 
}

void delete(MouseEvent event)
{
  TableElement t = query("#table");
   for(var i=0; i<stu.length; i++)
   {
     t.deleteRow(1);
   }
   stu.clear();
   dianmingstudent.clear();
}
