class UserController < ApplicationController
    def program
        @user = User.find(params[:id])
        @programs = Program.where(:user_id => @user.id)

        respond_to do |format|
          format.html { render 'programs/index' }
          format.json { render :json => @program }
        end
    end
end
