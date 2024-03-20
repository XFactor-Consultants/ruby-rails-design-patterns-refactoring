# frozen_string_literal: true

class WikiPostDecorator
  attr_reader :wiki_post

  def initialize(wiki_post)
    @wiki_post = wiki_post
  end

  def upcased_title
    wiki_post.title.upcase
  end

  def short_description
    wiki_post.description.truncate(100)
  end

  def formatted_date
    wiki_post.created_at.strftime('%A, %d %b %Y %I:%M %p')
  end
end
