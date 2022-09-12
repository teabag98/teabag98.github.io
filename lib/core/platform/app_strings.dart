import 'dart:ui';

import 'package:flutter/material.dart';

class AppStrings {
  static String? circularProFontFamily = "CircularPro";
  static Locale locale = const Locale('en');
  static const String mapStyleId = "cl5tf8z5z000614p3bc479qs9";
  static const String integrationUrl =
      "https://api.mapbox.com/styles/v1/eric-king/cl62lagup001g14o2kin407ix/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZXJpYy1raW5nIiwiYSI6ImNsNjJrdWs2NTA2ZnYzY281d2d4c3BtbGgifQ.RMwbApKVfjrmHWe2bQw5CA";
  static const String mapToken =
      "pk.eyJ1IjoiZXJpYy1raW5nIiwiYSI6ImNsNjJrdWs2NTA2ZnYzY281d2d4c3BtbGgifQ.RMwbApKVfjrmHWe2bQw5CA";

  // ONBOARDING
  static String? get onboardingPaymentHeader => _localizedValues[
      locale.languageCode]![OpStringIds.onboardingPaymentHeader];

  static String? get onboardingPaymentSubtext => _localizedValues[
      locale.languageCode]![OpStringIds.onboardingPaymentSubtext];

  static String? get onboardingRequestsHeader => _localizedValues[
      locale.languageCode]![OpStringIds.onboardingRequestsHeader];

  static String? get onboardingRequestsSubtext => _localizedValues[
      locale.languageCode]![OpStringIds.onboardingRequestsSubtext];

  static String? get onboardingBillsHeader =>
      _localizedValues[locale.languageCode]![OpStringIds.onboardingBillsHeader];

  static String? get onboardingBillsSubtext => _localizedValues[
      locale.languageCode]![OpStringIds.onboardingBillsSubtext];

  static String? get landingHeader =>
      _localizedValues[locale.languageCode]![OpStringIds.landingHeader];

  static String? get landingSubtext =>
      _localizedValues[locale.languageCode]![OpStringIds.landingSubtext];

  static String? get wrongLogin =>
      _localizedValues[locale.languageCode]![OpStringIds.wrongLogin];

  static String? get notLoggedIn =>
      _localizedValues[locale.languageCode]![OpStringIds.notLoggedIn];

  static String? get buttonSignIn =>
      _localizedValues[locale.languageCode]![OpStringIds.buttonSignIn];

  static String? get buttonSignUp =>
      _localizedValues[locale.languageCode]![OpStringIds.buttonSignUp];

  static String? get yourRecipientsLabel =>
      _localizedValues[locale.languageCode]![OpStringIds.yourRecipientsLabel];

  // WALLET
  static String? get walletCreateHeader =>
      _localizedValues[locale.languageCode]![OpStringIds.walletCreateHeader];

  static String? get walletCreateSubtext =>
      _localizedValues[locale.languageCode]![OpStringIds.walletCreateSubtext];

  static String? get paymentMethodHeader =>
      _localizedValues[locale.languageCode]![OpStringIds.paymentMethodHeader];

  static String? get pickContact =>
      _localizedValues[locale.languageCode]![OpStringIds.pickContact];

  // ERRORS
  static String? get connectionTimeOut =>
      _localizedValues[locale.languageCode]![OpStringIds.connectionTimeOut];

  static String? get genericExceptionMessage => _localizedValues[
      locale.languageCode]![OpStringIds.genericExceptionMessage];

  static String? get noInternetMessage =>
      _localizedValues[locale.languageCode]![OpStringIds.noInternetMessage];

  static String? get dbExceptionMessage =>
      _localizedValues[locale.languageCode]![OpStringIds.dbExceptionMessage];

  static String? get apiExceptionMessage =>
      _localizedValues[locale.languageCode]![OpStringIds.apiExceptionMessage];

  static String? get apiBadRequestMessage =>
      _localizedValues[locale.languageCode]![OpStringIds.apiBadRequestMessage];

  static String? get apiNotFoundMessage =>
      _localizedValues[locale.languageCode]![OpStringIds.apiNotFoundMessage];

  static String? get apiUnauthenticatedMessage => _localizedValues[
      locale.languageCode]![OpStringIds.apiUnauthenticatedMessage];

  static String? get apiNotPermittedMessage => _localizedValues[
      locale.languageCode]![OpStringIds.apiNotPermittedMessage];

  static String? get validationFailedMessage => _localizedValues[
      locale.languageCode]![OpStringIds.validationFailedMessage];

  static String? get networkError =>
      _localizedValues[locale.languageCode]![OpStringIds.networkError];

  // HOME
  static String? get favouriteContactsSubhead => _localizedValues[
      locale.languageCode]![OpStringIds.favouriteContactsSubhead];

  static String? get paySomeone =>
      _localizedValues[locale.languageCode]![OpStringIds.paySomeone];

  static String? get paySomeoneSubtext =>
      _localizedValues[locale.languageCode]![OpStringIds.paySomeoneSubtext];

  static String? get requestMoney =>
      _localizedValues[locale.languageCode]![OpStringIds.requestMoney];

