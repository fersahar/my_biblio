
import 'package:flutter/material.dart';
import '../main.dart';
import '../data/livres_data.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Garder uniquement les livres qui sont des nouveautés
    final nouveautes = livres.where((livre) => livre.nouveaute == true).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalogue des livres'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Titre de la section Nouveautés
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Nouveautés',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Liste horizontale des nouveautés
          SizedBox(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: nouveautes.map((livre) {
                return Container(
                  width: 110,
                  margin: const EdgeInsets.all(8.0),
                  color: livre.couleur,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      livre.titre,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          // Titre de la liste complète
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Tous les livres',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Liste verticale de tous les livres
          Expanded(
            child: ListView.separated(
              itemCount: livres.length,
              itemBuilder: (context, index) {
                final livre = livres[index];
                return livreTile(livre);
              },
              separatorBuilder: (context, index) {
                return const Divider(indent: 72);
              },
            ),
          ),
        ],
      ),
    );
  }
}
