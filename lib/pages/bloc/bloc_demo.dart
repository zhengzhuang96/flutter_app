import 'package:flutter/material.dart';
import 'package:flutter_app/blocs/bloc_provider.dart';
import 'package:flutter_app/blocs/bloc/bloc_page_bloc.dart';

/* *
 * bloc
 */
class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<IncrementBloc>(
      bloc: IncrementBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Column(
          children: <Widget>[
            TextWidget(),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IncrementBloc bloc = BlocProvider.of<IncrementBloc>(context);

    return Container(
      child: StreamBuilder<int>(
        stream: bloc.outCounter,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          return Text('You hit me: ${snapshot.data} times');
        },
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IncrementBloc bloc = BlocProvider.of<IncrementBloc>(context);
    return Container(
      child: MaterialButton(
        child: Text('加一'),
        onPressed: () {
          bloc.incrementCounter.add(1);
        },
      ),
    );
  }
}
