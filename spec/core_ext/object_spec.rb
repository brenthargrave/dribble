require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Object do
  before(:all) do
    @string = ''
    @fixnum = 1
    @float  = 1.1
    @hash   = {}
    @array  = []
  end
  
  it "should return true when testing if an empty string is blank" do
    @string.blank?.should be_true
  end
  
  it "should return false when testing a fixnum for blank" do
    @fixnum.blank?.should be_false
  end
  
  it "should return false when testing a float for blank" do
    @float.blank?.should be_false
  end
  
  it "should return true when testing if a hash is blank" do
    @hash.blank?.should be_true
  end
  
  it "should return true when testing if an array is blank" do
    @array.blank?.should be_true
  end
  
  it "should return true when testing if nil is blank" do
    nil.blank?.should be_true
  end
  
  it "should return false when testing if true is blank" do
    true.blank?.should be_false
  end
  
  it "should return false when testing if false is blank" do
    false.blank?.should be_false
  end
  
end