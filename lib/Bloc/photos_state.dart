part of 'photos_bloc.dart';

abstract class PhotosState extends Equatable {
  const PhotosState();
  @override
  List<Object> get props => [];
}


class PhotosInitial extends PhotosState {}
class PhotosLoading extends PhotosState {}
class PhotosSuccess extends PhotosState {
  final List<PhotoClass> listOfPhotos;

  PhotosSuccess(this.listOfPhotos);
  @override
  List<Object> get props => [listOfPhotos];
}
class PhotosError extends PhotosState {
  final error;
  PhotosError(String string, {this.error});
}
