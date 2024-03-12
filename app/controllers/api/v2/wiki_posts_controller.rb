# frozen_string_literal: true

module Api
  module V2
    class WikiPostsController < ApplicationController
      def index
        render json: { 'message': 'under construction!' }
      end
    end
  end
end
