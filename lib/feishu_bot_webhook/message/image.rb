class FeishuBotWebhook::Message::Image < FeishuBotWebhook::Message::Message
    def initialize(image_key)
        @msg_type = "image"
        @image_key = image_key
    end

    def content
        {
            image_key: @image_key
        }
    end
end