import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.cyan,
        title: Text("Actividades de clase PM"),
      ),
      body: Column(
        children: [
          SizedBox(height: 8.0,),
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.6),
                  offset: Offset(-4, -4),
                  blurRadius: 6.0,
                ),
              ],
            ),
          // card 1
            child: Row(
              children: [
                CircleAvatar(radius: 32.0,backgroundColor: Colors.grey,backgroundImage: NetworkImage("https://somoskudasai.com/wp-content/uploads/2022/05/portada_kanojo-okarishimasu-118.jpg"),),
                  Column(
                    children: const [
                      Text("    Sarashina Ruka",style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 17.2),),
                      SizedBox(height: 2.0,),                     
                      Text("CEO at AMD Inc.", style: TextStyle(color: Colors.black38),),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon( // <-- Icon
                          Icons.settings,
                          size: 24.0,
                        ),
                        label: Text('Settings'), // <-- Text
                    ),
                      ),
                    ],
                  )
            
              ],
            ),

          // fin card 1
          ),

          // card 2
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.6),
                  offset: Offset(-4, -4),
                  blurRadius: 6.0,
                ),
              ],
            ),
            // diseño de card 2
             child: Row(
              children: [
                CircleAvatar(radius: 32.0,backgroundColor: Colors.grey,backgroundImage: NetworkImage("https://images.vexels.com/media/users/3/151610/isolated/preview/745f2cc314a4b27b252b25e2e7117cef-icono-de-tubos-de-qu-iacute-mica-by-vexels.png"),),
                  Expanded(
                    child: Column(
                      children: const [
                        Text("   The quick, brown fox jumps over ",style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 17.2),),
                        SizedBox(height: 2.0,),                     
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,", style: TextStyle(color: Colors.black38),),
                      ],
                    ),
                  ),
              ],
            ),

            // fin card 2
         // tercar card - inicio
          ),
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.6),
                  offset: Offset(-4, -4),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Lorem ipsum dolor sit amet , connsetetur",
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 53, 94),
                            fontSize: 20),
                      ),
                    ),
                    Icon(Icons.radio_button_on),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Lorem ipsum dolor sit amet , connsetetur",
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 53, 94),
                            fontSize: 20),
                      ),
                    ),
                    Icon(Icons.radio_button_off),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
