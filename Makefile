.PHONY: upload
hue_dimmer_holder_remix.stl: hue_dimmer_holder_remix.scad
	openscad -o $@ $<

clean: 
	rm -f hue_dimmer_holder_remix.stl
	
