/*
Hue Dimmer Holder Remix

Copyright 2024 nomike[AT]nomike[DOT]com

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

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

        // holes for magnets
        translate([8.5, 0, 0]) color("orange") cylinder(d1=21, d2=15.5, h=6, $fn=75);
        translate([-8.5, 0, 0]) color("orange") cylinder(d1=21, d2=15.5, h=6, $fn=75);
    }
}