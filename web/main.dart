// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math' as math;



void main() {

   var name = new Map();
    name[0] = '韩庆慧';
    name[1] = '谢函';
    name[2] = '宋金阳';
    name[3] = '李佳璇';
    name[5] = '宋利';
    name[6] = '谢琪';
    name[7] = '张珑川';
    name[8] = '杨芙蓉';
    name[9] = '荆泽宇';
    name[10] = '彭丽';
    name[11] = '黄大龙';
    name[12] = '李敏';
    name[13] = '刘冠群';
    name[14] = '陈冠雄';
    name[15] = '郑素清';
    name[16] = '林凌';
    name[17] = '庄子凯';
    name[18] = '颜欢';
    name[19] = '宗雨';
    name[20] = '彭茂源';
    name[21] = '朋秋霞';
    name[22] = '张思宁';
    name[23] = '崔红洋';
    name[24] = '董紫琪';
    name[25] = '李雨辰';
    name[26] = '汤夏颖';
    name[27] = '武美玖';
    name[28] = '吴兵可';
    name[29] = '祁馨禾';
    name[30] = '任子佳';
    name[31] = '苏颖晞';
    name[32] = '宋婷袅';
    name[33] = '姜宇轩';
    name[34] = '刘思延';
    name[35] = '周雨萌';
    name[36] = '徐晟炜';
    name[37] = '于潇雪';
    name[38] = '李庆泉';  

   var c = new math.Random().nextInt(38);
   var id = c+10154507101;
   querySelector('#output').text = 'the StudentID is $id, and the name is'+' '+ name[c].toString();

}

