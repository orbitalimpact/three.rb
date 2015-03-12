module THREE
  class WebGLRenderer
    include Native
    
    def initialize
      @native = `new THREE.WebGLRenderer()`
    end
    
    alias_native :set_size, :setSize
    alias_native :dom_element, :domElement
  end
end