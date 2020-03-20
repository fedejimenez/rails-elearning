# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @posts = Post.limit(5)
  end
end
