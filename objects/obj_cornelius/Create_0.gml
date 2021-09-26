/// @description write dialogue and set amount of attack options
//Cornelius_speak="My dad will punish me if he finds out I'm here"
event_inherited();
//create_textevent(Cornelius_speak,-1)
message[0]="My dad will punish me if he finds out I'm here"
message[1]="Things are getting pretty spicy in here, oh yeah"
message[2]="I'm gonna lose soduku privledges for a month for this!"
message[3]="Please,please don't tell my dad on me!"
message[4]="AHHH i think my dad is coming!"
message[5]="It smells like blue in here ya know?"
message[6]="Wow my dad would be SOO mad at me"
last_choice=6;

I_enemy=obj_cornelius//declare who you are for the switch statement script
my_last_attack=3;
my_defense=5;