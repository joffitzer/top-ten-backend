class Api::V1::ProfilesController < ApplicationController

    def index 
        profiles = Profile.all 
        render json: profiles, except: [:created_at, :updated_at]
    end 

    def create 
        
    end 

end
