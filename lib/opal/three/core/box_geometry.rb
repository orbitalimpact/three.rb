module THREE
  class BoxGeometry
    include Native
    
    def initialize(arg_hash = {})
      width  = arg_hash[:width]
      height = arg_hash[:height]
      depth  = arg_hash[:depth]
      
      @native = `new THREE.BoxGeometry(width, height, depth)`
    end
  end
end