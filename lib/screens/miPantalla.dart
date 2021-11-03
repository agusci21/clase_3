import 'package:flutter/material.dart';


class MiNuevaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            //Foto
            _NuestraImagen(),

            Text('Bosque', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, wordSpacing: 20, letterSpacing: 20)),

            Container( height: 20,),

            _MiTabla(),

            
             
              
              Container(
                width: 200,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 0.5, 0.6, 0.7],
                    colors: [
                      Colors.green.shade600,
                      Colors.red.shade900,
                      Colors.pink.shade900,
                      Colors.blue.shade900,
                    ]
                  )
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'segundaPantalla');
                  },
                ),
              ),
            

          ],
        ),
      )
   );
  }
}

class _MiTabla extends StatelessWidget {
  const _MiTabla({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(20),
      child: Column(

        children: [
          //Preguntas
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('     Lugar'),
              Text('Villa la Angostura'),
              
            ],
          ),

          SizedBox(height: 20,),

           //Respuestas
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Clima'),
              Text('Humedo'),
            ],
          ),

        ],
      ),
    );
  }
}






class _NuestraImagen extends StatelessWidget {
  const _NuestraImagen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage('assets/arbol.jpg'))
      ),
    );
  }
}

