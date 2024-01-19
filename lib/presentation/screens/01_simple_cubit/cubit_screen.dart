import 'package:blocs_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:blocs_app/presentation/blocs/blocs.dart';


class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final usernameCubit =  context.watch<UsernameCubit>();


    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: Center(
        child: Text( usernameCubit.state ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          usernameCubit.setUsername(
            RandomGenerator.getRandomName()
          );
        },
        child: const Icon(Icons.refresh),)
    );
  }
}