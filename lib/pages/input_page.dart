import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Input Page")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Nombre completo",
              label: Text("Nombre completo"),
              hintStyle: TextStyle(color: Colors.redAccent),
              icon: Icon(Icons.supervised_user_circle),
              suffixIcon: Icon(Icons.verified_user),
              prefixIcon: Icon(Icons.admin_panel_settings)),
              style: TextStyle(color: Colors. white, fontSize: 22),
              maxLines: 1,
            ),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration( 
                hintText: "Buscar productos",
                prefixIcon: Icon(Icons.search_rounded),
                suffixIcon: Icon(Icons.production_quantity_limits),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.yellow,width: 3.0),
                borderRadius: BorderRadius.circular(20.0))
              ),
              onChanged:( String value) {
                print(value);
              },
            ),
            SizedBox(height: 15,),
            TextFormField(
            obscureText: true,
            autofocus: false,
            decoration: InputDecoration(
            suffixIcon: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 30,
                    width: 40,
                    child: Icon(
                      Icons.password,
                      size: 45,
                    ),
                  ),
            hintText: 'Password',
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.white, width: 3.0))
     ),
   ),
          SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}