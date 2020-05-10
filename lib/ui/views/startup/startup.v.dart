import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedtry/ui/views/startup/startup.vm.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () => model.update('hi')),
        body: Center(child: Text(model.title)),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
