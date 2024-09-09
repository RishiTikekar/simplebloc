import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/favourite_feature/bloc/favourite_event.dart';
import 'package:test/favourite_feature/bloc/favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc()
      : super(
          InitialState(
            likedItems: {},
          ),
        ) {
    on<OnLikedEvent>(_onElementLiked);
    on<OnDisLikedEvent>(_onElementDisLiked);
  }

  void onProductLiked(int index) {
    add(
      OnLikedEvent(index),
    );
  }

  void onProductDisliked(int index) {
    add(
      OnDisLikedEvent(index),
    );
  }

  void _onElementLiked(OnLikedEvent event, Emitter emit) {
    state.likedItems.add(event.likedIndex);

    emit(
      OnItemLiked(
        likedItems: Set.from(state.likedItems),
      ),
    );
  }

  void _onElementDisLiked(OnDisLikedEvent event, Emitter emit) {
    state.likedItems.remove(event.dislikedIndex);

    emit(
      OnItemDisLiked(
        likedItems: Set.from(state.likedItems),
      ),
    );
  }
}
