import 'package:flutter/material.dart';

class ParametresScreen extends StatelessWidget {
  const ParametresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
      ),
      body: Column(
        children: [
          // Q1.1 & Q1.2 : ListTile Mon profil avec onTap et SnackBar
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Mon profil'),
            subtitle: const Text('Nom, e-mail, mot de passe'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Effet d'encre (ripple effect) visible au clic grâce à onTap.
              // Si on supprime onTap, l'effet d'encre disparaît et le clic ne fait plus rien.
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profil sélectionné')),
              );
            },
          ),
          
          // Q1.3 : Notifications avec personnalisation (Q1.5)
          // Q1.5 : tileColor, iconColor, textColor et forme arrondie
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

          // Q1.3 : Langue
          const ListTile(
            leading: Icon(Icons.language),
            title: Text('Langue'),
            subtitle: Text('Français'),
          ),

          // Q1.3 & Q1.4 : À propos (tests dense, isThreeLine, enabled)
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('À propos'),
            // Q1.4 - Explications :
            // - dense: true -> Réduit la hauteur verticale et la taille des textes/icônes (mode compact).
            // - isThreeLine: true -> Réserve l'espace pour 3 lignes de texte (utile si subtitle est long).
            // - enabled: false -> Grise le ListTile et désactive toute interaction (onTap inactif).
            subtitle: Text(
              'Application MaBiblio v1.0\nDéveloppée dans le cadre du TP Flutter.\nTous droits réservés.',
            ),
            isThreeLine: true,
            dense: true,
            enabled: false,
          ),
        ],
      ),
    );
  }
}