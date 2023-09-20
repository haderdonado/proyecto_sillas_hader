import 'package:flutter/material.dart';
import 'sbonitas.dart';

class Articulos extends StatelessWidget {
  const Articulos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                      left: 250.0,
                    ),
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 60),
                      child: const Text(
                        'Chairs',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    )),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(bottom: 70, right: 30),
                  height: 50.0,
                  width: 50.0,
                  child: Image.asset(
                    'assets/login.png',
                  ),
                )
              ],
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              margin: const EdgeInsets.only(right: 230, bottom: 100),
              child: const Text(
                "Tipo de sillas:",
                style: TextStyle(fontSize: 26),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const Productos())); 
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 115, bottom: 90),
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 192, 209, 223), // Color de fondo
                      borderRadius:
                          BorderRadius.circular(290.0), // Bordes redondeados
                    ),
                      child: const Column(
                        // Usamos Column como contenedor de múltiples hijos
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Sillas bonitas',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ],
                      ),
                    
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5.0, bottom: 110),
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 127, 198, 57), // Color de fondo
                    borderRadius:
                        BorderRadius.circular(290.0), // Bordes redondeados
                  ),
                  child: const Column(
                    // Usamos Column como contenedor de múltiples hijos
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Sillas gamers',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, bottom: 110),
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 107, 198, 255), // Color de fondo
                    borderRadius:
                        BorderRadius.circular(290.0), // Bordes redondeados
                  ),
                  child: const Column(
                    // Usamos Column como contenedor de múltiples hijos
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Sillas para masajes',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0, top: 3),
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 128, 1, 182), // Color de fondo
                    borderRadius:
                        BorderRadius.circular(290.0), // Bordes redondeados
                  ),
                  child: const Column(
                    // Usamos Column como contenedor de múltiples hijos
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Image.asset('assets/Silla-Gamer-Roja.png'),
                      Text('Sillas De madera',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 35.0, top: 3),
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 255, 247, 216), // Color de fondo
                    borderRadius:
                        BorderRadius.circular(290.0), // Bordes redondeados
                  ),
                  child: const Column(
                    // Usamos Column como contenedor de múltiples hijos
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Image.asset('assets/Silla-Gamer-Roja.png'),
                      Text('Sillas de plastico',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
