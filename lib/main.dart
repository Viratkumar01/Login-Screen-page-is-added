import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampUnity',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/student': (context) => StudentLoginScreen(),
        '/admin': (context) => AdminLoginScreen(),
      },
    );
  }
}


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CampUnity')),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/nitp.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/student');
                },
                child: const Text('Student Login'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/admin');
                },
                child: const Text('Admin Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StudentLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CampUnity')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/nitp.jpeg',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Student Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text('Or you can login with:'),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/Google.png'),
                      ),
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/GitHub.png'),
                      ),
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/fb-logo.jpg'),
                      ),
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/linkedin.png'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Implement forgot password logic here
                        },
                        child: const Text('Forgot Password?'),
                      ),
                      const SizedBox(width: 20.0),
                      TextButton(
                        onPressed: () {
                          // Implement sign up logic here
                        },
                        child: const Text('Sign Up'),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement login logic here
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AdminLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CampUnity')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/nitp.jpeg',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Admin Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text('Or you can login with:'),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/Google.png'),
                      ),
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/GitHub.png'),
                      ),
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/fb-logo.jpg'),
                      ),
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/linkedin.png'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Implement forgot password logic here
                        },
                        child: const Text('Forgot Password?'),
                      ),
                      const SizedBox(width: 20.0),
                      TextButton(
                        onPressed: () {
                          // Implement sign up logic here
                        },
                        child: const Text('Sign Up'),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement login logic here
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
