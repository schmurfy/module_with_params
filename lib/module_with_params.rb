require "module_with_params/version"

module ModuleWithParams
  def self.included(klass)
    klass.send(:extend, ClassMethods)
  end
  
  module ClassMethods
    def [](*args)
      m = self
      
      Module.new do
        include m
        define_method(:"_#{m.name}_module_options"){ (args.size == 1) ? args[0] : args }        
      end
      
    end
  end
  
end

