class Api::V1::ListsController < ApplicationController

    def index 
        lists = List.all 
        render json: lists, except: [:created_at, :updated_at]
    end 

    def create 
        list = List.create!(list_params)
        render json: list, except: [:created_at, :updated_at]
    end 

    def destroy
        List.destroy(params[:id])
        # render json: list, except: [:created_at, :updated_at]
    end 

end

  def list_params
    # whitelist params
    params.permit(:listName, :profileId, :id)
  end
