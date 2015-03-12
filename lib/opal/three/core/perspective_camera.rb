module THREE
  class PerspectiveCamera
    include Native
    
    def initialize (arg_hash = {})
      field_of_view = arg_hash[:field_of_view]
      aspect_ratio  = arg_hash[:aspect_ratio]
      near          = arg_hash[:near]
      far           = arg_hash[:far]
      
      @native = `new THREE.Scene(field_of_view, aspect_ratio, near, far)`
    end
  end
end