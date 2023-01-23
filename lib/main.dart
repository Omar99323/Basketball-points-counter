import 'package:basketball_points/cubit/cubit.dart';
import 'package:basketball_points/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointCounter());
}

class PointCounter extends StatelessWidget {
  const PointCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 450,
                      child: Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).Apoints}',
                            style: const TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .AteamIncrement(button: 1);
                            },
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .AteamIncrement(button: 2);
                            },
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .AteamIncrement(button: 3);
                            },
                            child: const Text(
                              'Add 3 Point',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 450,
                      child: const VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 10,
                        endIndent: 40,
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 450,
                      child: Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).Bpoints}',
                            style: const TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .BteamIncrement(button: 1);
                            },
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .BteamIncrement(button: 2);
                            },
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .BteamIncrement(button: 3);
                            },
                            child: const Text(
                              'Add 3 Point',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 40),
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).reset();
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
