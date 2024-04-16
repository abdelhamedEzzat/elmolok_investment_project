import 'package:device_preview/device_preview.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_email_for_customer_services/create_email_customer_services.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/create_unit_widget/create_unit.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/expected_return/expected_returned.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/finintial_transaction/finintiol_transaction.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/investment_calcolator/investment_calcolator.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/more_unit_info/more_unit_info.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/property_keys_info/property_key_info.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/unit_devopment_info/unit_devolpment_info.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/unit_location_info/unit_location_info.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/investors_admin_screen/investors_admin_screen.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/send_notification/send_notification_screen.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/updates/update_from_admin.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/updates/widget/update_details_widget.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/verify_information/verify_information_screen.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/verify_information/widget/verify_detatils_info.dart';
import 'package:elmolak_investment_app/features/admin/admin_home_screen.dart';
import 'package:elmolak_investment_app/features/registration_screen/login_screen/controller/email_login/email_login_cubit.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/controller/email_sign_up_cubit/email_sign_up_cubit.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/controller/google-sign_up/cubit/google_sign_up_cubit.dart';
import 'package:elmolak_investment_app/features/users/chat/user_chat.dart';
import 'package:elmolak_investment_app/features/customer_servises/chat_customer_services/chat_customer_services.dart';
import 'package:elmolak_investment_app/features/customer_servises/custmer_home_screen.dart';
import 'package:elmolak_investment_app/features/customer_servises/customer_protifolio/customer_protoflio_screen.dart';
import 'package:elmolak_investment_app/features/customer_servises/updates_screen/updates_screen.dart';
import 'package:elmolak_investment_app/features/users/dash_board/dash_board_avaliable_investment/view_avaliable_investment.dart';
import 'package:elmolak_investment_app/features/users/dash_board/dashboard_screen.dart';
import 'package:elmolak_investment_app/features/intro_screens/intro_screens.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/lived_investment_details_screen.dart';
import 'package:elmolak_investment_app/features/users/home/home_screen.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/personal_profile.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/select_embloyment_info/first_select_embloyment_info.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/select_embloyment_info/secound_select_embloyment.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/select_embloyment_info/third_select_employment.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/select_embloyment_info/upload_passport_pic_screen.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/select_embloyment_info/upload_personal_pic.dart';
import 'package:elmolak_investment_app/features/user_information/city_details_screen/city_details_screen.dart';
import 'package:elmolak_investment_app/features/user_information/country_details/country_details_screen.dart';
import 'package:elmolak_investment_app/features/user_information/personal_details/personal_details_screen.dart';
import 'package:elmolak_investment_app/features/registration_screen/login_screen/login_screen.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/signup_screen.dart';
import 'package:elmolak_investment_app/features/user_information/terms_and_conditions/terms_and_conditions.dart';
import 'package:elmolak_investment_app/features/user_information/verify_email/verify_email.dart';
import 'package:elmolak_investment_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<SignUpCubit>(
              create: (context) => SignUpCubit(),
            ),
            BlocProvider<GoogleSignUpCubit>(
              create: (context) => GoogleSignUpCubit(),
            ),
            BlocProvider<EmailLoginCubit>(
              create: (context) => EmailLoginCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const PersonalDetailsScreen(),
            // Define your home screen route here
            routes: {
              ConstantsRouteString.firstIntroScreen: (context) =>
                  const FirstIntroScreen(),
              ConstantsRouteString.signupScreen: (context) =>
                  const SignUpScreen(),
              ConstantsRouteString.loginScreen: (context) =>
                  const LoginScreen(),
              ConstantsRouteString.personalDetailsScreen: (context) =>
                  const PersonalDetailsScreen(),
              ConstantsRouteString.countryDetailsScreen: (context) =>
                  const CountryDetailsScreen(),
              ConstantsRouteString.cityDetailsScreen: (context) =>
                  const CityDetailsScreen(),
              ConstantsRouteString.vierfyEmail: (context) =>
                  const VerifyEmail(),
              ConstantsRouteString.termsAndConditions: (context) =>
                  const TermsAndConditions(),
              ConstantsRouteString.dashBoardScreen: (context) =>
                  const DashBoardScreen(),
              ConstantsRouteString.personalProfileScreen: (context) =>
                  const PersonalProfileScreen(),
              ConstantsRouteString.userChat: (context) => const UserChat(),
              ConstantsRouteString.viewAvaliableInvestment: (context) =>
                  const ViewAvaliableInvestment(),
              ConstantsRouteString.livedInvestmentDetailsScreen: (context) =>
                  const LivedInvestmentDetailsScreen(),
              ConstantsRouteString.firstSelectEmploymentScreens: (context) =>
                  const FirstSelectEmploymentScreens(),
              ConstantsRouteString.secoundSelectEmploymentScreens: (context) =>
                  const SecoundSelectEmploymentScreens(),
              ConstantsRouteString.thirdSelectEmploymentScreens: (context) =>
                  const ThirdSelectEmploymentScreens(),
              ConstantsRouteString.uploadPassportPicScreen: (context) =>
                  const UploadPassportPicScreen(),
              ConstantsRouteString.uploadPersonalPicScreen: (context) =>
                  const UploadPersonalPicScreen(),
              ConstantsRouteString.customerServicesHomeScreen: (context) =>
                  const CustomerServicesHomeScreen(),
              ConstantsRouteString.updatesScreen: (context) =>
                  const UpdatesScreen(),
              ConstantsRouteString.customerProtifolioScreen: (context) =>
                  const CustomerProtifolioScreen(),
              ConstantsRouteString.chatCustomerServices: (context) =>
                  const ChatCustomerServices(),
              ConstantsRouteString.adminChatScreen: (context) =>
                  const AdminChatScreen(),
              ConstantsRouteString.allCustomerChatsScreen: (context) =>
                  const AllCustomerChatsScreen(),
              ConstantsRouteString.customerChatBody: (context) =>
                  const CustomerChatBody(),
              ConstantsRouteString.adminHomeScreen: (context) =>
                  const AdminHomeScreen(),
              ConstantsRouteString.investorsAdminScreen: (context) =>
                  const InvestorsAdminScreen(),
              ConstantsRouteString.createCustomerServicesEmailScreen:
                  (context) => const CreateCustomerServicesEmailScreen(),
              ConstantsRouteString.createUnit: (context) => const CreateUnit(),
              ConstantsRouteString.propertyKeysInfo: (context) =>
                  const PropertysKeysInfo(),
              ConstantsRouteString.expectedReturnedAdminScreen: (context) =>
                  const ExpectedReturnedAdminScreen(),
              ConstantsRouteString.moreUnitInformation: (context) =>
                  const MoreUnitInformation(),
              ConstantsRouteString.financialTransactions: (context) =>
                  const FinancialTransactions(),
              ConstantsRouteString.investmentCalcolator: (context) =>
                  const InvestmentCalcolator(),
              ConstantsRouteString.unitLocationInformation: (context) =>
                  const UnitLocationInformation(),
              ConstantsRouteString.unitDevoleperInformation: (context) =>
                  const UnitDevoleperInformation(),
              ConstantsRouteString.updatesFromAdmin: (context) =>
                  const UpdatesFromAdmin(),
              ConstantsRouteString.sendNotificationFromAdmin: (context) =>
                  const SendNotificationFromAdmin(),
              ConstantsRouteString.updatesDetails: (context) =>
                  const UpdatesDetails(),
              ConstantsRouteString.verifyInformation: (context) =>
                  const VerifyInformation(),
              ConstantsRouteString.verifyDetailsInfo: (context) =>
                  const VerifyDetailsInfo(),
              ConstantsRouteString.homescreen: (context) => const HomeScreen(),
            },
          ),
        );
      },
    );
  }
}
