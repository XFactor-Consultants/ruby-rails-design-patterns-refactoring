# frozen_string_literal: true

module Factories
  class WikiPostFactory
    def self.create_hidden(attributes = {})
      attributes.merge!(hidden: true)
      WikiPost.create!(attributes)
    end

    def self.create_visible(attributes = {})
      attributes.merge!(hidden: false)
      WikiPost.create!(attributes)
    end
  end
end
