import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menus = [
      {
        'id': 1,
        'titre': 'Petit déjeuner',
        'description': 'Lait, céréales et fruits',
        'icone': '🥣',
      },
      {
        'id': 2,
        'titre': 'Déjeuner',
        'description': 'Poulet, riz et légumes',
        'icone': '🍲',
      },
      {
        'id': 3,
        'titre': 'Goûter',
        'description': 'Biscuit et compote de pomme',
        'icone': '🍪',
      },
      {
        'id': 4,
        'titre': 'Jus de fruits',
        'description': "Jus d'orange naturel",
        'icone': '🍊',
      },
      {
        'id': 5,
        'titre': 'Fruits frais',
        'description': 'Une sélection de fruits de saison',
        'icone': '🍎',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Accueil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Menus'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('À propos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Menus du jour',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: menus.length,
              itemBuilder: (context, index) {
                final menu = menus[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: ListTile(
                    leading: Text(
                      menu['icone'],
                      style: const TextStyle(fontSize: 32),
                    ),
                    title: Text(
                      menu['titre'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(menu['description']),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}