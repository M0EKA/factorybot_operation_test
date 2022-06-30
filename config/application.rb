require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FactorybotOperationTest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.time_zone = "Tokyo"
    config.generators do |g|
      g.assets false # cssとかJSとかのファイルの生成を無効化
      g.test_framework :rspec # 生成されるtest系のファイルのtestフレームワークをrspecに指定
      g.helper false # helper無視
      g.jbuilder false # jbuilder … rails にAPIを作れるものがdefaultで設定されている。それを無視する。
    end
  end
end
