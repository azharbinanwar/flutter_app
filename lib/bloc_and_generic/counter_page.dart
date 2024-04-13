import 'package:flutter/material.dart';
import 'package:flutter_app/bloc_and_generic/helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  // Declaration of the Cubit with an integer value
  // as we are certain it will be an integer.

  @override
  Widget build(BuildContext context) {
    // final Helper<MyEnum> helperEnum = Helper<MyEnum>(MyEnum.v);
    // final Helper<User> helperUser = Helper<User>(User.guest());
    // final Helper<double> helperDoulbe = Helper<double>(0.0);
    // final Helper<bool> helperBool = Helper<bool>(helper);

    final Handler<int> handler = BlocProvider.of<Handler<int>>(context);
    final Handler<num> handler1 = BlocProvider.of<Handler<num>>(context);
    final Handler<int> handler2 = Handler<int>(0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Num Handler with 1.5 point change'),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.add, size: 36.0),
                  onPressed: () => handler1.update(handler1.state + 1.5),
                ),
                const SizedBox(width: 12.0),
                BlocBuilder<Handler<num>, num>(
                  // bloc: handler,
                  builder: (context, state) {
                    return Text(
                      '$state',
                      style: Theme.of(context).textTheme.displayLarge,
                    );
                  },
                ),
                const SizedBox(width: 12.0),
                IconButton(
                  icon: const Icon(Icons.remove, size: 36.0),
                  onPressed: () => handler1.update(handler1.state - 1.5),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Text('Gneric and bloc providre'),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.add, size: 36.0),
                  onPressed: () => handler.update(handler.state + 1),
                ),
                const SizedBox(width: 12.0),
                BlocBuilder<Handler<int>, int>(
                  // bloc: handler,
                  builder: (context, state) {
                    return Text(
                      '$state',
                      style: Theme.of(context).textTheme.displayLarge,
                    );
                  },
                ),
                const SizedBox(width: 12.0),
                IconButton(
                  icon: const Icon(Icons.remove, size: 36.0),
                  onPressed: () => handler.update(handler.state - 1),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Text('Non-provider instance Integer Handler'),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.add, size: 36.0),
                  onPressed: () => handler2.update(handler2.state + 1),
                ),
                const SizedBox(width: 12.0),
                BlocBuilder<Handler<int>, int>(
                  bloc: handler2,
                  builder: (context, state) {
                    return Text(
                      '$state',
                      style: Theme.of(context).textTheme.displayLarge,
                    );
                  },
                ),
                const SizedBox(width: 12.0),
                IconButton(
                  icon: const Icon(Icons.remove, size: 36.0),
                  onPressed: () => handler2.update(handler2.state - 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
