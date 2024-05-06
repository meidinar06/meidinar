import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20.0),
            _isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () {
                      _login();
                    },
                    child: Text('Submit'),
                  ),
          ],
        ),
      ),
    );
  }

  void _login() {
    setState(() {
      _isLoading = true;
    });
    // Contoh validasi login
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Simulasi proses login (gunakan metode validasi yang sesuai dengan aplikasi Anda)
    Future.delayed(Duration(seconds: 2), () {
      if (username == 'admin' && password == 'admin123') {
        // Jika login berhasil, bisa diarahkan ke halaman berikutnya
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(username: username),
          ),
        );
      } else {
        // Jika login gagal, bisa menampilkan pesan kesalahan
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text('Username or password is incorrect.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
      setState(() {
        _isLoading = false;
      });
    });
  }
}

class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, $username!'),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
