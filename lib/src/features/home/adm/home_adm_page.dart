import 'package:dw_barbershop/src/features/home/adm/widgets/home_employee_tile.dart';
import 'package:dw_barbershop/src/features/home/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeAdmPage extends StatelessWidget {
  const HomeAdmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: HomeHeader(
                hideFilter: true,
              )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const HomeEmployeeTile(),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
