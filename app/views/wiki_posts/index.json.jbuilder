# frozen_string_literal: true

json.array! @wiki_posts, partial: 'wiki_posts/wiki_post', as: :wiki_post
