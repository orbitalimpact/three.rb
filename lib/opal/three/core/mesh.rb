module THREE
  class Mesh
    include Native
    
    def initialize(geometry, material)
      @native = `new THREE.Mesh(geometry, material)`
    end
    
    alias_native :rotation
  end
end