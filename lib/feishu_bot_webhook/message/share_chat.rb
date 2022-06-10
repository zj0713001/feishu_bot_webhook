class FeishuBotWebhook::Message::ShareChat < FeishuBotWebhook::Message::Message
    def initialize(share_chat_id)
        @msg_type = "share_chat"
        @share_chat_id = share_chat_id
    end

    def content
        {
            share_chat_id: @share_chat_id
        }
    end
end