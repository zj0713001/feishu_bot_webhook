class FeishuBotWebhook::Message::Post < FeishuBotWebhook::Message::Message
    def initialize(title, elements = [])
        @msg_type = "post"
        @title = title
        @elements = elements
    end

    def content
        {
            post: {
                zh_cn: {
                    title: @title,
                    content: @elements.map do |element|
                        (element.is_a?(Array) ? element : [element]).as_json
                    end
                }
            }
        }
    end

    class Base
        def as_json(options = {})
            super(options).reject { |k, v| v.nil? }
        end
    end

    class Text < Base
        def initialize(text, un_escape = false)
            @tag = "text"
            @text = text
            @un_escape = un_escape
        end
    end

    class A < Base
        def initialize(href, text)
            @tag = "a"
            @href = href
            @text = text
        end
    end

    class At < Base
        def initialize(user_id, user_name = nil)
            @tag = "at"
            @user_id = user_id
            @user_name = user_name
        end
    end

    class Image < Base
        def initialize(image_key, height = nil, width = nil)
            @tag = "img"
            @height = height
            @width = width
        end
    end
end