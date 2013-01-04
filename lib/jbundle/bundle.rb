module JBundle
  
  class Bundle
    
    include Enumerable
    include JBundle::BundleUtils

    attr_reader :name, :original_name, :licenses, :options

    def initialize(name, options)
      @original_name, @name = parse_name(name)
      @options = options
      @files = []
      @licenses = []
    end
    
    def file(f)
      @files << f
    end
    
    def license(license_file)
      @licenses << license_file
    end
    
    def each(&block)
      @files.each &block
    end
    
  end
  
end