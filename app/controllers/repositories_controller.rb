class RepositoriesController < ApplicationController
  def index
    @repositories = Github.repositories(params[:search])
  end
end
