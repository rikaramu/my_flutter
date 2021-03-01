import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart'; //for icon
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/search_bar.dart';
import '../widgets/marvel_logo.dart';

part 'home.freezed.dart';

const kCharactersPageLimit = 50;

@freezed
abstract class CharacterPagination with _$CharacterPagination {
  factory CharacterPagination({
    @required int page,
    String name,
  }) = _CharacterPagination;
}

// // workaround to https://github.com/dart-lang/sdk/issues/41449
// final $family = FutureProvider.autoDispose.family;
// final characterPages =
//     $family<MarvelListCharactersReponse, CharacterPagination>(
//   (ref, meta) async {
//     // Cancel the page request if the UI no-longer needs it before the request
//     // is finished.
//     // This typically happen if the user scrolls very fast
//     final cancelToken = CancelToken();
//     ref.onDispose(cancelToken.cancel);

//     final repository = ref.read(repositoryProvider);
//     final charactersResponse = await repository.fetchCharacters(
//       offset: meta.page * kCharactersPageLimit,
//       limit: kCharactersPageLimit,
//       nameStartsWith: meta.name,
//       cancelToken: cancelToken,
//     );

//     // Once a page was downloaded, preserve its state to avoid re-downloading it again.
//     ref.maintainState = true;
//     return charactersResponse;
//   },
// );

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
        color: Colors.white,
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
          body: Material(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    title: SizedBox(
                      height: 40,
                      child: marvelLogo,
                    ),
                    centerTitle: true,
                    background: Image.asset(
                      'assets/marvel/marvel_background.jpeg',
                      fit: BoxFit.cover,
                      colorBlendMode: BlendMode.multiply,
                      color: Colors.grey.shade500,
                    ),
                    titlePadding: const EdgeInsetsDirectional.only(bottom: 8),
                  ),
                  pinned: true,
                  actions: const [
                    SearchBar(),
                  ],
                ),
                SliverPadding(
                padding: const EdgeInsets.only(top: 10, left: 3, right: 3),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                  ),
                  delegate: SliverChildBuilderDelegate((c, index) {
                    return ProviderScope(
                      overrides: [
                        _characterIndex.overrideWithValue(index),
                      ],
                      // child: const CharacterItem(),
                      child: Text('temp'),
                    );
                  }),
                ),
              ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () =>
                Navigator.pushNamed(context, '/characters/1009368'),
            label: const Text('Deep link to Iron-man'),
            icon: const Icon(Icons.link),
            // icon: const Icon(CupertinoIcons.link),
          ),
        );
      },
    );
  }
}

@freezed
abstract class CharacterOffset with _$CharacterOffset {
  factory CharacterOffset({
    @required int offset,
    @Default('') String name,
  }) = _CharacterOffset;
}

final _characterIndex = ScopedProvider<int>(null);

final characterAtIndex = Provider.autoDispose
    .family<AsyncValue<Character>, CharacterOffset>((ref, query) {
  final offsetInPage = query.offset % kCharactersPageLimit;

  final meta = CharacterPagination(
    page: query.offset ~/ kCharactersPageLimit,
    name: query.name,
  );

  return ref.watch(characterPages(meta)).whenData(
        (value) => value.characters[offsetInPage],
      );
});

class CharacterItem extends HookWidget {
  const CharacterItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = useProvider(_characterIndex);

    final character = useProvider(
      characterAtIndex(CharacterOffset(offset: index)),
    );

    return character.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Text('Error $err'),
      data: (character) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/characters/${character.id}');
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Hero(
                    tag: 'character-${character.id}',
                    child: LoadingImage(url: character.thumbnail.url),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(character.name),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
