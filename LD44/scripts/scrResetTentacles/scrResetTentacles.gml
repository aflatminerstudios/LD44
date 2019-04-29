//Deal with tentacle monster
with (objTentacles) {
  instance_destroy(); 
}

var t = instance_create_layer(-1500, 0, "ForegroundInstances", objTentacles);

return t;