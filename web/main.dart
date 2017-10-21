// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:math';

void main() {

  Map huamingce = new Map();
huamingce[0] = '荆泽宇：10154507110';
huamingce[1] = '黄大龙：10154507112';
huamingce[2] = '茂茂：10154507123';

  querySelector('#DML').
  onClick.listen((MouseEvent ) {
  var suiji = new Random();
  querySelector('#output').text = huamingce[suiji.nextInt(3)];
  
});
}
