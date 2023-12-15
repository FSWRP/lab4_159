import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String foodRadio = "";
  bool PorkCaps = false;
  bool Mincedporkdumplings = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("สูตรเตี๋ยวเหนี่ยวทรัพย์"),
        ),
        body: Column(
          children: [
            
            radioMenuList("พิเศษ+10 บาท", "เย็นตาโฟ", "60 บาท"),
            radioMenuList("พิเศษ+10 บาท", "เกาเหลา", "60 บาท"),
            radioMenuList("พิเศษ+10 บาท", "บะหมี่เเห้ง", "60 บาท"),
            radioMenuList("พิเศษ+10 บาท", "ก๋วยจั๊บ", "60 บาท"),
            radioMenuList("พิเศษ+10 บาท", "ก๋วยเตี๋ยวน้ำตก", "70 บาท"),
            Divider(),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              secondary: Text("+5 บาท"),
              title: Text("แคปหมู"),
              value: PorkCaps,
              onChanged: (value) {
                setState(() {
                  PorkCaps = value!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              secondary: Text("+5 บาท"),
              title: Text("เกี๋ยวหมูสับ"),
              value: Mincedporkdumplings,
              onChanged: (value) {
                setState(() {
                  Mincedporkdumplings = value!;
                });
              },
            ),
          ],
        ));
  }

  RadioListTile<String> radioMenuList(String secon, String title, String sub) {
    return RadioListTile(
            activeColor: Color.fromARGB(255, 255, 176, 176),
            secondary: Text(secon),
            selected: false,
            selectedTileColor: Colors.amber,
            tileColor: Color.fromARGB(255, 243, 228, 205),
            title: Text(title),
            subtitle: Text(sub),
            value: title,
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });
              print(foodRadio);
            },
          );
  }

  
}
