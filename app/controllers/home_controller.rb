# frozen_string_literal: true

class HomeController < ApplicationController
  add_breadcrumb 'Home', :root_path

  def index
    add_breadcrumb 'Home', :root_path
    # @courses = Course.limit(5)
  end

  def about
    add_breadcrumb 'About', :about_path
  end

  def courses
    add_breadcrumb 'Courses', :courses_path
  end
end
