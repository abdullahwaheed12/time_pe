import 'package:get/get.dart';
import 'package:time_pe/screens/add_bank_account/view.dart';
import 'package:time_pe/screens/authentication/authentication.dart';
import 'package:time_pe/screens/authentication/faceauthentication.dart';
import 'package:time_pe/screens/authentication/kyc.dart';
import 'package:time_pe/screens/authentication/personal_info.dart';
import 'package:time_pe/screens/bank_transfer/bankTransefer.dart';
import 'package:time_pe/screens/connecting_loading.dart';
import 'package:time_pe/screens/electricity/view1.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/screens/login/login.dart';
import 'package:time_pe/screens/login/otp_view.dart';
import 'package:time_pe/screens/login/profile_detail.dart';
import 'package:time_pe/screens/login/success_submitted.dart';
import 'package:time_pe/screens/mobile_recharge/recharge1.dart';
import 'package:time_pe/screens/onboarding/view.dart';
import 'package:time_pe/screens/profile/view.dart';
import 'package:time_pe/screens/qr_scanner/view.dart';
import 'package:time_pe/screens/refer_earn/view.dart';
import 'package:time_pe/screens/reward/view.dart';
import 'package:time_pe/screens/setup_profile/view.dart';
import 'package:time_pe/screens/splash/view.dart';
import 'package:time_pe/screens/sub_account/view.dart';
import 'package:time_pe/screens/subaccount_create/view.dart';
import 'package:time_pe/screens/transaction_history/view.dart';
import 'package:time_pe/screens/transfer/transfer.dart';
import 'package:time_pe/screens/transfer/transfer_successfull.dart';
import 'package:time_pe/screens/transfer/transfer_sucessfull_view.dart';
import 'package:time_pe/screens/verification/view.dart';
import 'package:time_pe/screens/verification/view2.dart';

List<GetPage<dynamic>> routes() {
  return [
    GetPage(name: "/splash", page: () => const Splash()),
    GetPage(name: "/login", page: () => const Login()),
    GetPage(name: "/onBoarding", page: () => const OnBoarding()),
    GetPage(name: "/home", page: () => const Home()),
    GetPage(name: "/connectingLoading", page: () => const ConnectingLoading()),
    GetPage(
        name: "/verificationSuccessfull",
        page: () => const VerificationSuccessfull()),
    GetPage(
        name: "/verificationToDashboard",
        page: () => const VerificationToDashboard()),
    GetPage(
        name: "/transferSucessfull",
        page: () {
          return const TransferSucessfull();
        }),
    GetPage(
        name: "/transferSucessfullView",
        page: () => const TransferSucessfullView()),
    GetPage(name: "/transfer", page: () => const Transfer()),
    GetPage(
        name: "/transactionHistory", page: () => const TransactionHistory()),
    GetPage(name: "/subAccountCreate", page: () => const SubAccountCreate()),
    GetPage(name: "/subAccount", page: () => const SubAccount()),
    GetPage(name: "/setUpProfile", page: () => const SetUpProfile()),
    GetPage(name: "/reward", page: () => const Reward()),
    GetPage(name: "/referEarn", page: () => const ReferEarn()),
    GetPage(name: "/QRScanner", page: () => const QRScanner()),
    GetPage(name: "/profile", page: () => const Profile()),
    GetPage(name: "/mobileRecharge1", page: () => const MobileRecharge1()),
    // GetPage(name: "/mobileRecharge2", page: () => const MobileRecharge2()),
    GetPage(name: "/OTPView", page: () => const OTPView()),
    GetPage(name: "/profileDetail", page: () => const ProfileDetail()),
    GetPage(
        name: "/successfullSubmitted",
        page: () => const SuccessfullSubmitted()),
    GetPage(name: "/electricity1", page: () => const Electricity1()),
    // GetPage(name: "/electricity2", page: () => const Electricity2()),
    // GetPage(name: "/electricity3", page: () => const Electricity3()),
    GetPage(name: "/bankTransfer", page: () => const BankTransfer()),
    GetPage(name: "/authentication", page: () => const Authentication()),
    GetPage(
        name: "/faceAuthentication", page: () => const FaceAuthentication()),
    GetPage(name: "/KYC", page: () => const KYC()),
    GetPage(name: "/personalInfo", page: () => const PersonalInfo()),
    GetPage(name: "/addBankAccount", page: () => const AddBankAccount()),
  ];
}

class PageRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String onBoarding = '/onBoarding';
  static const String connectingLoading = '/connectingLoading';
  static const String home = '/home';
  static const String verificationSuccessfull = '/verificationSuccessfull';
  static const String verificationToDashboard = '/verificationToDashboard';
  static const String transferSucessfull = '/transferSucessfull';
  static const String transferSucessfullView = '/transferSucessfullView';
  static const String transfer = '/Transfer';
  static const String transactionHistory = '/transactionHistory';
  static const String subAccountCreate = '/subAccountCreate';
  static const String subAccount = '/subAccount';
  static const String setUpProfile = '/setUpProfile';
  static const String reward = '/reward';
  static const String referEarn = '/referEarn';
  static const String QRScanner = '/QRScanner';
  static const String profile = '/profile';
  static const String mobileRecharge1 = '/mobileRecharge1';
  static const String OTPView = '/OTPView';
  static const String profileDetail = '/profileDetail';
  static const String successfullSubmitted = '/successfullSubmitted';
  static const String electricity1 = '/electricity1';
  static const String bankTransfer = '/bankTransfer';
  static const String authentication = '/authentication';
  static const String faceAuthentication = '/faceAuthentication';
  static const String KYC = '/KYC';
  static const String personalInfo = '/personalInfo';
  static const String addBankAccount = '/addBankAccount';
  static const String electricity2 = '/electricity2';
  static const String electricity3 = '/electricity3';
  static const String mobileRecharge2 = '/mobileRecharge2';
}
