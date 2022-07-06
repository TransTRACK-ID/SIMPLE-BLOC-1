part of 'github_bloc.dart';

@immutable
abstract class GithubState {}

class GithubInitial extends GithubState {}

class GithubLoading extends GithubState {}

class GithubLoadedSuccess extends GithubState {
  final String imageUrl;

  GithubLoadedSuccess(this.imageUrl);
}

class GithubError extends GithubState {}
