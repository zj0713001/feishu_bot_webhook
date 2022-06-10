module FeishuBotWebhook
    class Bot
        def initialize(webhook_url, secret=nil)
            @webhook_url = webhook_url
            @secret = secret
        end

        def message(data)
            HTTParty.post(@webhook_url, headers: { 'Content-Type' => 'application/json' }, body: data.to_json)
        end
    end
end