  static String? get requestMoneySubtext =>
      _localizedValues[locale.languageCode]![OpStringIds.requestMoneySubtext];

  static String? get payBill =>
      _localizedValues[locale.languageCode]![OpStringIds.payBill];

  static String? get payBillSubtext =>
      _localizedValues[locale.languageCode]![OpStringIds.payBillSubtext];

  static String? get buyAirtime =>
      _localizedValues[locale.languageCode]![OpStringIds.buyAirtime];

  static String? get buyAirtimeSubtext =>
      _localizedValues[locale.languageCode]![OpStringIds.buyAirtimeSubtext];

  static String? get homeSubhead =>
      _localizedValues[locale.languageCode]![OpStringIds.homeSubhead];

  static String? greetings(String firstname, String lastname) {
    String name = "BMB User";

    name = "${firstname} ${lastname}";

    if (locale.languageCode == 'en') {
      return '${_localizedValues['en']![OpStringIds.greetings]} $name,';
    } else {
      // Handle Language specific weirdness
      return '${_localizedValues[locale.languageCode]![OpStringIds.greetings]} $name,';
    }
  }

  //PayBill Module
  static String? get enterAmountToPay =>
      _localizedValues[locale.languageCode]![OpStringIds.enterAmountToPay];

  static String? get accountNumberHintText =>
      _localizedValues[locale.languageCode]![OpStringIds.accountNumberHintText];

  static String? get reasonHintText =>
      _localizedValues[locale.languageCode]![OpStringIds.reasonHintText];

  static String? get reviewPayment =>
      _localizedValues[locale.languageCode]![OpStringIds.reviewPayment];

  static String? get reviewAndPay =>
      _localizedValues[locale.languageCode]![OpStringIds.reviewAndPay];

  static String? get reviewAndSend =>
      _localizedValues[locale.languageCode]![OpStringIds.reviewAndSend];

  static String? get merchantReceives =>
      _localizedValues[locale.languageCode]![OpStringIds.merchantReceives];

  static String? get recipientReceives =>
      _localizedValues[locale.languageCode]![OpStringIds.recipientReceives];

  static String? get account =>
      _localizedValues[locale.languageCode]![OpStringIds.account];

  static String? get recipient =>
      _localizedValues[locale.languageCode]![OpStringIds.recipient];

  static String? get payment =>
      _localizedValues[locale.languageCode]![OpStringIds.payment];

  static String? get amount =>
      _localizedValues[locale.languageCode]![OpStringIds.amount];

  static String? get platformFee =>
      _localizedValues[locale.languageCode]![OpStringIds.platformFee];

  static String? get total =>
      _localizedValues[locale.languageCode]![OpStringIds.total];

  static String? get makePayment =>
      _localizedValues[locale.languageCode]![OpStringIds.makePayment];

  static String? get sendPayment =>
      _localizedValues[locale.languageCode]![OpStringIds.sendPayment];

  static String? get sendRequest =>
      _localizedValues[locale.languageCode]![OpStringIds.sendRequest];

  static String? get cashout =>
      _localizedValues[locale.languageCode]![OpStringIds.cashout];

  static String? get fundWallet =>
      _localizedValues[locale.languageCode]![OpStringIds.fundWallet];

  static String? get fundWalletHeader =>
      _localizedValues[locale.languageCode]![OpStringIds.fundWalletHeader];

  static String? get notEnoughBalance =>
      _localizedValues[locale.languageCode]![OpStringIds.notEnoughBalance];

  static String? get merchant =>
      _localizedValues[locale.languageCode]![OpStringIds.merchant];

  static String? get merchantBusiness =>
      _localizedValues[locale.languageCode]![OpStringIds.merchantBusiness];

  static String? get searchForMerchants =>
      _localizedValues[locale.languageCode]![OpStringIds.searchForMerchants];

