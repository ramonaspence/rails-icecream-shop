require 'rails_helper'
require 'date'


RSpec.describe IceCreamsController do
    
    # to test request objects here or not to test them here
    # seems to be the question  

    describe 'GET ice_creams#index' do
        it "should render the ice_creams#index template" do
            get :index
            expect(response).to render_template(:index)
        end

        it "should list all Ice Cream flavors" do
            get :index
            expect(response).to have_http_status(200)
        end
    end

    describe 'GET ice_creams#new' do
        it "should render the ice_creams#new template" do
            get :new
            expect(response).to have_http_status(200)
            expect(response).to render_template(:new)
        end
    end

    # describe 'GET ice_creams#edit' do
    #     it "should render the ice_creams#edit template" do
    #         get :edit
    #         expect(response).to have_http_status(200)
           
    #     end
    # end

    describe 'POST ice_creams#create' do
        context "with valid attributes" do
            it "should save new ice_cream flavor in database"
            

            it "should redirect to ice_creams#show template"
        end
        
        context "with invalid attributes" do
            it "should not save ice_cream flavor in database"
            it "should redirect to ice_cream#new template" 
        end
    end
            
end