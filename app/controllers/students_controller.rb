class StudentsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @student = @group.students.create(student_params)
    redirect_to group_path(@group)
  end

  def destroy
    @group = Group.find(params[:group_id])
    @student = @group.students.find(params[:id])
    @student.destroy
    redirect_to group_path(@group)
  end

  private
    def student_params
      params.require(:student).permit(:name)
    end
end
