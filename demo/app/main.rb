require 'opal'
require 'browser'
require 'three'
require 'pp'

aspect_ratio = $$.innerWidth / $$.innerHeight

scene  = THREE::Scene.new
camera = THREE::PerspectiveCamera.new(field_of_view: 75, aspect_ratio: aspect_ratio, near: 0.1, far: 1000)

renderer = THREE::WebGLRenderer.new
renderer.set_size($$.innerWidth, $$.innerHeight)
$document.body << renderer.dom_element.to_n

geometry = THREE::BoxGeometry.new(width: 1, height: 1, depth: 1)
material = THREE::MeshBasicMaterial.new( color: 0x00ff00 )
cube     = THREE::Mesh.new(geometry.to_n, material.to_n)
scene.add(cube.to_n)

camera.position.z = 5

render = proc do
  $$.requestAnimationFrame(render)
  cube.rotation.x += 0.1
  cube.rotation.y += 0.1
  renderer.render(scene.to_n, camera.to_n)
end
render.call