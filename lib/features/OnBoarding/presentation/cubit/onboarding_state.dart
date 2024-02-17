part of 'onboarding_cubit.dart';

abstract class OnboardingState extends Equatable {
  final int index;
  const OnboardingState({required this.index});

  @override
  List<Object> get props => [index];
}

class OnboardingInitial extends OnboardingState {
  const OnboardingInitial({required super.index});
  @override
  List<Object> get props => [index];
}
