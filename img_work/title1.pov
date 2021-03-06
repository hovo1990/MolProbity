#include "colors.inc"
#include "textures.inc"

background { color rgb 1 }

camera {
  location <1.9, 1, -5>
  look_at <1.9, .5, 0>
}

// The letter M
union {

union {
  sphere { <0,0,0>, .2 }
  sphere { <0,1,0>, .2 }
  sphere { <.5,.7,0>, .2 }
  sphere { <1,1,0>, .2 }
  sphere { <1,0,0>, .2 }
  
  pigment { color Blue }
	finish {
		ambient 0.3
		diffuse 0.7
		specular 0.7
		roughness 0.01
	}
}

union {
  cylinder { <0,0,0>, <0,1,0>, .1 }
  cylinder { <0,1,0>, <.5,.7,0>, .1 }
  cylinder { <.5,.7.0>, <1,1,0>, .1 }
  cylinder { <1,1,0>, <1,0,0>, .1 }
  
  pigment { color rgb <0.7, 0.7, 0.7> }
	finish {
		ambient 0.3
		diffuse 0.7
		specular 0.7
		roughness 0.01
	}
}

finish {
	ambient 0.3
	diffuse 0.7
}

}

// The letter O
sphere {
	<.5,.5,0>, .6
	pigment { color Yellow }
	translate 1.45*1*x

	finish {
		ambient 0.3
		diffuse 0.7
		specular 0.7
		roughness 0.01
	}
}

// The letter L
union {

union {
  sphere { <0,0,0>, .2 }
  sphere { <0,1,0>, .2 }
  sphere { <.6,0,0>, .2 }
  
  pigment { color Red }
	finish {
		ambient 0.3
		diffuse 0.7
		specular 0.7
		roughness 0.01
	}
}

union {
  cylinder { <0,0,0>, <0,1,0>, .1 }
  cylinder { <0,0,0>, <.6,0,0>, .1 }
  
  pigment { color rgb <0.7, 0.7, 0.7> }
  finish {
		ambient 0.3
		diffuse 0.7
		specular 0.7
		roughness 0.01
	}

}


translate 1.45*2*x

}

// The floor
plane {
  y, -0.2
  texture {
  	pigment { color White }
  	finish {
  		ambient 0.25
  		diffuse 0.8
  		brilliance .01
  	}
  }
}

light_source {
  <1, 3, -5>
  color White shadowless
}
