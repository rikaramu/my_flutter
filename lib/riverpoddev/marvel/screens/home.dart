import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final charactersCount =
    Provider.autoDispose.family<AsyncValue<int>, String>((ref, name) {
  debugPrint('home.dart#charactersCount');
  // final meta = CharacterPagination(page: 0, name: name);
  // return ref.watch(characterPages(meta)).whenData((value) => value.totalCount);
  return AsyncValue.data(10);
});

class Home extends HookWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('Home.build');
    return useProvider(charactersCount('')).when(
      loading: () => Container(
        // color: Colors.white,
        child: const Center(child: CircularProgressIndicator()),
      ),
      error: (err, stack) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: Center(
            child: Text('$err'),
          ),
        );
      },
      data: (characterCount) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () =>
                Navigator.pushNamed(context, '/characters/1009368'),
            label: const Text('Deep link to Iron-man'),
            icon: const Icon(Icons.link),
          ),
        );
      },
    );
  }
}
