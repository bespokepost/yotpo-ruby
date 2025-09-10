module Yotpo
  module Review
    def self.included(base)
      base.
        define_endpoint(:get_reviews, 'v1/apps/{app_key}/reviews?utoken={utoken}', public: true)
    end
  end
end
