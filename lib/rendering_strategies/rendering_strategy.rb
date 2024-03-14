# frozen_string_literal: true

module RenderingStrategies
  module RenderingStrategy
    def render(wiki_post)
      raise NotImplementedError, 'Subclass must implement the render method.'
    end
  end
end
