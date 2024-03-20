# frozen_string_literal: true

module Api
  module V1
    class WikiPostsController < ApplicationController
      include Api::V1::WikiPostsHelper
      require 'csv'

      before_action :parse_and_validate_json_request, only: [:create]

      def index
        @wiki_posts = paginate(WikiPost.all)

        render json: @wiki_posts
      end

      def show
        wiki_post = WikiPost.find(params[:id])
        decorated_wiki_post = WikiPostDecorator.new(wiki_post)
        render json: {
          upcased_title: decorated_wiki_post.upcased_title,
          short_description: decorated_wiki_post.short_description,
          formatted_date: decorated_wiki_post.formatted_date
        }
      end

      def create
        # create a wikipost from params in the request body. Render error if failure.
        @wiki_post = WikiPost.new(wiki_post_params)

        if @wiki_post.save
          render json: @wiki_post, status: :created
        else
          render json: @eiki_post.errors, status: :unprocessable_entity
        end
      end

      def update
        # finds the wikipost to update with parameters from request body. Render error if failure.
        @wiki_post = WikiPost.find(params[:id])

        if @wiki_post.update(wiki_post_params)
          render json: @wiki_post
        else
          render json: @wiki_post.errors, status: :unprocessable_entity
        end
      end

      def destroy
        # destroys a wiki post wth the provided id
        @wiki_post = WikiPost.find(params[:id])
        @wiki_post.destroy
        head :no_content
      end

      def xml_index
        @wiki_posts = WikiPost.all
        render xml: @wiki_posts
      end

      def csv_index
        @wiki_posts = WikiPost.all
        csv_data = WikiPostCsvGenerator.new(@wiki_posts).generate_csv

        send_data csv_data, filename: 'wiki_posts.csv', type: 'text/csv'
      end

      private

      def paginate(scope)
        page = params.fetch(:page).to_i
        limit = params.fetch(:limit).to_i

        scope.limit(limit).offset((page - 1) * limit)
      end

      def wiki_post_params
        params.permit(:title, :description, :author)
      end
    end
  end
end
