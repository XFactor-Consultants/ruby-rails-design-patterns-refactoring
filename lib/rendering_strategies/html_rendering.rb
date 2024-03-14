# frozen_string_literal: true

module RenderingStrategies
  class HtmlRendering
    include RenderingStrategy

    def render(wiki_post)
      ApplicationController.render(template: 'wiki_posts/show', locals: { wiki_post: wiki_post }, layout: false)
    end
  end
end
