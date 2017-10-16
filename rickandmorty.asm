.data
	intro: .asciiz "Welcome to your Morty School!you will betaking a survival Test. Throughout your preparation \n for your new Rick you have learned skills to survive an adventure with a Rick.  \n Now's the time to put those skills to the test! \n"
	
	name: .asciiz "\n ====Please enter your name:"
	
	addname: .space 15
	
	intro3: .asciiz "\n nice try morty! since you lied your test will be harder!!\n\n"
	
	menu_prompt: .asciiz "	=====Menu:=====\nFor the rules and how to play, enter 0\nTo play kclevel, enter 1\nTo play parasite house, enter2\n ====="
	
	return: .asciiz "\n"
	
	rules_desc: .asciiz "How to play:\n-This is a morty survival game, so there are rules! \n	just give the number of your decision just remember morty  \n	if you end up taking the wrong step you'll ruin the adventure morty!\n you don't wanna do that morty!you might die morty! \n	To go back to the menu, enter 0\n To start kc level, enter 1\n To start parasite house, enter 2 \n"
	
	rickdemption_intro: .asciiz "=====ALL RIGHT MORTY YOU'VE CHOOSEN TO HELP ME EXCAPE FROM SPACE PRISON!!!===== .\n remember morty dont mess up! or no rick would want you!!!! i swear morty!\n Ready you ready? \n"
	
	begining_rickdemption: .asciiz "\n You're sitting at the table with your family while your robot butler Conroy is serving pills for dinner. \n Summer is getting upset, 'Grandpa Rick wouldn't put up with this!'  \n you watch her storm away into the garage \n====Are you going to follow her?  \n (3) Yes \n (4) No \n ===== "
	
	run1: .asciiz  "\n As you tried to make a dash for the door you felt a stinging sensation in your back as you fell looking up to see rick \n Rick: nice morty! the world is gonna cause of what you did morty!!"
	
	#$s7 - register for score
	
	decitions: .asciiz ""
	
	search_house: .asciiz  " Rick:These telepathic little b*******, they embed themselves in memories, and th-then they use those to multiply and spread out, take over planets. It's -- it's disgusting\n jerry: so steve wasnt real?\n rick:no jerry steve wasn't real. now theres only six of us you me jerry summer beth mr.poopybuttwhole, oonly six!no more morty!!\n beth: do u remember that hulk show and we got stuck in the elevtor \n summer: oh yeah !! dad was being stupid and smashing buttons while cousin nikki saved us\n u notice a muscular ma sittin on the couch\n  "
	
	cousin_nikki: .asciiz  "\n cousin niki: im walkin here \n evryone laighs as rick stares back at the number and then back at the room with now 7 people \n rick:now theres 7!wich means one of you is the parasite \nwhat do you decide to do?\n enter 8\nToto agree nikki is real and tell rick to leave him alone,\n enter 9\n to agree cousin vinny is verry suspicious and ask rick to check him out \n"
	
	opt3_rickdemption: .asciiz "Okay morty, you've decdided to help! Do you remember the dead rick and morty barried in the back yard? \n (5) Aww man Rick Yes I remember! HOw COULD ANYONE FOR GET THAT!?!? \n (6) Ahhh geez Rick No i dont \n"
	
	opt4_rickdemption: .asciiz "DAMN YOU SELFISH MORTY!!! AF.. AFT... AFTER ALL I'VE DONE FOR YOU MORTY!!!"
	
.text
	la $v0, 4
	la $a0, intro
	syscall

	la $v0, 4
	la $a0, name
	syscall


	li $v0, 8
	li $a1, 30
	la $a0, addname      
	syscall

	la $v0, 4
	la $a0, intro3
	syscall


	menu:
	li $v0, 4
	la $a0, menu_prompt
	syscall
	
	li $v0, 5
	syscall
	la $t0, ($v0)
	beq $t0, 0, rules
	beq $t0, 1, level1
	beq $t0, 2,level2
	
	rules:
	li $v0, 4
	la $a0, rules_desc
	syscall
	
	li $v0, 5
	syscall
	
	la $t0, ($v0)
	beq $t0, 0, rules
	beq $t0, 1, level1
	beq $t0, 2,level2 
	
	level1:
	la $v0, 4
	la $a0, rickdemption_intro
	syscall
	li $v0, 12
	syscall
	
	li $v0, 4
	la $a0, begining_rickdemption
	syscall
	
	li $v0, 5
	syscall
	
	la $t0, ($v0)
	beq $t0, 0, rules
	beq $t0, 3, opt3
	beq $t0, 4, opt4
	syscall

	opt3:
	li $v0, 4
	la $a0, opt3_rickdemption
	syscall
	
	li $v0, 5
	syscall
	
	la $t0, ($v0)
	beq $t0, 0, rules
	beq $t0, 5, opt5
	beq $t0, 6, opt6
	syscall
	
	opt4:
	li $v0, 4
	la $a0, opt4_rickdemption
	syscall
	
	opt5:
	
	opt6:

	level2: