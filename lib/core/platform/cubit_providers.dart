import 'package:flutter_bloc/flutter_bloc.dart';

final providers = <BlocProvider>[
  // BlocProvider<OnboardingCubit>(
  //   create: (context) => OnboardingCubit(
  //     OnboardingModuleInjector.resolve<CheckOnboardingStatus>(),
  //     OnboardingModuleInjector.resolve<PersistOnboardingStatus>(),
  //   )..checkOnboardingStatus(),
  // ),
  // BlocProvider<AuthenticationCubit>(
  //   create: (context) => AuthenticationCubit(
  //     AuthenticationModuleInjector.resolve<PhoneLogin>(),
  //     AuthenticationModuleInjector.resolve<Logout>(),
  //     AuthenticationModuleInjector.resolve<Signup>(),
  //     AuthenticationModuleInjector.resolve<VerifyOtp>(),
  //     AuthenticationModuleInjector.resolve<SignIn>(),
  //     AuthenticationModuleInjector.resolve<CheckLogin>(),
  //     OnboardingModuleInjector.resolve<CheckOnboardingStatus>(),
  //     AuthenticationModuleInjector.resolve<FetchUser>(),
  //   )..checkLogin(),
  // ),
];
