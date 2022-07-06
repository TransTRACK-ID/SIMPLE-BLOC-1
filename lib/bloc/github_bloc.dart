import 'dart:async';

import 'package:belajar/github_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'github_event.dart';
part 'github_state.dart';

class GithubBloc extends Bloc<GithubEvent, GithubState> {
  GithubBloc() : super(GithubInitial()) {
    on<PushGetButton>((event, emit) async {
      final _repo = GithubRepository();
      emit(GithubLoading());

      try {
        final value = await _repo.githubAvatar('naufalhzh');
        emit(GithubLoadedSuccess(value));
      } catch (e) {
        emit(GithubError());
      }
    });
  }
}
