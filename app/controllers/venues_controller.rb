class VenuesController < ApplicationController

	def create
		@venue = Venue.find_or_initialize_by_googleid(params[:venue][:googleid])

		if @venue.new_record? 
			@venue.update_attributes(params[:venue])
			@venue.save
		end

		puts @venue.inspect

    @list_item = ListItem.create({:venue_id => @venue.id, :list_id => params[:list_id]})

    respond_to do |format|
        format.js {render template: "/lists/render_item_block"}
    end

	end

end