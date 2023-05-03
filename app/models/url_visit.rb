class UrlVisit < ApplicationRecord
  belongs_to :url_token, counter_cache: true
end
