require 'opal'
require 'browser'
require 'three'
require 'pp'

aspect_ratio = $$.innerWidth / $$.innerHeight

scene  = THREE::Scene.new
camera = THREE::PerspectiveCamera.new(field_of_view: 75, aspect_ratio: aspect_ratio, near: 0.1, far: 1000)

renderer = THREE::WebGLRenderer.new
renderer.set_size($$.innerWidth, $$.innerHeight)
renderer.dom_element.append_to($document.body)

# THE FOLLOWING CODE IS A WORK-IN-PROGRESS AND WILL BE IMPLEMENTED SOON
# ----------------------------------------------------------------------
#geometry = THREE::BoxGeometry(1, 1, 1)
#material = THREE::MeshBasicMaterial( color: 0x00ff00 )
#cube     = THREE::Mesh(geometry, material)
#scene.add(cube)
#
#camera.position.z = 5
#
#render = proc do
#  $$.requestAnimationFrame(render)
#  cube.rotation.x += 0.1
#  cube.rotation.y += 0.1
#  renderer.render(scene, camera)
#end