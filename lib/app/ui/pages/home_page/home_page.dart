import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uptodo_app/app/controllers/home_controller.dart';
import 'package:uptodo_app/app/utils/custom_color.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () {},
        ),
        actions: const [
          CircleAvatar(
            child: Center(
              child: Text('A'),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: _emptyBody(),
      ),

      /// Crea un BottomNavigationBar con 4 items y un floatingActionButton en el centro
      bottomNavigationBar: BottomAppBar(
        color: CustomColor.mediumGreyColor,
        elevation: 0.0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20.0),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(width: 20.0),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  /// Se muestra cuando el body de la pantalla no muestra ninguna tarea
  Widget _emptyBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/checklist.png'),
          const SizedBox(height: 10.0),
          const Text('Que te gustaría hacer hoy?'),
          const SizedBox(height: 10.0),
          const Text('Presiona + para agregar una tarea'),
        ],
      ),
    );
  }
}
