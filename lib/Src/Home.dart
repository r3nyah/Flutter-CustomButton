import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  HomePage({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isSelected1 = [false,false,true];
  var isSelected2 = [false,false,true];
  var isSelected3 = [false,false,true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text(
              'Multi-Select',
              textScaleFactor: 2,
            ),
            ToggleButtons(
              children: [
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Icon(Icons.cake),
              ],
              onPressed: (int index){
                setState((){
                  isSelected1[index] = !isSelected1[index];
                });
              },
              isSelected: isSelected1,
            ),
            SizedBox(height: 20,),
            Text(
              'Single Select',
              textScaleFactor: 2,
            ),
            ToggleButtons(
              children: [
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Icon(Icons.cake),
              ],
              onPressed: (int index){
                setState((){
                  for (int b = 0; b<isSelected2.length; b++){
                    if(b == index){
                      isSelected2[b] = true;
                    }else{
                      isSelected2[b] = false;
                    }
                  }
                });
              },
              isSelected: isSelected2,
            ),
            SizedBox(height: 20,),
            Text(
              'Custom',
              textScaleFactor: 2,
            ),
            ToggleButtons(
              borderColor: Colors.deepOrange[900],
              borderWidth: 15,
              selectedBorderColor: Colors.orangeAccent[100],
              splashColor: Colors.brown[500],
              children: [
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Text('Cake'),
              ],
              onPressed: (int index){
                setState((){
                  for (int b = 0;b<isSelected3.length;b++){
                    if(b == index){
                      isSelected3[b] = true;
                    }else{
                      isSelected3[b] = false;
                    }
                  }
                });
              },
              isSelected: isSelected3,
            ),
          ],
        ),
      ),
    );
  }
}
