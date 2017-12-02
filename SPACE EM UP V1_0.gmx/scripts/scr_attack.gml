
if canShoot {
canShoot = false
    instance_create(x,y,bullet);
}
    
canShootTimer -=1;

if canShootTimer <= 0 {
    canShoot = true;
    }
