import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/view/layaut.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 214, 225, 233), // Cambia el color de fondo aquí
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 6.0), // Ajusta este valor según tu preferencia
              child: Image.asset(
                'assets/login.png',
                width: 200, // Ancho deseado
                height: 150, // Alto deseado
                alignment: Alignment.topCenter,
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico o telefono',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Articulos()),
                );
                // Lógica para procesar el inicio de sesión
              },
              child: const Text('Ingresar'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navegar a la página de creación de cuenta cuando se presione "Crear cuenta"
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateAccountPage()),
                );
              },
              child: const Text('Crear cuenta'),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  // Navegar a la página de olvidar contraseña cuando se presione "Olvidar cuenta"
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()),
                  );
                },
                child: const Text('Olvide mi contraseña'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// CREAR CUENTA

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crear cuenta')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Formulario de creación de cuenta',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 12), // Ajusta este valor según tu preferencia
              child: Image.asset(
                'assets/login.png',
                width: 200, // Ancho deseado
                height: 150, // Alto deseado
                alignment:
                    Alignment.topCenter, // Reemplaza con la ruta de tu imagen
              ),
            ),
            const SizedBox(height: 5.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Número de teléfono',
                hintText: 'Ingrese su número de teléfono',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                hintText: 'usuario@example.com',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                hintText: 'Ingrese su contraseña',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Nombre',
                hintText: 'Ingrese su nombre',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Apellido',
                hintText: 'Ingrese su apellido',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para procesar la creación de cuenta
              },
              child: const Text('Crear cuenta'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navegar de regreso a la página de login cuando se presione "Regresar"
                Navigator.pop(context);
              },
              child: const Text('Regresar al login'),
            ),
          ],
        ),
      ),
    );
  }
}

// CLASE DE OLVIDE LA CONTRASEÑA
class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Olvidar contraseña')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 12), // Ajusta este valor según tu preferencia
              child: Image.asset('assets/login.png',
                width: 200, // Ancho deseado
                height: 150, // Alto deseado
                alignment:
                    Alignment.topCenter,
              ), // Reemplaza con la ruta de tu imagen
            ),
            const Text(
              'Ingrese su código de recuperación',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Código de recuperación',
                hintText: 'Ingrese el código aquí',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para procesar el código de recuperación
              },
              child: const Text('Recuperar contraseña'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navegar de regreso a la página de login cuando se presione "Regresar"
                Navigator.pop(context);
              },
              child: const Text('Regresar al login'),
            ),
          ],
        ),
      ),
    );
  }
}
