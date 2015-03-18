class MembersController < ApplicationController

  private

  def permitted_params
    params.require(:member).permit(:name)
  end
end

