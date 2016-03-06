class PagesController < ApplicationController
  expose(:users)

  def index
    if User.count == 0
      User.create_100
    end
  end

  def delete_selected
    User.where(id: params[:users_ids]).delete_all
    redirect_to root_path
  end
end

