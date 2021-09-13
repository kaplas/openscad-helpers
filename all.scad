
// Smooth primitives and custom additions
include <vendor/smooth-prim/smooth_prim.scad>

// Similar to SmoothXYCube, which top side is smoothed, but bottom side is not
module SmoothXYCube2(size, smooth_rad) {
  size = is_num(size) ? [size, size, size] : size;
  translate([0, -1*smooth_rad, 0]) difference() {
    SmoothCube([size[0],size[1]+smooth_rad,size[2]], smooth_rad);
    cube([size[0], smooth_rad, size[2]]);
  }
}

// Nuts and bolts
include <vendor/nutsnbolts/cyl_head_bolt.scad>