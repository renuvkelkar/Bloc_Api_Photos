part of 'photos_bloc.dart';

abstract class PhotosEvent extends Equatable {
  const PhotosEvent();
}
class FetchPhotos extends PhotosEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
