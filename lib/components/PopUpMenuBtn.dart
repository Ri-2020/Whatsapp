import "package:flutter/material.dart";

class PopupMenuBtn extends StatelessWidget {
  PopupMenuBtn({
    Key? key, 
    required this.items,
  }) : super(key: key);

  List<String> items;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value){
        print(value);
      },
      itemBuilder: (BuildContext){
      return  [
        for(var i=0;i<items.length;i++) popMenuItm(items[i], items[i]),
      ];
    });
  }

  PopupMenuItem<String> popMenuItm(name, value) {
    return PopupMenuItem(child: Text(name),
        value: value,
      );
  }
}
