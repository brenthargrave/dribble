require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Hash do
  
  describe "To Query" do
    before(:all) do
      @query_hash = {:name => 'hilton', :postal => '92009'}
    end
    
    it "should create a standard query string" do
      @query_hash.to_query.should == 'name=hilton&postal=92009'
    end
    
    it "should create an encoded query string with a namespace" do
      @query_hash.to_query('property').should == 'property%5Bname%5D=hilton&property%5Bpostal%5D=92009'
    end
  end
  
  describe "Symbolizing Keys" do
    before(:all) do
      @stringified_keys = {'name' => 'Hilton', 'address' => '1200 Ave.', 'postal' => '92011'}
      @recursive        = {'name' => 'Hilton', 'address' => {'street' => '1200 Ave.', 'postal' => '92011', 'directions' => {'from' => 'here', 'to' => 'there', 'dive_in' => {'name' => 'something'}}}}
    end
    
    it "should create a new hash, keeping the old" do
      a = @stringified_keys.symbolize_keys
      a.should == {:name => 'Hilton', :address => '1200 Ave.', :postal => '92011'}
      @stringified_keys.should == {'name' => 'Hilton', 'address' => '1200 Ave.', 'postal' => '92011'}
    end
    
    it "should overwrite the existing hash making the keys symbols" do
      a = @stringified_keys.symbolize_keys!
      a.should == {:name => 'Hilton', :address => '1200 Ave.', :postal => '92011'}
      @stringified_keys.should == {:name => 'Hilton', :address => '1200 Ave.', :postal => '92011'}
    end
    
    it "should overwrite and recursively make all keys symbols" do
      a = @recursive.recursive_symbolize_keys!
      a.should == {:name => 'Hilton', :address => {:street => '1200 Ave.', :postal => '92011', :directions => {:from => 'here', :to => 'there', :dive_in => {:name => 'something'}}}}
      @recursive.should == {:name => 'Hilton', :address => {:street => '1200 Ave.', :postal => '92011', :directions => {:from => 'here', :to => 'there', :dive_in => {:name => 'something'}}}}
    end
  end
  
  describe "Symbolizing Keys" do
    before(:all) do
      @stringified_keys = {'name' => 'Hilton', 'address' => '1200 Ave.', 'postal' => '92011'}
      @recursive        = {'name' => 'Hilton', 'address' => {'street' => '1200 Ave.', 'postal' => '92011', 'directions' => {'from' => 'here', 'to' => 'there', 'dive_in' => {'name' => 'something'}}}}
    end
    
    it "should create a new hash, keeping the old" do
      a = @stringified_keys.symbolize_keys
      a.should == {:name => 'Hilton', :address => '1200 Ave.', :postal => '92011'}
      @stringified_keys.should == {'name' => 'Hilton', 'address' => '1200 Ave.', 'postal' => '92011'}
    end
    
    it "should overwrite the existing hash making the keys symbols" do
      a = @stringified_keys.symbolize_keys!
      a.should == {:name => 'Hilton', :address => '1200 Ave.', :postal => '92011'}
      @stringified_keys.should == {:name => 'Hilton', :address => '1200 Ave.', :postal => '92011'}
    end
    
    it "should overwrite and recursively make all keys symbols" do
      a = @recursive.recursive_symbolize_keys!
      a.should == {:name => 'Hilton', :address => {:street => '1200 Ave.', :postal => '92011', :directions => {:from => 'here', :to => 'there', :dive_in => {:name => 'something'}}}}
      @recursive.should == {:name => 'Hilton', :address => {:street => '1200 Ave.', :postal => '92011', :directions => {:from => 'here', :to => 'there', :dive_in => {:name => 'something'}}}}
    end
  end
  
  describe "Symbolizing Keys" do
    before(:all) do
      @stringified_keys = {'name' => 'Hilton', 'address' => '1200 Ave.', 'postal' => '92011'}
      @recursive        = {'name' => 'Hilton', 'address' => {'street' => '1200 Ave.', 'postal' => '92011', 'directions' => {'from' => 'here', 'to' => 'there', 'dive_in' => {'name' => 'something'}}}}
    end
    
    it "should create a new hash, keeping the old" do
      a = @stringified_keys.symbolize_keys
      a.should == {:name => 'Hilton', :address => '1200 Ave.', :postal => '92011'}
      @stringified_keys.should == {'name' => 'Hilton', 'address' => '1200 Ave.', 'postal' => '92011'}
    end
    
    it "should overwrite the existing hash making the keys symbols" do
      a = @stringified_keys.symbolize_keys!
      a.should == {:name => 'Hilton', :address => '1200 Ave.', :postal => '92011'}
      @stringified_keys.should == {:name => 'Hilton', :address => '1200 Ave.', :postal => '92011'}
    end
    
    it "should overwrite and recursively make all keys symbols" do
      a = @recursive.recursive_symbolize_keys!
      a.should == {:name => 'Hilton', :address => {:street => '1200 Ave.', :postal => '92011', :directions => {:from => 'here', :to => 'there', :dive_in => {:name => 'something'}}}}
      @recursive.should == {:name => 'Hilton', :address => {:street => '1200 Ave.', :postal => '92011', :directions => {:from => 'here', :to => 'there', :dive_in => {:name => 'something'}}}}
    end
  end
  
end