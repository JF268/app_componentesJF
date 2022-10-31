import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{
  const AvatarPage({super.key});

@override 
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Pagina de Avatar"),
      centerTitle: true,
      elevation: 2,
      backgroundColor: Colors.purple,
      actions: [
        CircleAvatar(
          backgroundImage: NetworkImage("https://imgs.search.brave.com/vBWUY0W_42OPj7DmOMdCGC56lRx7Xkf0o3Gzbx_0n6s/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2ZjLzlj/L2Y0L2ZjOWNmNGRi/ZmRmYjI4ZmEwYWU0/ODMyZWZlZDFjZjUx/LmpwZw"),),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ],
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          FadeInImage(placeholder: AssetImage("assets/image/loading.gif"), 
          image: NetworkImage("https://imgs.search.brave.com/vBWUY0W_42OPj7DmOMdCGC56lRx7Xkf0o3Gzbx_0n6s/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2ZjLzlj/L2Y0L2ZjOWNmNGRi/ZmRmYjI4ZmEwYWU0/ODMyZWZlZDFjZjUx/LmpwZw")
          ,fit:BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 1000),
          ),
        ],
      ),
    ),
  );
}

}