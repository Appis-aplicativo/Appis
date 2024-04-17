import 'package:flutter/material.dart';

class BarraNavegacao extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BarraNavegacao ({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bug_report_outlined),
          label: 'Produções',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'Sobre',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      onTap: onTap,
    );
  }
}
