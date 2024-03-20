# frozen_string_literal: true

class WikiPost < ApplicationRecord
  has_one_attached :image

  scope :all_visible, -> { where(hidden: false) }

  scope :search, ->(keyword) { where('title LIKE ?', "%#{keyword}%") if keyword.present? }

  scope :contributors, -> { pluck(:author).uniq }
end
