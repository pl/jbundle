module JBundle
  
  class File
    
    include Enumerable
    include JBundle::BundleUtils

    attr_reader :name, :original_name, :options

    def initialize(name, options = {})
      @original_name, @name = parse_name(name)
      @options = options
    end
    
    def each(&block)
      yield original_name
    end
    
  end
  
end