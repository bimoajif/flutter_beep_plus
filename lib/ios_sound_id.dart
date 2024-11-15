// ignore_for_file: constant_identifier_names, camel_case_types

enum iOSSoundID {
  MailReceived(1000),
  MailSent(1001),
  VoicemailReceived(1002),
  SMSReceived(1003),
  SMSSent1(1004),
  CalendarAlert(1005),
  LowPower(1006),
  SMSReceived_Alert1(1007),
  SMSReceived_Alert2(1008),
  SMSReceived_Alert3(1009),
  SMSReceived_Alert4(1010),
  SMSReceived_Vibrate(1011),
  SMSReceived_Alert5(1012),
  SMSReceived_Alert6(1013),
  SMSReceived_Alert7(1014),
  Voicemail(1015),
  SMSSent2(1016),
  SMSReceived_Alert8(1020),
  SMSReceived_Alert9(1021),
  SMSReceived_Alert10(1022),
  SMSReceived_Alert11(1023),
  SMSReceived_Alert12(1024),
  SMSReceived_Alert13(1025),
  SMSReceived_Alert14(1026),
  SMSReceived_Alert15(1027),
  SMSReceived_Alert16(1028),
  SMSReceived_Alert17(1029),
  SMSReceived_Alert18(1030),
  SMSReceived_Alert19(1031),
  SMSReceived_Alert20(1032),
  SMSReceived_Alert21(1033),
  SMSReceived_Alert22(1034),
  SMSReceived_Alert23(1035),
  SMSReceived_Alert24(1036),
  USSDAlert(1050),
  SIMToolkitTone1(1051),
  SIMToolkitTone2(1052),
  SIMToolkitTone3(1053),
  SIMToolkitTone4(1054),
  SIMToolkitTone5(1055),
  PINKeyPressed(1057),
  AudioToneBusy(1070),
  AudioToneCongestion(1071),
  AudioTonePathAcknowledge(1072),
  AudioToneError(1073),
  AudioToneCallWaiting(1074),
  AudioToneKey2(1075),
  ScreenLocked(1100),
  ScreenUnlocked(1101),
  FailedUnlock(1102),
  KeyPressed1(1103),
  KeyPressed2(1104),
  KeyPressed3(1105),
  ConnectedToPower(1106),
  RingerSwitchIndication(1107),
  CameraShutter(1108),
  ShakeToShuffle(1109),
  JBL_Begin(1110),
  JBL_Confirm(1111),
  JBL_Cancel(1112),
  BeginRecording(1113),
  EndRecording(1114),
  JBL_Ambiguous(1115),
  JBL_NoMatch(1116),
  BeginVideoRecording(1117),
  EndVideoRecording(1118),
  VCInvitationAccepted(1150),
  VCRinging(1151),
  VCEnded(1152),
  VCCallWaiting(1153),
  VCCallUpgrade(1154),
  TouchTone1(1200),
  TouchTone2(1201),
  TouchTone3(1202),
  TouchTone4(1203),
  TouchTone5(1204),
  TouchTone6(1205),
  TouchTone7(1206),
  TouchTone8(1207),
  TouchTone9(1208),
  TouchTone10(1209),
  TouchTone11(1210),
  TouchTone12(1211),
  Headset_StartCall(1254),
  Headset_Redial(1255),
  Headset_AnswerCall(1256),
  Headset_EndCall(1257),
  Headset_CallWaitingActions(1258),
  Headset_TransitionEnd(1259),
  SystemSoundPreview1(1300),
  SystemSoundPreview2(1301),
  SystemSoundPreview3(1302),
  SystemSoundPreview4(1303),
  SystemSoundPreview5(1304),
  SystemSoundPreview6(1305),
  KeyPressClickPreview(1306),
  SMSReceived_Selection1(1307),
  SMSReceived_Selection2(1308),
  SMSReceived_Selection3(1309),
  SMSReceived_Selection4(1310),
  SMSReceived_Vibrate2(1311),
  SMSReceived_Selection5(1312),
  SMSReceived_Selection6(1313),
  SMSReceived_Selection7(1314),
  SystemSoundPreview(1315),
  SMSReceived_Selection8(1320),
  SMSReceived_Selection9(1321),
  SMSReceived_Selection10(1322),
  SMSReceived_Selection11(1323),
  SMSReceived_Selection12(1324),
  SMSReceived_Selection13(1325),
  SMSReceived_Selection14(1326),
  SMSReceived_Selection15(1327),
  SMSReceived_Selection16(1328),
  SMSReceived_Selection17(1329),
  SMSReceived_Selection18(1330),
  SMSReceived_Selection19(1331),
  SMSReceived_Selection20(1332),
  SMSReceived_Selection21(1333),
  SMSReceived_Selection22(1334),
  SMSReceived_Selection23(1335),
  SMSReceived_Selection24(1336),
  RingerVibeChanged(1350),
  SilentVibeChanged(1351),
  Vibrate(4095);

  final int value;
  const iOSSoundID(this.value);
}
