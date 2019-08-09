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
import 'gestures/dismissibledemo.dart';
import 'gestures/mybutton.dart';
import 'gestures/inkwelldemo.dart';
import 'image/imagenetwork.dart';
import 'image/fadeinimage.dart';
import 'image/cached_network_demo.dart';
import 'lists/listdemo.dart';
import 'lists/listhorizontal.dart';
import 'lists/gridview.dart';
import 'lists/mixedlist.dart';
import 'lists/sliverappbar.dart';
import 'lists/longlist.dart';

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
//void main() => runApp(RetrieveTheTextDemo()); //获取文本框的输入值
//void main() => runApp(DismissibleDemo());//实现「滑动清除」效果
//void main() => runApp(MyButton());//自定义button
//void main() => runApp(InkWellDemo());//添加点按涟漪效果 (Material Design)
//void main() => runApp(FadeInImageDemo());//加载网络图片
//void main() => runApp(ListViewDemo());//listview
//void main() => runApp(ListViewHorizontalDemo());//横向的list
//void main() => runApp(GridViewDemo());//GridView
//void main() => runApp(MixedListDemo(items: List<ListItem>.generate(1000, (i)=>i%6==0?HeadingItem("Heading$i"):MessageItem("sender$i", "Message body $i"))));//创建拥有不同列表项的列表
//void main() => runApp(SliverAppDemo());//在列表顶部放置一个浮动的 app bar
void main() => runApp(LongListViewDemo(items: List<String>.generate(10000, (i) => "Item $i"))); //长列表
