module THREE
  class MeshBasicMaterial
    include Native
    
    def initialize(arg_hash = {})
      
      @native = `new THREE.MeshBasicMaterial(#{arg_hash.to_n})`
    end
  end
end