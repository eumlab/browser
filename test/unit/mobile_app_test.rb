require "test_helper"

class MobileAppTest < Minitest::Test
  setup do
    @browser = Browser.new
  end

  test "detects Wechat iOS" do
    @browser.ua = $ua["WECHAT_IOS"]

    assert @browser.wechat?
    assert @browser.incompetent_mobile?
  end

  test "detects Wechat Android" do
    @browser.ua = $ua["WECHAT_ANDROID"]

    assert @browser.wechat?
    assert @browser.incompetent_mobile?
  end

  test "detects Weibo iOS" do
    @browser.ua = $ua["WEIBO_IOS"]

    assert @browser.weibo?
    assert @browser.incompetent_mobile?
  end

  test "detects Weibo Android" do
    @browser.ua = $ua["WEIBO_ANDROID"]

    assert @browser.weibo?
    assert @browser.incompetent_mobile?
  end
end
