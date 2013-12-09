class ResourceSearchesController < ApplicationController

  def index
  end

  def list_resources
  end

  def search_resource_by_title
  end

  def find_resource_by_title
    @resources = Resource.find_by_title(params[:title])
  end

  def search_resource_by_receipt_number
  end

  def find_resource_by_receipt_number
    @resources = Resource.find_by_receipt_number(params[:receipt_number])
  end

  def search_school_by_name
  end

  def find_school_by_name
    @schools = School.find_by_name(params[:school_name])
  end

  def find_school_by_student
  end

  def list_students_at_school
  end

  def list_schools
  end

  def find_books_by_student
  end

end