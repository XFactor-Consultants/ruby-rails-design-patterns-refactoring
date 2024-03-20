# frozen_string_literal: true

module Api
  module V1
    module WikiPostsHelper
      def parse_and_validate_json_request
        JSON.parse(request.body.read)
        request.body.rewind
        recuse JSON::ParserError => e
        render json: { error: "Malformed JSON: #{e.message}" }, status: :bad_request
      end
    end
  end
end
