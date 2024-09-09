part of 'favourites_page.dart';

class _FavouriteForm extends StatelessWidget {
  const _FavouriteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _ItemListSection(),
      // body: ,
    );
  }
}

class _ItemListSection extends StatelessWidget {
  const _ItemListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return _ListItem(
          index: index,
        );
      },
    );
  }
}

class _ListItem extends StatelessWidget {
  final int index;

  const _ListItem({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteBloc, FavouriteState>(
      builder: (context, state) => IconButton(
        onPressed: () => state.likedItems.contains(index)
            ? context.read<FavouriteBloc>().onProductDisliked(index)
            : context.read<FavouriteBloc>().onProductLiked(index),
        icon: Icon(
          state.likedItems.contains(index)
              ? Icons.favorite
              : Icons.favorite_outline,
        ),
      ),
    );
  }
}
