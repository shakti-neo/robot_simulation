require_relative "spec_helper.rb"
require "./app/toy.rb"

RSpec.describe "Testing Toy class" do
  before(:each) do
    @toy = Toy.new(1,2,"North")
  end

  it "should return toy instance" do
    expect(@toy).should_not be_nil
  end

  it "should move toy forward" do
    @toy.move
    expect(@toy.y_coordinate).to eq(3)
  end


  it "should move toy left" do
    @toy.left
    expect(@toy.direction).to eq("west")
  end

  it "should move toy right" do
    @toy.right
    expect(@toy.direction).to eq("east")
  end

  it "should report toy's current coordinates and direction" do
    x_coordinate, y_coordinate, direction = @toy.report
    expect(x_coordinate).to eq(1)
    expect(y_coordinate).to eq(2)
    expect(direction).to eq("north")
  end
end