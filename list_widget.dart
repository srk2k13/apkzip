import 'package:flutter/material.dart';

/*void main() {
  runApp(ListWidget());
}*/

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {

    var list = <Widget>[];
    for (var i = 0; i <= 100; i++) {
      list.add(const ListItemWidget());
    }
    return ListView.builder(itemCount: list.length,itemBuilder: (context,index)=> list[index]);
  }



}

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({super.key});
  @override
  _ListItemWidgetState createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  List<int> list = List.generate(100, (index) => 0);
 //List<int> itemList = List.generate(100, (index) => 0);
var count = 0;
  @override
  Widget build(BuildContext context) {

     // return Scaffold(

     //   child: [

    return Container(
               // color: Colors.blue,
                padding: const EdgeInsets.all(4),
                child: Row(
                  children:[
                  Text(count.toString()),
                  MaterialButton(
                   // color: Colors.white70,
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("+"),
                  )
        ]

              ),

              );

    //);
  }
}

