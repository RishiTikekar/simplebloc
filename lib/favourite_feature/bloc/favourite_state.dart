sealed class FavouriteState {
  Set<int> likedItems = {};

  FavouriteState({required this.likedItems});
}

class InitialState extends FavouriteState {
  InitialState({required super.likedItems});
}

class OnItemLiked extends FavouriteState {
  OnItemLiked({required super.likedItems});
}

class OnItemDisLiked extends FavouriteState {
  OnItemDisLiked({required super.likedItems});
}
