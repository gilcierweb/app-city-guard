require "rails_helper"

RSpec.describe Admin::InspectionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admin/inspections").to route_to("admin/inspections#index")
    end

    it "routes to #new" do
      expect(get: "/admin/inspections/new").to route_to("admin/inspections#new")
    end

    it "routes to #show" do
      expect(get: "/admin/inspections/1").to route_to("admin/inspections#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admin/inspections/1/edit").to route_to("admin/inspections#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admin/inspections").to route_to("admin/inspections#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admin/inspections/1").to route_to("admin/inspections#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admin/inspections/1").to route_to("admin/inspections#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admin/inspections/1").to route_to("admin/inspections#destroy", id: "1")
    end
  end
end
