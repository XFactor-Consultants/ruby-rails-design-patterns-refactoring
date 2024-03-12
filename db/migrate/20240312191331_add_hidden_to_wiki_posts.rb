# frozen_string_literal: true

class AddHiddenToWikiPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :wiki_posts, :hidden, :boolean
  end
end
