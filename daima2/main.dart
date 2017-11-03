
import 'dart:html';
import 'dart:math' as math; 
UListElement bdxsbiao;
ButtonElement start;
ButtonElement deleteAll;
String bdxs;

void tianjia(Event e){
 var addList = new LIElement();
 addList.text=bdxs;
 bdxsbiao.children.add(addList); 
}


void cxkaishi(Event e) {
  bdxsbiao.children.clear();
}

void suijidm(MouseEvent event) { 

var huamingce = { 
    1:  '韩庆慧' ,
    2:  '谢函',
    3:  '宋金阳',
    4:  '李佳璇',
    6:  '宋利',
    7:  '谢琪',
    8:  '张珑川',
    9:  '杨芙蓉',
    10: '荆泽宇',
    11: '彭丽',
    12: '黄大龙',
    13: '李敏',
    14: '刘冠群',
    15: '陈冠雄',
    16: '郑素清',
    17: '林凌',
    18: '庄子凯',
    19: '颜欢',
    20: '宗雨',
    21: '彭茂源',
    22: '朋秋霞',
    23: '张思宁',
    24: '崔红洋',
    25: '董紫琪',
    26: '李雨辰',
    27: '汤夏颖',
    28: '武美玖',
    29: '吴兵可',
    30: '祁馨禾',
    31: '任子佳',
    32: '苏颖晞',
    33: '宋婷袅',
    34: '姜宇轩',
    35: '刘思延',
    36: '周雨萌',
    37: '徐晟炜',
    38: '于潇雪',
    39: '李庆泉',
}; 
 
 bdxs=huamingce[new math.Random().nextInt(39)];
 tianjia(event);
} 
void main() 
{ 
 querySelector('#dianming') 
 
 ..onClick.listen(suijidm); 
 bdxsbiao = querySelector('#dmbiao');  
 bdxsbiao.onChange.listen(tianjia);
 deleteAll= querySelector('#cxks'); 
 deleteAll.onClick.listen(cxkaishi);
} 


