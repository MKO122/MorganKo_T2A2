module PaymentsHelper
    def success
        @listing = Listing.find(params[:id])
    end
end
