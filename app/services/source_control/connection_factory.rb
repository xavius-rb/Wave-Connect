module SourceControl
  class ConnectionFactory
    GITHUB_API_URL = 'https://api.github.com'.freeze

    def self.connection(url:)
      Faraday.new(url: url) do |builder|
        builder.response :json
        builder.request :url_encoded
        builder.adapter Faraday.default_adapter
      end
    end

    def self.github_connection
      Faraday.new(url: GITHUB_API_URL) do |builder|
        #builder.request :authorization, 'Bearer', -> { Rails.application.credentials.github[:access_token] }
        builder.response :json
        builder.request :url_encoded
        builder.adapter Faraday.default_adapter

        builder.headers['Accept'] = 'application/vnd.github+json'
        builder.headers['X-GitHub-Api-Version'] = '2022-11-28'
      end
    end
  end
end