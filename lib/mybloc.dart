import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBLoC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyBloc.build');
    return BlocProvider(
      create: (context) => MyBlocBloc(MyBlocStateInitial()),
      child: CupertinoPageScaffold(
        child: Center(
          child: BlocBuilder<MyBlocBloc, MyBlocState>(
            builder: (context, state) {
              debugPrint('MyBloc.build.BlocBuilder.builder called');
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 20,
                  ),
                  Text('My BLoC'),
                  Spacer(flex: 1),
                  Text('Hello'),
                  Spacer(flex: 1),
                  CupertinoButton(
                    color: CupertinoColors.systemBlue,
                    child: Text('Change title'),
                    onPressed: () {
                      // ignore: close_sinks
                      final mybloc = BlocProvider.of<MyBlocBloc>(context);
                      mybloc.add(ChangeTitle('My BLoC'));
                    },
                  ),
                  Spacer(flex: 1),
                  CupertinoButton(
                    color: CupertinoColors.systemBlue,
                    child: Text('Change word'),
                    onPressed: () {
                      // ignore: close_sinks
                      final mybloc = BlocProvider.of<MyBlocBloc>(context);
                      mybloc.add(ChangeWord('Hello'));
                    },
                  ),
                  Spacer(
                    flex: 20,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

@immutable
abstract class MyBlocState {
  const MyBlocState();
}

class MyBlocStateInitial extends MyBlocState {
  const MyBlocStateInitial();
}

class MyBlocTitleChanging extends MyBlocState {
  final String title;
  MyBlocTitleChanging(this.title);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MyBlocTitleChanging && o.title == title;
  }

  @override
  int get hashCode => title.hashCode;
}

class MyBlocWordChanging extends MyBlocState {
  final String word;
  MyBlocWordChanging(this.word);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MyBlocWordChanging && o.word == word;
  }

  @override
  int get hashCode => word.hashCode;
}

@immutable
abstract class MyBlocEvent {}

class ChangeTitle extends MyBlocEvent {
  final String title;

  ChangeTitle(this.title);
}

class ChangeWord extends MyBlocEvent {
  final String word;

  ChangeWord(this.word);
}

class MyBlocBloc extends Bloc<MyBlocEvent, MyBlocState> {
  MyBlocBloc(MyBlocState initialState) : super(initialState);
  @override
  Stream<MyBlocState> mapEventToState(MyBlocEvent event) async* {
    if (event is ChangeTitle) {
      debugPrint(
          'mybloc.dart.MyBlocBloc.mapEventToState<ChangeTitle> => ${event.title}');
      yield MyBlocTitleChanging(event.title);
    }
    if (event is ChangeWord) {
      debugPrint(
          'mybloc.dart.MyBlocBloc.mapEventToState<ChangeWord> => ${event.word}');
      yield MyBlocWordChanging(event.word);
    }
  }
}
