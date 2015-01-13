require File.expand_path('../common', __FILE__)

module TestModule
  include ModuleWithParams
  
  def number
    _TestModule_module_options[:number]
  end
end

module TestModuleArray
  include ModuleWithParams
  
  def first
    _TestModuleArray_module_options[0]
  end
  
  def second
    _TestModuleArray_module_options[1]
  end
  
  module NestedModule
    include ModuleWithParams
    
    def number
      _NestedModule_module_options
    end
  end
end

describe 'Module with params' do
  
  it 'can be included included in multiple separate classes' do
    cl = Class.new do
      include TestModule[:number => 5]
    end
    
    cl2 = Class.new do
      include TestModule[:number => 43]
    end
    
    cl.new.number.should == 5
    cl2.new.number.should == 43
  end
  
  it 'can be used with non hash parameters' do
    cl = Class.new do
      include TestModuleArray["hello", 43]
    end
    obj = cl.new
    obj.first.should == "hello"
    obj.second.should == 43
  end
  
  should 'handle nested modules' do
    cl = Class.new do
      include TestModuleArray::NestedModule[5]
    end
    obj = cl.new
    obj.number.should == 5
  end
  
end
