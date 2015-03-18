class MembersController < InheritedResources::Base

  private

    def member_params
      params.require(:member).permit(:name)
    end
end

