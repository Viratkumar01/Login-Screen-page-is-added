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
      initialRoute: '/student',
      routes: {
        '/student': (context) => StudentLoginScreen(),
        '/admin': (context) => AdminLoginScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  final String title;
  final String role;

  const LoginScreen({
    Key? key,
    required this.title,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CampUnity')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 20.0),
                  Text(
                    title,
                    style: const TextStyle(
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
                  ElevatedButton(
                    onPressed: () {
                      // Implement login logic here
                    },
                    child: const Text('Login'),
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
                      const SizedBox(width: 20.0),
                      TextButton(
                        onPressed: () {
                          if (role == 'student') {
                            Navigator.pushNamed(context, '/admin');
                          } else {
                            Navigator.pushNamed(context, '/student');
                          }
                        },
                        child: Text(role == 'student' ? 'Login as Admin' : 'Login as Student'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Or you can login with:',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10.0),
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
                  const Text(
                    'By continuing, you agree to CampUnity\'s Terms of Use and Privacy Policy.',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Divider(
                    color: Colors.black,
                    thickness: 1.0,
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Implement FAQ logic here
                        },
                        child: const Text('FAQ'),
                      ),
                      const SizedBox(width: 20.0),
                      TextButton(
                        onPressed: () {
                          // Implement Help Centre logic here
                        },
                        child: const Text('Help'),
                      ),
                      const SizedBox(width: 20.0),
                      TextButton(
                        onPressed: () {
                          // Implement Conditions of Use logic here
                        },
                        child: const Text('Terms of Use'),
                      ),
                      const SizedBox(width: 20.0),
                      TextButton(
                        onPressed: () {
                          // Implement Privacy Policy logic here
                        },
                        child: const Text('Privacy Policy'),
                      ),
                    ],
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

class StudentLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const LoginScreen(title: 'Student Login', role: 'student');
  }
}

class AdminLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const LoginScreen(title: 'Admin Login', role: 'admin');
  }
}
