# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :posts, class_name: 'post', foreign_key: 'reference_id'
end
