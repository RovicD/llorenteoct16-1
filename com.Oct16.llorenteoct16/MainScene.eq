

/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	int w;
	int h;
	int p_x;
	int p_y;
	int wt;
	int ht;

	
	SESprite cat;
	SESprite cat1;
	SESprite cat2;
	SESprite cat3;
	SESprite text;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w  =  get_scene_width();
		h = get_scene_height();
		add_entity(SESpriteEntity.for_color(Color.instance("red"), w, h));
		rsc.prepare_image("mycat", "cat", w*0.5, h*0.5);
		rsc.prepare_image("mycat1", "cat1", w*0.5, h*0.5);
		rsc.prepare_image("mycat2", "cat2", w*0.5, h*0.5);
		rsc.prepare_image("mycat3", "cat3", w*0.5, h*0.5);
		rsc.prepare_font("myfont", "arial bold color=black", 40);
		cat = add_sprite_for_image(SEImage.for_resource("mycat"));
		cat1 = add_sprite_for_image(SEImage.for_resource("mycat1"));
		cat2 = add_sprite_for_image(SEImage.for_resource("mycat2"));
		cat3 = add_sprite_for_image(SEImage.for_resource("mycat3"));
		
		text = add_sprite_for_text(" ", "myfont");
		cat.move(0,0);
		cat1.move(w*0.5, 0);
		cat2.move(0, h*0.5);
		cat3.move(0.5*w, 0.5*h);
		text = add_sprite_for_text(" ",  "myfont");
		wt = text.get_width();
		ht = text.get_height();

		rsc.prepare_image("mycats","cat",w,h);
		rsc.prepare_image("mycats1","cat1",w,h);
		rsc.prepare_image("mycats2","cat2",w,h);
		rsc.prepare_image("mycats3","cat3",w,h);
		
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		p_x = pi.get_x();
		p_y = pi.get_y();
			 if(pi.is_inside(0,0,0.5*w,0.5*h)) {
			text.set_text("MEOWWWWWW");
			text.move(w*0.25 - 0.5*wt, h*0.25 - 0.5*ht);
			cat.set_alpha(0.5);
			cat1.set_alpha(1);
			cat2.set_alpha(1);
			cat3.set_alpha(1);	
			
				
		}
	 else if(pi.is_inside(0.5*w,0,0.5*w,0.5*h)) {
			text.set_text("MEHEEHEHEHEHEHE");
			text.move(w*0.75-0.5*wt, h*0.25-0.5*ht);
			cat.set_alpha(1);
			cat1.set_alpha(0.5);
			cat2.set_alpha(1);
			cat3.set_alpha(1);	
		}
		 else if(pi.is_inside(0,0.5*h,0.5*w,0.5*h)){    
		text.set_text("WAHAHAE");
		 text.move(0.25 * w - 0.5 * wt , 0.75*h);
		cat.set_alpha(1);
			cat1.set_alpha(1);
			cat2.set_alpha(0.5);
			cat3.set_alpha(1);
		}
		else if(pi.is_inside(0.5*w,0.5*h,0.5*w,0.5*h)){   
		text.set_text("HOHOHOHO");
		text.move(0.75 * w - 0.5 *wt , 0.75*h);  
		cat.set_alpha(1);
		cat1.set_alpha(1);
		cat2.set_alpha(1);
		cat3.set_alpha(0.5);
		}

		if( p_x  > 0.35 && p_x < w*0.5 && p_y > 0 && p_y < h*0.15 ) {
			add_entity(SESpriteEntity.for_color(Color.instance("red"), w, h));		
            cat = add_sprite_for_image(SEImage.for_resource("mycats"));
        }
	
 		else if( p_x >0.75  && p_x < w && p_y > 0 && p_y < h*0.15 ) {
           add_entity(SESpriteEntity.for_color(Color.instance("red"), w, h));
			 cat1 = add_sprite_for_image(SEImage.for_resource("mycats1"));
        }

        else if( p_x  > 0.35  && p_x < w*0.5 && p_y > 0.5*h && p_y < h*0.65 ) {
           add_entity(SESpriteEntity.for_color(Color.instance("red"), w, h));
			cat2 = add_sprite_for_image(SEImage.for_resource("mycats2"));
        }

        else if( p_x >0.75  && p_x < w && p_y > 0.5*h && p_y < h*0.65 ) {
           add_entity(SESpriteEntity.for_color(Color.instance("red"), w, h));
			cat3  = add_sprite_for_image(SEImage.for_resource("mycats3"));
        }
    

        }
    
	

	public void cleanup() {
		base.cleanup();
	}
}
