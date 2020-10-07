require 'rails_helper'

RSpec.describe IceCream do

    describe "validations" do
        it { should validate_presence_of(:name) }
        it { should validate_length_of(:name).is_at_least(10).on(:create) }
        it { should validate_presence_of :description }
        it { should validate_length_of(:description).is_at_least(25).on(:create) }
        it { should validate_presence_of :date_made }
    end
end