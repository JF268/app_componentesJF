import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget{

  // primer cuadro de dialogo
  showMyAlert(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Texto de alerta"),
        elevation: 10,
        content: const Text(
              "Este es un ejemplo del AlertDialog. esto es un texto de prueba"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
      );
    },
    );
  }
 // aqui va el segundo cuadro de dialogo
  mostrarDialogo2(BuildContext context){
    showDialog(context: context, builder: (BuildContext){
      return AlertDialog(
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/262508/pexels-photo-262508.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),),
             Title(
                  color: Colors.black,
                  child: Text("Blog post published"),
                ),
                Text("tihs blog post has been published . Team members"
                    "will be able to edit this post and republish changes"), 
          ],
        ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancelar")),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Confirmar")),
              ],
            )
          ],
      );
    }
    );

  }
 // 3er cuadro de alerta
    mostrarDialogo3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://images.pexels.com/photos/3760790/pexels-photo-3760790.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              Text("Your video has been uploaded"),
              Text("you're video has finished uploading end is live"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Ingrese un link"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Icon(Icons.share),
                          Text(
                            "Copy Link",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 6, 2, 243)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Card(
                    
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Next ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    color: Color.fromARGB(255, 87, 35, 146),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Alert Page"),
    backgroundColor: Colors.amber,
    centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            showMyAlert(context);
            } , child: Text("Alerta")),
            SizedBox(height: 15,),
           ElevatedButton(onPressed: () {
            mostrarDialogo2(context);
            } , child: Text("Alerta")),
            SizedBox(height: 15,),
           ElevatedButton(onPressed: () {
            mostrarDialogo3(context);
            } , child: Text("Alerta")),
        ],
      ) ,
    ),
    );
  }

}