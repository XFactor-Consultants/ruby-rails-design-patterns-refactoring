# frozen_string_literal: true

module RenderingStrategies
  class PlainTextRendering
    include RenderingStrategy

    def render(wiki_post)
      "Title: #{wiki_post.title}\n Description: #{wiki_post.description}\n Author: #{wiki_post.author}"
    end
  end
end
