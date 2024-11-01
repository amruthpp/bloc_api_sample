part of 'facts_bloc.dart';

@immutable
sealed class FactsEvent {}

class FetchData extends FactsEvent {}