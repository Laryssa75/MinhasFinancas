import 'package:flutter/material.dart';
//import 'home_screen.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _formKey = GlobalKey<FormState>();
  final _usuarioController = TextEditingController();
  final _senhaController = TextEditingController();

  // Definindo um login e senha padrão para o exemplo
  String usuarioCorreto = "laryssa";
  String senhaCorreta = "senha123";

  @override
  void dispose() {
    _usuarioController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _usuarioController,
                decoration: const InputDecoration(labelText: 'Usuário'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome de usuário';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _senhaController,
                decoration: const InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a senha';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (_usuarioController.text == usuarioCorreto &&
                        _senhaController.text == senhaCorreta) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaInicial(),
                        ),
                      );
                    }
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
      ),
      body: const Center(
        child: Text('Bem-vindo!'),
      ),
    );
  }
}
