if bullet_cd = 10 instance_create(x,y,obj_bullet1);
        
bullet_cd -=1;

if bullet_cd < 0 {bullet_cd = 10};
