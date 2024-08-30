import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Site de teste :)"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Image.network(
            "https://img.quizur.com/f/img645d6af2102400.66284301.jpeg?lastEdited=1683843862",
            width: 250,
            height: 250,
          ),
          const Text(
            "Texto 1",
            style: TextStyle(fontSize: 30),
          ),
          const Text(
            "Texto em negrito e sublinhado",
            style: TextStyle(
              fontSize: 18,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 32, 34, 122),
            ),
          ),
          const Text(
            "Texto em italico e azul",
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              color: Colors.blue,
            ),
          ),
          const Center(
            child: Text(
              "Texto grande e centralizado",
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "botão 1",
              style: TextStyle(fontSize: 10),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "botão 2",
              style: TextStyle(fontSize: 10),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 0, 0),
              foregroundColor: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            icon: const Icon(Icons.add, size: 12),
            label: const Text(
              'botão 3',
              style: TextStyle(fontSize: 10),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            icon: const Icon(Icons.contact_page, size: 12),
            label: const Text(
              'Contato',
              style: TextStyle(fontSize: 10),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Form()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}

class Form extends StatelessWidget {
  const Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contato"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Image.network(
            "https://img.quizur.com/f/img645d6af2102400.66284301.jpeg?lastEdited=1683843862",
            width: 250,
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nome',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Telefone',
                ),
              ),
              ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Enviar",
              style: TextStyle(fontSize: 10),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 255, 106),
              foregroundColor: Colors.white,
            ),
          ),
            ]),
          ),
        ]),
      ),
    );
  }
}
