if particles = true {
    if !instance_exists(obj_first_particle) {instance_create(x,y,obj_first_particle)};
}
         
else if particles = false {
    if instance_exists(obj_first_particle) {instance_destroy(obj_first_particle,true)};
}       
