import 'package:flutter/material.dart';
import 'package:flutter_denemeler/variable_and_lists/global_lists.dart';

class DropdownMenuSample extends StatefulWidget {
  const DropdownMenuSample({super.key});

  @override
  State<DropdownMenuSample> createState() => _DropdownMenuSampleState();
}

class _DropdownMenuSampleState extends State<DropdownMenuSample> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController menuController = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'DropdownMenu',
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [        
                DropdownMenu<MenuItem>(
                  controller: menuController,
                  width: 150,
                  hintText: GlobalVariables.label,
                  requestFocusOnTap: true,
                  enableFilter: true,
                  menuStyle: MenuStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue.shade50),
                  ),
                  label: GlobalVariables.label.isNotEmpty
                  ? Text(
                   GlobalVariables.label
                  )
                  : Text('Seçim Yapın'),
                  onSelected: (MenuItem? menu) {
                    setState(() {
                      GlobalVariables.label = menu!.label;
                    });
                  },
                  dropdownMenuEntries:
                      menuItems.map<DropdownMenuEntry<MenuItem>>((MenuItem menu) {
                    return DropdownMenuEntry<MenuItem>(
                        value: menu,
                        label: menu.label,
                        leadingIcon: Icon(menu.icon));
                  }).toList(),
                ),
                
                DropdownMenu<MenuItem2>(
                  
                  controller: menuController,
                  width: 150,
                  hintText: GlobalVariables.label,
                  requestFocusOnTap: true,
                  enableFilter: true,
                  menuStyle: MenuStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue.shade50),
                  ),
                  label: GlobalVariables.label.isNotEmpty
                  ? Text(
                   GlobalVariables.label
                  )
                  : Text('Seçim Yapın'),
                  onSelected: (MenuItem2? menu) {
                    setState(() {
                      GlobalVariables.label = menu!.label;
                    });
                  },
                  dropdownMenuEntries:
                      menuItems2.map<DropdownMenuEntry<MenuItem2>>((MenuItem2 menu) {
                    return DropdownMenuEntry<MenuItem2>(
                        value: menu,
                        label: menu.label,
                        leadingIcon: Icon(menu.icon));
                  }).toList(),
                ),
              ],
            ),
          ),
        ));
  }
}

class MenuItem {
  final int id;
  final String label;
  final IconData icon;

  MenuItem(this.id, this.label, this.icon);
}

List<MenuItem> menuItems = [
  MenuItem(1, 'Home', Icons.home),
  MenuItem(2, 'Profile', Icons.person),
  MenuItem(3, 'Settings', Icons.settings),
  MenuItem(4, 'Favorites', Icons.favorite),
  MenuItem(5, 'Notifications', Icons.notifications),
  MenuItem(6, 'Messages', Icons.message),
  MenuItem(7, 'Explore', Icons.explore),
  MenuItem(8, 'Search', Icons.search),
  MenuItem(9, 'Chat', Icons.chat),
  MenuItem(10, 'Calendar', Icons.calendar_today),
];

class MenuItem2 {
  final int id;
  final String label;
  final IconData icon;

  MenuItem2(this.id, this.label, this.icon);
}

List<MenuItem2> menuItems2 = [
  MenuItem2(1, 'Home', Icons.home),
  MenuItem2(2, 'Profile', Icons.person),
  MenuItem2(3, 'Settings', Icons.settings),
  MenuItem2(4, 'Favorites', Icons.favorite),
  MenuItem2(5, 'Notifications', Icons.notifications),
  MenuItem2(6, 'Messages', Icons.message),
  MenuItem2(7, 'Explore', Icons.explore),
  MenuItem2(8, 'Search', Icons.search),
  MenuItem2(9, 'Chat', Icons.chat),
  MenuItem2(10, 'Calendar', Icons.calendar_today),
];