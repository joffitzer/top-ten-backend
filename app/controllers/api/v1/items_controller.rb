class Api::V1::ItemsController < ApplicationController
    def index 
        items = Item.all 
        render json: items, except: [:created_at, :updated_at]
    end 

    def create 
        item = Item.create!(item_params)
        render json: item, except: [:created_at, :updated_at]
    end 

    def update
        item = Item.find(params[:id])
        item.update(item_params)
        render json: item, except: [:created_at, :updated_at]
    end 

    def destroy
        Item.destroy(params[:id])
        # render json: list, except: [:created_at, :updated_at]
    end 


end

def item_params
# whitelist params
params.permit(:listId, :Title, :Poster, :Year, :Rank, :id)
end