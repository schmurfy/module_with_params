require "module_with_params/version"

module ModuleWithParams
  def self.included(klass)
    klass.send(:extend, ClassMethods)
  end
  
  module ClassMethods
    def [](*args)
      clone.tap do |mod|
        module_name = self.name
        mod.instance_eval do
          define_method(:"_#{module_name}_module_options"){ (args.size == 1) ? args[0] : args }
        end
      end
    end
  end
  
end
