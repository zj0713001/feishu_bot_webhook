module FeishuBotWebhook
    module Message
        class Message
            def content
                {}
            end

            def to_json
                {
                    msg_type: @msg_type,
                    content: content.to_json
                }.to_json
            end
        end
    end
end