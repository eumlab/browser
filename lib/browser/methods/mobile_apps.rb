class Browser
  module MobileApps

    # Detect if browser is kind of mobile app with limited function
    def incompetent_mobile?
      wechat? || weibo?
    end

    # Detect if browser is Wechat embedded
    def wechat?
      ua =~ /MicroMessenger/
    end

    # Detect if browser is Sina Weibo embedded
    def weibo?
      ua =~ /Weibo/
    end

  end
end
