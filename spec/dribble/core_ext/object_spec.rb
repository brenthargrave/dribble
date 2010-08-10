require File.expand_path(File.dirname(__FILE__) + '../../../spec_helper')

describe "Object Extensions" do
  
  before(:all) do
    @namespace  = 'dribble'
    @key        = 'name'
    @value      = 'simplebits'
  end
  
  it "should create a key value like: name=simplebits" do
    @value.to_query(@key).should == 'name=simplebits'
  end
  
  it "should send back a key value string with namespace like: dribble[name]=simplebits, but encoded" do
    @value.to_query("#{@namespace}[#{@key}]").should == 'dribble%5Bname%5D=simplebits'
  end

end