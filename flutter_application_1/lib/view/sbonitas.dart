import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/formu.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

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
                const Padding(
                  padding: EdgeInsets.only(
                    left: 290.0,
                    top: 5.0,
                  ),
                  child: Text(
                    'Chairs',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                    width: 10.0), // Espacio entre el texto y la imagen
                SizedBox(
                  height: 30.0,
                  width: 30.0,
                  child: Image.asset(
                    'assets/login.png',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33),
            Container(
              margin: const EdgeInsets.only(bottom: 50, right: 210),
              child: const Text(
                "Sillas bonitas:",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20.0,
                          top:
                              20.0), // Ajusta la distancia entre el contenedor y los botones
                      height: 150,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/silla1.png'),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, top: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Formu()),
                              );
                              // Lógica para el primer botón aquí
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical:
                                      5), // Ajusta el padding para reducir el tamaño
                            ),
                            child: const Text('Comprar'),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Formu()),
                              );

                              // Lógica para el segundo botón aquí
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 54, 57, 244),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical:
                                      5), // Ajusta el padding para reducir el tamaño
                            ),
                            child: const Text('Alquilar'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                //SEGUNDA IMAGEN

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30.0, top: 10.0),
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 192, 209, 223),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/sillas_bonitas/silla_relax.jpg'),
                          // const Text('Sillas de Oficina'),
                        ],
                      ),
                    ),

                    //BOTON 2 DE SILLAS

                    Container(
                      margin: const EdgeInsets.only(left: 30.0, top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Lógica para el primer botón aquí
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5,
                              ),
                            ),
                            child: const Text('Comprar'),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Lógica para el segundo botón aquí
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 54, 57, 244),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5,
                              ),
                            ),
                            child: const Text('Alquilar'),
                          ),
                        ],
                      ),
                    ),

                    //FIN DEL BOTON 2
                  ],
                ),

                // FIN SEGUNDA IMAGEN
              ],
            ),

            const SizedBox(height: 20),

            //INICIO DE LA TERCERA IMAGEN

            Row(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 0.0, top: 30.0),
                        height: 150,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 192, 209, 223),
                        ),
                        child: Column(
                          // Usamos Column como contenedor de múltiples hijos
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/sillas_bonitas/silla_oso.jpg'),
                            // const Text('Sillas de Evento'),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10.0, top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Lógica para el primer botón aquí
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                              ),
                              child: const Text('Comprar'),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                // Lógica para el segundo botón aquí
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 54, 57, 244),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                              ),
                              child: const Text('Alquilar'),
                            ),
                          ],
                        ),
                      ),
                    ]),

                //ULTIMO CONTENEDOR

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 40.0, top: 30.0),
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          // color: Color.fromARGB(255, 192, 209, 223),
                          ),
                      child: Column(
                        // Usamos Column como contenedor de múltiples hijos
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/sillas_bonitas/silla_butaca.jpg'),
                          // const Text('Sillas Gamers'),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 40.0, top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Lógica para el primer botón aquí
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5,
                              ),
                            ),
                            child: const Text('Comprar'),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Formu()),
                              );
                              // Lógica para el segundo botón aquí
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 54, 57, 244),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5,
                              ),
                            ),
                            child: const Text('Alquilar'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
