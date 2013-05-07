class ListItemsController < ApplicationController
  def sort
    params[:list_item].each_with_index do |id, index|
      ListItem.update_all({position: index+1}, {id: id, list_id: params[:list_id]})
    end
    render nothing: true  
  end
end