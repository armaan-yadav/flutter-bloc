import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/bloc/counter_bloc.dart';
import 'package:learning_bloc/cubit/counter_cubit.dart';
import 'package:learning_bloc/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);

    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc, Map>(
          builder: (context, state) {
            print(state);
            return Text(
              "Count : ${state["count"]} \n Name : ${state["name"]}",
              style: const TextStyle(
                fontSize: 30,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Page2(),
          ));
        },
        child: const Icon(
          Icons.navigate_next,
        ),
      ),
    );
  }
}
