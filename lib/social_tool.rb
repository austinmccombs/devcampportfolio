module SocialTool
    def self.client_find
        client = Twitter::REST::Client.new do |config|
            config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
            config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
            config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
            config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
          end
        end

    def self.twitter_search
        client = self.client_find
        client.search("#technews -rt", lang: 'en', result_type: 'recent').take(10).collect do |tweet|
          "<b class = 'username'>#{tweet.user.screen_name}:</b> #{tweet.text}"

        end
      end

    def self.sports_search
      client = self.client_find
      client.search("#sportsnews -rt", lang: 'en', result_type: 'recent').take(10).collect do |tweet|
        "<b class = 'username'>#{tweet.user.screen_name}:</b> #{tweet.text}"
      
      end
    end
end
