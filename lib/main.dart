import 'package:flutter/material.dart';
import 'basedemo/firstdemo.dart';
import 'animation/animatedcontainerapp.dart';
import 'animation/animatedopacity.dart';
import 'animation/drawer.dart';
import 'design/snackbars.dart';
import 'design/textfontsdemo.dart';
import 'design/orientationBuilderdemo.dart';
import 'design/themedatatest.dart';
import 'design/tabbardemo.dart';
import 'forms/mycustomform.dart';
import 'forms/mycustomtextformfield.dart';
import 'forms/textfieldfocus.dart';
import 'forms/retrievethetext.dart';

//void main() => runApp(MyApp());//默认demo
//void main() => runApp(AnimatedContainerApp());//Container 里的动画渐变效果
//void main() => runApp(AnimatedOpacityDemo()); //Widget 的淡入淡出效果
//void main() => runApp(EDrawerDemo()); //添加一个 Drawer
//void main() => runApp(ESnackBarDemo()); //添加一个 SnackBar
//void main() => runApp(TextFontsDemo()); //以 package 的方式使用字体
//void main() => runApp(OrientationBuilderDemo()); //以 package 的方式使用字体
//void main() => runApp(ThemeDataTest());//使用 Themes 统一颜色和字体风格
//void main() => runApp(TabBarDemo());//使用 tabs
//void main() => runApp(EFCustom());//响应文本框内容的更改
//void main() => runApp(EFTextFormField());//构建一个有验证判断的表单
//void main() => runApp(MyTextFieldFocusDome());//焦点和文本框
void main() => runApp(RetrieveTheTextDemo()); //获取文本框的输入值
