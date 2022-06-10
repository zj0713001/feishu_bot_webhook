require "httparty"

require "feishu_bot_webhook/version.rb"
require "feishu_bot_webhook/bot.rb"
require "feishu_bot_webhook/message/message.rb"
require "feishu_bot_webhook/message/text.rb"
require "feishu_bot_webhook/message/post.rb"
require "feishu_bot_webhook/message/share_chat.rb"
require "feishu_bot_webhook/message/image.rb"
# require "feishu_bot_webhook/message/interactive.rb"

module FeishuBotWebhook
  class Error < StandardError; end
end
