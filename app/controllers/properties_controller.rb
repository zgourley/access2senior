class PropertiesController < InheritedResources::Base

  private

    def property_params
      params.require(:property).permit(:name, :location, :description, :category, :image)
    end
end

