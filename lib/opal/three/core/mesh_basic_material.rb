module THREE
  class MeshBasicMaterial
    include Native
    
    def initialize(arg_hash = {})
      color = arg_hash[:color]
      
      @native = `new THREE.MeshBasicMaterial(color)`
    end
  end
end