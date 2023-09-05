import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'life_cycle_bloc.dart';

class AppLifeCycleWidget extends StatefulWidget {
  const AppLifeCycleWidget({Key? key}) : super(key: key);

  @override
  State<AppLifeCycleWidget> createState() => _AppLifeCycleWidgetState();
}

class _AppLifeCycleWidgetState extends State<AppLifeCycleWidget>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    AppLifecycleListener(
      onRestart: () {
        print('MainActivity --  onRestart');
      },
      onDetach: () {
        print('MainActivity --  onDetach');
      },
      onHide: () {
        print('MainActivity --  onHide');
      },
      onInactive: () {
        print('MainActivity --  onInactive');
      },
      onPause: () {
        print('MainActivity --  onPause');
      },
      onResume: () {
        print('MainActivity --  onResume');
      },
      onShow: () {
        print('MainActivity --  onShow');
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
   // print('MainActivity --   $state');
  }

  _showMyDialog() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('This is a demo alert dialog.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //print('DemoStatelessWidget ----- DemoStatelessWidget Build');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyText(),
              ElevatedButton(onPressed: () {
                _showMyDialog();
                //context.read<LifeCycleBloc>().add(UpdateEvent());
              }, child: BlocBuilder<LifeCycleBloc, LifeCycleState>(
                builder: (context, state) {
                  //print('DemoStatelessWidget ----- LifeCycleBloc Build');
                  if (state is LifeCycleUpdated) {
                    return NumText(state.number);
                  }
                  return Container();
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print('DemoStatelessWidget ----- MyText Build');
    return const Text('MyText');
  }
}

class NumText extends StatelessWidget {
  int random;

  NumText(this.random, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print('DemoStatelessWidget ----- NumText Build');
    return Text('$random');
  }
}
