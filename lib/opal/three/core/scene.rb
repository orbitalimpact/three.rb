module THREE
  class Scene
    include Native
    
    def initialize
      @native = `new THREE.Scene()`
    end
  end
end