import 'package:bmw/features/State_Management/cubit/counter_cubit.dart';
import 'package:bmw/features/State_Management/cubit/counter_state.dart';
import 'package:bmw/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StateManagement extends StatelessWidget {
  const StateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          if(state.counterValue == 10){
            ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                SnackBar(
                  content: Text('Counter reached 10!'),
                  duration: Duration(seconds: 1),
                )
            );
          }

          if(state.counterValue == 5){
            ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                SnackBar(
                  content: Text('Counter reached 5!'),
                  duration: Duration(seconds: 1),
                )
            );
          }
          if(state.counterValue == 15){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const OnboardingScreen(),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Counter (Very Basic)'),
              centerTitle: true,
              actions: [
                IconButton(
                  tooltip: 'Reset',
                  onPressed: () {
                    context.read<CounterCubit>().reset();
                  },
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Current value',
                      style: TextStyle(fontSize: 24, color: Colors.blue),
                    ),
                    const SizedBox(height: 8),
                    BlocBuilder<CounterCubit, CounterState>(
                      builder:
                          (context, state) =>
                          Text(
                            state.counterValue.toString(),
                            style: textTheme.displaySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    ),
                    const SizedBox(height: 20),

                    // Small hint
                    Text(
                      'Tip: Use + / - or Reset icon in the AppBar.',
                      style: textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  heroTag: 'inc',
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 12),
                FloatingActionButton(
                  heroTag: 'dec',
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
