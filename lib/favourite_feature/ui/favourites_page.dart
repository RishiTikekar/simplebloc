import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/favourite_feature/bloc/favourite_bloc.dart';
import 'package:test/favourite_feature/bloc/favourite_state.dart';

part 'favourite_form.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavouriteBloc>(
      create: (_) => FavouriteBloc(),
      child: const _FavouriteForm(),
    );
  }
}
