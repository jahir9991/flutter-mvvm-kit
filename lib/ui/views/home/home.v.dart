import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedtry/ui/views/home/home.vm.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text('home'),
          ),
          floatingActionButton: GestureDetector(
            child: IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () => model.gotoStartup(context),
            ),
          ),
          body: Column(
            children: <Widget>[Text('hi from home')],
          )),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
