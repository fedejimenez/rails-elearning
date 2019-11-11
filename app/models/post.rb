# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user, class_name: 'user', foreign_key: 'user_id'
  belongs_to :category, class_name: 'category', foreign_key: 'category_id'
end
