class FeishuBotWebhook::Message::Text < FeishuBotWebhook::Message::Message
    def initialize(text)
        @msg_type = "text"
        @text = text
    end

    def content
        {
            text: @text
        }
    end
end