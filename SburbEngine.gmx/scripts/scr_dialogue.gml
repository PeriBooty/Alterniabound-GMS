///scr_dialogue(sprite, character, text, # text, font, imagex, imagey, textx, texty, hashx, hashy, image pos, textspeed)

// Set temporary variables to inputs
var image_name = argument0;
var char = argument1;
var text = argument2;
var hashtext = argument3;
var font = argument4;
var imagex = argument5;
var imagey = argument6;
var textx = argument7;
var texty = argument8;
var hashx = argument9;
var hashy = argument10;
var pic_pos = argument11;
var txtspeed = argument12;

// Chgeck if the font is not set
if(font == undefined){
    font = "sburb"; // Set font to sburb
}

// Set colour to black
var color = $000000

// Check for each character and set colour
if(char == "aradia" || char == "aa") {
    color = $a10000;
} else if (char == "nepeta" || char == "ac") {
    color = $416600;
} else if (char == "vriska" || char == "ag") {
    color = $005682;
} else if (char == "at" || char == "tavros") {
    color = $a15000;
} else if (char == "ca" || char == "eridan") {
    color = $6a006a;
} else if (char == "cc" || char == "feferi") {
    color = $77003c;
} else if (char == "cg" || char == "karkat") {
    color = $626262;
} else if (char == "ct" || char == "equius") {
    color = $000056;
} else if (char == "ga" || char == "kanaya") {
    color = $008141;
} else if (char == "gc" || char == "terezi") {
    color = $008282;
} else if (char == "ta" || char == "sollux") {
    color = $a1a100;
} else if (char == "tc" || char == "gamzee") {
    color = $2b0057;
} else if (char == "as" || char == "ozzy") {
    color = $4b0082;
} else if (char == "dave") {
    color = $e00707;
} else if (char == "meenah") {
    color = $77003c;
} else if (char == "rose") {
    color = $b536da;
} else if (char == "aranea") {
    color = $005682;
} else if (char == "kankri") {
    color = $ff0000;
} else if (char == "porrim") {
    color = $008141;
} else if (char == "latula") {
    color = $008282;
}

// Check if obj_realtext doesn't exist
if(!instance_exists(obj_realtext)){
    // Create obj_realtext
    var txt_obj = instance_create(0,0,obj_realtext);
    
    // Set obj_realtexts data
    txt_obj.text = text; // Set text
    txt_obj.textx = textx; // Set text x
    txt_obj.texty = texty; // Set text y
    txt_obj.font = font; // Set font
    txt_obj.color = color; // Set colour
}

// Create obj_dialogue
var dialogue_obj = instance_create(imagex, imagey, obj_dialogue);

// Set obj_dialogue's data
dialogue_obj.sprite_index = image_name; // Set sprite
dialogue_obj.position = pic_pos; // Set position

// Set obj_hashtext's data
obj_hashtext.text = hashtext; // Set text
obj_hashtext.hashx = hashx; // Set x
obj_hashtext.hashy = hashy; // Set y
