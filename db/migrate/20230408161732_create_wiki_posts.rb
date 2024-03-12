# frozen_string_literal: true

class CreateWikiPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :wiki_posts, &:timestamps
  end
end
