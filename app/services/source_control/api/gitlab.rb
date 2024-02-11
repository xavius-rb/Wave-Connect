module SourceControl
  module Api
    class Api::Gitlab < Base
      GITLAB_API_URL = 'https://gitlab.com/api/v4'.freeze

      def initialize
        @connection ||= ConnectionFactory.connection(url: GITLAB_API_URL)
      end

      def repositories(org:)
      end

      def commits(owner:, repo:)
      end
    end
  end
end