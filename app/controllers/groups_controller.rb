class GroupsController < ApplicationController
  before_action :authenticate_admin!
  def show
    @group = Group.find(params[:id])
  end

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new :key => rand(999999)
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to @group
    else
      render 'new'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    redirect_to groups_path
  end

  private
    def group_params
      params.require(:group).permit(:group, :key)
    end
end