  static String? get all =>
      _localizedValues[locale.languageCode]![OpStringIds.all];
  static final Map<String, Map<OpStringIds, String>> _localizedValues = {
    'en': {
      OpStringIds.yourRecipientsLabel: "Your recipients",
      OpStringIds.wrongLogin: "Wrong phone number or password",
      OpStringIds.notLoggedIn: "You are not logged in",
      OpStringIds.favouriteContactsSubhead: "Your favourite people",
      OpStringIds.paySomeone: "Pay someone",
      OpStringIds.paySomeoneSubtext: "To wallet, bank or mobile number",
      OpStringIds.requestMoney: "Request money",
      OpStringIds.requestMoneySubtext: "Request money from Brij users",
      OpStringIds.payBill: "Pay bill",
      OpStringIds.payBillSubtext: "Zero transaction fees when you pay",
      OpStringIds.buyAirtime: "Buy airtime",
      OpStringIds.buyAirtimeSubtext: "Top up or send airtime across Africa",
      OpStringIds.homeSubhead: 'Here are some things you can do',
      OpStringIds.greetings: 'Hi',
      OpStringIds.buttonSignIn: 'Sign In',
      OpStringIds.buttonSignUp: 'Sign Up',
      OpStringIds.onboardingPaymentHeader: 'Make payments',
      OpStringIds.onboardingPaymentSubtext:
          'Make payments to family and friends in Africa from anywhere. As easy as sending a message.',
      OpStringIds.onboardingRequestsHeader: 'Request money',
      OpStringIds.onboardingRequestsSubtext:
          'Request money from anyone in or outside Africa. Like sending a friend request, but simpler!',
      OpStringIds.onboardingBillsHeader: 'Pay bills',
      OpStringIds.onboardingBillsSubtext:
          'Cross-border bill payments made easy! Pay to service providers directly in Africa.',
      OpStringIds.landingHeader:
          'We are changing the way money moves across Africa',
      OpStringIds.landingSubtext:
          'Brij provides everything you need to get going with your daily financial transactions',
      OpStringIds.connectionTimeOut:
          'BMB is having issues connecting to the internet',
      OpStringIds.noInternetMessage: 'No internet access',
      OpStringIds.genericExceptionMessage:
          'Hmm that didn\'t work. We\'re working on it!',
      OpStringIds.dbExceptionMessage: 'There was a problem accessing cache',
      OpStringIds.apiExceptionMessage:
          'There was a problem contacting the server. Please try again later',
      OpStringIds.apiBadRequestMessage:
          'There was a problem making the request to the server',
      OpStringIds.apiNotFoundMessage: 'Item not found',
      OpStringIds.apiUnauthenticatedMessage:
          'You need to sign in to perform this action',
      OpStringIds.validationFailedMessage: 'Validation failed',
      OpStringIds.pickContact: "Pick Contact",
      OpStringIds.apiNotPermittedMessage:
          'You don\'t have permissions to perform this action',
      OpStringIds.networkError:
          'There was an error connecting to the internet. Please check your network connection and try again',
      OpStringIds.walletCreateHeader: 'Create a new wallet',
      OpStringIds.walletCreateSubtext:
          'Wallets allow you to easily perform transactions on Brij',
      OpStringIds.paymentMethodHeader: 'Add funds',
      OpStringIds.enterAmountToPay: 'Enter amount to pay',
      OpStringIds.accountNumberHintText: 'Account number or ID',
      OpStringIds.reasonHintText: 'Reason for payment',
      OpStringIds.reviewPayment: 'Review Payment',
      OpStringIds.reviewAndPay: 'Review and Pay',
      OpStringIds.reviewAndSend: 'Review and Send',
      OpStringIds.merchantReceives: 'Merchant receives',
      OpStringIds.recipientReceives: 'Recipient receives',
      OpStringIds.account: 'Account',
      OpStringIds.recipient: 'Recipient',
      OpStringIds.payment: 'Payment',
      OpStringIds.amount: 'Amount',
      OpStringIds.platformFee: 'Platform Fee',
      OpStringIds.total: 'Total',
      OpStringIds.makePayment: 'Make Payment',
      OpStringIds.sendPayment: 'Send',
      OpStringIds.sendRequest: 'Send Request',
      OpStringIds.cashout: 'Withdraw',
      OpStringIds.fundWallet: 'Add to Wallet',
      OpStringIds.fundWalletHeader: 'Add Funds',
      OpStringIds.notEnoughBalance: 'Not enough balance to make transaction.',
      OpStringIds.merchant: 'Merchant',
      OpStringIds.merchantBusiness: 'Merchant Business',
      OpStringIds.searchForMerchants: 'Search for Merchants',
      OpStringIds.all: "All",
    },
  };
}

// KEYS STRICTLY FOR ACCESSING THE LOCALISED STRINGS WITHIN EACH LOCALE.
enum OpStringIds {
  wrongLogin,
  notLoggedIn,
  favouriteContactsSubhead,
  paySomeoneSubtext,
  paySomeone,
  yourRecipientsLabel,
  requestMoneySubtext,
  requestMoney,
  payBillSubtext,
  payBill,
  buyAirtimeSubtext,
  buyAirtime,
  paymentMethodHeader,
  pickContact,
  homeSubhead,
  greetings,
  buttonSignUp,
  buttonSignIn,
  onboardingPaymentHeader,
  onboardingPaymentSubtext,
  onboardingRequestsHeader,
  onboardingRequestsSubtext,
  onboardingBillsHeader,
  onboardingBillsSubtext,
  connectionTimeOut,
  genericExceptionMessage,
  noInternetMessage,
  dbExceptionMessage,
  apiExceptionMessage,
  apiBadRequestMessage,
  apiNotFoundMessage,
  apiUnauthenticatedMessage,
  apiNotPermittedMessage,
  validationFailedMessage,
  networkError,
  landingHeader,
  landingSubtext,
  walletCreateHeader,
  fundWallet,
  fundWalletHeader,
  walletCreateSubtext,
  newString,
  enterAmountToPay,
  accountNumberHintText,
  reasonHintText,
  reviewPayment,
  reviewAndPay,
  reviewAndSend,
  merchantReceives,
  recipientReceives,
  account,
  recipient,
  payment,
  amount,
  total,
  platformFee,
  makePayment,
  sendPayment,
  sendRequest,
  cashout,
  notEnoughBalance,
  merchant,
  merchantBusiness,
  searchForMerchants,
  all,
}
