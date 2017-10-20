// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math';

void main() {

  var std =[
  '10152510231 吴清泽',
	'10154507101 韩庆慧',
	'10154507103 宋金阳',
	'10154507104 李佳璇',
	'10154507107 谢琪',
	'10154507109 杨芙蓉',
	'10154507113 李敏',
	'10154507114 刘冠群',
	'10154507117 林凌',
	'10154507119 颜欢'
	'10154507121 彭茂源',
	'10154507123 张思宁',
	'10154507124 崔红洋',
	'10154507127 汤夏颖',
	'10154507132 苏颖晞',
	'10154507138 于潇雪',
  	];

  querySelector('#my_button')    
  ..onClick.listen((MouseEvent event) {
  var rng = new Random();
  querySelector('#output').text = std[rng.nextInt(std.length)];
  // querySelector('#output').text = rng.nextInt(16).toString();
});
}
