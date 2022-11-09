import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  
  //creamos una variable para almacenar el tiempo seleccionado

  DateTime miFecha = DateTime.now();

  SelectedDate(){
      showDatePicker(context: context, 
      initialDate:DateTime.now(), 
      firstDate: DateTime(1950), 
      lastDate: DateTime(2030)
      ).then((value){
        setState(() {
         miFecha = value!;
        });
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data picker")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: 
            InputDecoration(hintText: "Fecha de nacimiento"), onTap: () {
              SelectedDate();
            },
            ),
            SizedBox(height: 10,),
            // mostraremos la fecha seleccionada
            //Text(_datetime.toString(), style: TextStyle(fontSize: 26),),
            SizedBox(height: 20,),
            Text("Mostrando el año"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(miFecha.year.toString(), 
                style: TextStyle(fontSize: 26),),
              ],
            ),
            SizedBox(height: 20,),
            Text("Mostrando el mes"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(miFecha.month.toString(), 
                style: TextStyle(fontSize: 26),),
              ],
            ),
            SizedBox(height: 20,),
            Text("Mostrando el dia"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(miFecha.day.toString(), 
                style: TextStyle(fontSize: 26),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}