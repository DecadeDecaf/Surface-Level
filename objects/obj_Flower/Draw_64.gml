draw_set_color($000000)
draw_set_alpha(0.5)
draw_rectangle(0, 0, 1920, 1080, false)

var loves = (!global.Turn ? "They love me" : "They love me not")
var instructions = ((!global.Turn || instance_number(obj_Petal) <= 0) ? "" : "(click on a petal to pluck it)")

draw_set_color($FFFFFF)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_text_transformed(x, y - 260, loves, 0.75, 0.75, 0)
draw_text_transformed(x, y - 200, instructions, 0.45, 0.45, 0)

with (obj_PostPetal) {
	draw_self()
}

with (obj_Petal) {
	draw_self()
}

draw_self()