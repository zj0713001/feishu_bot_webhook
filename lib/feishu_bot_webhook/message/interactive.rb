class FeishuBotWebhook::Message::Interactive < FeishuBotWebhook::Message::Message
    def initialize(text)
        @msg_type = "interactive"
        @text = text
    end

    def content
        {
            text: @text
        }
    end

    def to_json
        {
            msg_type: @msg_type,
            card: content.to_json
        }.to_json
    end
end