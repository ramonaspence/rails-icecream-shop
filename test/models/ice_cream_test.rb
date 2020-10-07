require 'test_helper'
require 'date'

class IceCreamTest < ActiveSupport::TestCase

    ## test model validations
    test "should not save ice_cream without name" do
      ice_cream = IceCream.new(created_at: DateTime.now)
      assert_not ice_cream.save, "saved ice_cream without a name"
    end

    test "should not save ice_cream without description" do
      ice_cream = IceCream.new(name: "1234567890")
      assert_not ice_cream.save, "saved ice_cream without description"
    end

    test "should not save ice_cream when name < 10 chars" do
      ice_cream = IceCream.new(name: "123456789", description: "this is twenty-five chars")
      assert_not ice_cream.save, "saved ice_cream with a name < 10 chars"
    end

    test "should not save ice_cream when description < 25 chars" do
      ice_cream = IceCream.new(name: "1234567890", description: "this isn't 25 chars")
      assert_not ice_cream.save, "saved ice_cream with a description < 25 chars"
    end

    test "should not save ice_cream without a date" do
      ice_cream = IceCream.new(name: "1234567890", description: "this is twenty-five chars")
      assert_not ice_cream.save, "saved ice_cream without a date"
    end


    ## test model...

end
