# frozen_string_literal: true

class WikiPostCsvGenerator
  attr_accessor :wiki_posts

  def initialize(wiki_posts)
    @wiki_posts = wiki_posts
  end

  def generate_csv
    CSV.generate(headers: true) do |csv|
      csv << %w[ID title description author]
      @wiki_posts.each do |post|
        csv << [post.id, post.title, post.description, post.author]
      end
    end
  end
end
