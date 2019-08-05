import 'package:fluwx/fluwx.dart' as fluwx;

///[WeChatScene.SESSION]会话
///[WeChatScene.TIMELINE]朋友圈
///[WeChatScene.FAVORITE]收藏
enum WeChatScene { SESSION, TIMELINE, FAVORITE }

class Wechat {
  // 网页分享
  static void weChatShareWeb(
      String _url, String _title, String _thumnail, scene) async {
    var model = fluwx.WeChatShareWebPageModel(
        webPage: _url,
        title: _title,
        thumbnail: _thumnail,
        scene: scene,
        transaction: "hh");
    fluwx.share(model);
  }

  // 文本分享
  static void weChatShareText(String shareTxt) async {
    var model = fluwx.WeChatShareTextModel(
        text: shareTxt,
        transaction:
            "text${DateTime.now().millisecondsSinceEpoch}", //仅在android上有效，下同。
        scene: fluwx.WeChatScene.FAVORITE);
    fluwx.share(model);
  }

  // 视频分享
  static void weChatShareVideo(
      String _videoUrl,
      String _title,
      String _thumnail,
      String _videoLowBandUrl,
      scene,
      String _description) async {
    var model = fluwx.WeChatShareVideoModel(
        videoUrl: _videoUrl,
        transaction: "video",
        videoLowBandUrl: _videoLowBandUrl,
        thumbnail: _thumnail,
        description: _description,
        scene: scene,
        title: _title);
    fluwx.share(model);
  }

  // 微信登录
  static void weChatLogin() {
    fluwx
        .sendAuth(scope: "snsapi_userinfo", state: "wechat_sdk_demo_test")
        .then((data) {});
  }

  // 微信支付
  static void weChatPay() {
    fluwx
        .pay(
            appId: 'wxd930ea5d5a258f4f',
            partnerId: '1900000109',
            prepayId: '1101000000140415649af9fc314aa427',
            packageValue: 'Sign=WXPay',
            nonceStr: '1101000000140429eb40476f8896f4c9',
            timeStamp: 1398746574,
            sign: '7FFECB600D7157C5AA49810D2D8F28BC2811827B',
            signType: '选填',
            extData: '选填')
        .then((data) {
      print("---》$data");
    });
  }

  
}
