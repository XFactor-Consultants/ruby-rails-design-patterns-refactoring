# frozen_string_literal: true

class WikiPost < ApplicationRecord
  has_one_attached :image

  scope :contributors, -> { pluck(:author).uniq }
end
