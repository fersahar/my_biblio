
import 'package:flutter/material.dart';

class ParametresScreen extends StatelessWidget {
  const ParametresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Mon profil'),
              subtitle: const Text('Nom, e-mail, mot de passe'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Profil sélectionné'),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              subtitle: const Text('Gérer les alertes de nouveaux livres'),
              tileColor: Colors.blue.withOpacity(0.05),
              iconColor: Colors.blue,
              textColor: Colors.blue[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onTap: () {},
            ),

            const ListTile(
              leading: Icon(Icons.language),
              title: Text('Langue'),
              subtitle: Text('Français'),
            ),

            const ListTile(
              leading: Icon(Icons.info),
              title: Text('À propos'),
              subtitle: Text(
                'Application MaBiblio v1.0\n'
                'Développée dans le cadre du TP Flutter.\n'
                'Tous droits réservés.',
              ),

              dense: true,

              isThreeLine: true,

              enabled: false,
            ),
          ],
        ).toList(),
      ),
    );
  }
}
