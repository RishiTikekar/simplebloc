sealed class FavouriteEvent {}

class StartedEvent extends FavouriteEvent {}

class OnLikedEvent extends FavouriteEvent {
  final int likedIndex;

  OnLikedEvent(this.likedIndex);
}

class OnDisLikedEvent extends FavouriteEvent {
  final int dislikedIndex;

  OnDisLikedEvent(this.dislikedIndex);
}
