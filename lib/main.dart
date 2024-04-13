import 'package:device_preview/device_preview.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/features/admin/admin_home_screen.dart';
import 'package:elmolak_investment_app/features/chat/user_chat.dart';
import 'package:elmolak_investment_app/features/customer_servises/chat_customer_services/chat_customer_services.dart';
import 'package:elmolak_investment_app/features/customer_servises/custmer_home_screen.dart';
import 'package:elmolak_investment_app/features/customer_servises/customer_protifolio/customer_protoflio_screen.dart';
import 'package:elmolak_investment_app/features/customer_servises/updates_screen/updates_screen.dart';
import 'package:elmolak_investment_app/features/dash_board/dash_board_avaliable_investment/view_avaliable_investment.dart';
import 'package:elmolak_investment_app/features/dash_board/dashboard_screen.dart';
import 'package:elmolak_investment_app/features/home/home_screen.dart';
import 'package:elmolak_investment_app/features/intro_screens/intro_screens.dart';
import 'package:elmolak_investment_app/features/lived_investment_details_screen/lived_investment_details_screen.dart';
import 'package:elmolak_investment_app/features/personal_Profile/personal_profile.dart';
import 'package:elmolak_investment_app/features/personal_Profile/select_embloyment_info/first_select_embloyment_info.dart';
import 'package:elmolak_investment_app/features/personal_Profile/select_embloyment_info/secound_select_embloyment.dart';
import 'package:elmolak_investment_app/features/personal_Profile/select_embloyment_info/third_select_employment.dart';
import 'package:elmolak_investment_app/features/personal_Profile/select_embloyment_info/upload_passport_pic_screen.dart';
import 'package:elmolak_investment_app/features/personal_Profile/select_embloyment_info/upload_personal_pic.dart';
import 'package:elmolak_investment_app/features/splash_screen/splash_screen.dart';
import 'package:elmolak_investment_app/features/user_information/city_details_screen/city_details_screen.dart';
import 'package:elmolak_investment_app/features/user_information/country_details/country_details_screen.dart';
import 'package:elmolak_investment_app/features/user_information/personal_details/personal_details_screen.dart';
import 'package:elmolak_investment_app/features/registration_screen/login_screen/login_screen.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/signup_screen.dart';
import 'package:elmolak_investment_app/features/user_information/terms_and_conditions/terms_and_conditions.dart';
import 'package:elmolak_investment_app/features/user_information/verify_email/verify_email.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const AdminHomeScreen(),
          // Define your home screen route here
          routes: {
            ConstantsRouteString.firstIntroScreen: (context) =>
                const FirstIntroScreen(),
            ConstantsRouteString.signupScreen: (context) =>
                const SignUpScreen(),
            ConstantsRouteString.loginScreen: (context) => const LoginScreen(),
            ConstantsRouteString.personalDetailsScreen: (context) =>
                const PersonalDetailsScreen(),
            ConstantsRouteString.countryDetailsScreen: (context) =>
                const CountryDetailsScreen(),
            ConstantsRouteString.cityDetailsScreen: (context) =>
                const CityDetailsScreen(),
            ConstantsRouteString.vierfyEmail: (context) => const VerifyEmail(),
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
            ConstantsRouteString.createCustomerServicesScreen: (context) =>
                const CreateCustomerServicesScreen(),
            ConstantsRouteString.createUnit: (context) => const CreateUnit(),
          },
        );
      },
    );
  }
}
