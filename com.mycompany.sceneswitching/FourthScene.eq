
/*
 * FourthScene
 * Created by Eqela Studio 2.0b7.4
 */

public class FourthScene : SEScene
{
	SESprite bg;
	SESprite sprite1;
	SESprite back;
	String text;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);

		bg = add_sprite_for_color(Color.instance("white"),get_scene_width(),get_scene_width());
		bg.move(0,0);

		rsc.prepare_image("oi","oink",get_scene_width()*0.4);
		sprite1 = add_sprite_for_image(SEImage.for_resource("oi"));
		sprite1.move(get_scene_width()*0.3,get_scene_height()*0.2);

		text = "Back to Main";
		rsc.prepare_font("myfont","verdana bold color=black",25);
		back = add_sprite_for_text(text,"myfont");
		back.move(get_scene_width()-190,get_scene_height()-30);
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(get_scene_width()-190,get_scene_height()-30,get_scene_width(),get_scene_height()))
			{switch_scene(new Main());}
	}
}
