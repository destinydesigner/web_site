class WelcomeController < ActionController::Base
    def index
        @sheets = Sheet.all()

        respond_to do |format|
            format.html # index.html.erb
            format.xml  { render :xml => @sheets }
        end
    end
end
