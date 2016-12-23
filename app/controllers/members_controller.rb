class MembersController < ApplicationController
    def index
        @members = Member.all
        
    end
    def show
        @member = Member.find(params[:id])
    end
    def new
	@member = Member.new
    end
	def create
	@member = Member.new(member_params)
	@member.save
	redirect_to '/members'
	end		

	private
	def member_params
	params.require(:member).permit(:family_name, :given_name, :image_url)
	end

    
end
