class Api::V1::ItemsController < ApplicationController
    def index 
        items = Item.all 
        render json: items, except: [:created_at, :updated_at]
    end 

    def create 
        item = Item.create(listId: params[:listId], Title: params[:Title], Poster: params[:Poster], Year: params[:Year], Rank: params[:Rank])
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
params.require(:item).permit(:listId, :Title, :Poster, :Year, :Rank)
end