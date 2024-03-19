# frozen_string_literal: true

module ApplicationHelper
  def display_contributors(contributors)
    content_tag(:ul) do
      contributors.compact.each do |contributor|
        concat(content_tag(:li, contributor.titleize))
      end
    end
  end
end
