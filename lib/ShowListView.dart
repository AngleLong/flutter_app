import 'package:flutter/material.dart';

class showListBuilder extends StatelessWidget {
  //这里展示ListBuilder的使用规范

  //
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilder的展示"),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemBuilder: (context, index) => ListTile(
          title: Text("列表的展示$index"),
        ),
        itemCount: 100,
        //设置回弹效果
        physics: BouncingScrollPhysics(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(0,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        child: Icon(Icons.location_searching),
      ),
    );
  }
}

class showListSeparated extends StatelessWidget {
  //这里展示ListSeparated的使用规范

  //控制器,可以控制相应的滚动
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewSeparated的展示"),
      ),
      body: ListView.separated(
        controller: _scrollController,
        itemBuilder: (context, index) => ListTile(
          title: Text("列表的展示$index"),
        ),
        separatorBuilder: (context, index) => Divider(color: Colors.grey),
        itemCount: 100,
        //设置回弹效果
        physics: BouncingScrollPhysics(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //跳回起点
          _scrollController.jumpTo(0);
        },
        child: Icon(Icons.location_searching),
      ),
    );
  }
}
