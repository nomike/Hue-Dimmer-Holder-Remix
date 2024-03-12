union() {
    difference() {
        union() {
            // base part
            difference() {
                import("Hue Dimmer Holder.stl");
                color("red") translate([-50, -74, 8.05]) cube([100, 150, 10]);
            }

            // top part
            translate([0, 0, 8]) scale([1, 1, 2]) translate([0,0,-7.05]) intersection() {
                import("Hue Dimmer Holder.stl");
                color("red") translate([-50, -74, 7.05]) cube([100, 150, 1]);
            }
        }

        // translate([8.5, 0, 0]) color("orange") cylinder(d=15.5, h=6, $fn=75);
        // translate([-8.5, 0, 0]) color("orange") cylinder(d=15.5, h=6, $fn=75);

        // holes for magnets
        translate([8.5, 0, 0]) color("orange") cylinder(d1=21, d2=15.5, h=6, $fn=75);
        translate([-8.5, 0, 0]) color("orange") cylinder(d1=21, d2=15.5, h=6, $fn=75);
    }
}