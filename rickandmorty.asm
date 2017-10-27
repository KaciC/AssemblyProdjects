.data
	intro: .asciiz "Welcome to your Morty School!you will betaking a survival Test. Throughout your preparation \n for your new Rick you have learned skills to survive an adventure with a Rick.  \n Now's the time to put those skills to the test! \n"
	
	name: .asciiz "\n =====Please enter your name:"
	
	addname: .space 15
	
	intro3: .asciiz "\n nice try morty! since you lied your test will be harder!!\n\n"
	
	menu_prompt: .asciiz "	*****Menu:*****\nFor the rules and how to play, enter 0\nTo play kclevel, enter 1\nTo play parasite house, enter2\n ====="
	
	return: .asciiz "\n"
	
	rules_desc: .asciiz "How to play:\n-This is a morty survival game, so there are rules! \n	just give the number of your decision just remember morty  \n	if you end up taking the wrong step you'll ruin the adventure morty!\n you don't wanna do that morty!you might die morty! \n	To go back to the menu, enter 0\n To start kc level, enter 1\n To start parasite house, enter 2 \n ====="
	
	rickdemption_intro: .asciiz "******ALL RIGHT MORTY YOU'VE CHOOSEN TO HELP ME EXCAPE FROM SPACE PRISON!!!***** \n remember morty dont mess up! or no rick would want you!!!! i swear morty!\n Ready you ready? \n"
	
	begining_rickdemption: .asciiz "\n You're sitting at the table with your family while your robot butler Conroy is serving pills for dinner. \n Summer is getting upset, 'Grandpa Rick wouldn't put up with this!'  \n you watch her storm away into the garage \n====Are you going to follow her?  \n (3) Yes \n (4) No \n ===== "
	
	#$s7 - register for score
	
	opt3_rickdemption: .asciiz "Okay morty, you've decdided to help! Do you remember the dead rick and morty barried in the back yard? \n (5) Aww man Rick Yes I remember! HOw COULD ANYONE FOR GET THAT!?!? \n (6) Ahhh geez Rick No i dont \n ====="
	
	opt4_rickdemption: .asciiz "DAMN YOU SELFISH MORTY!!! AF-AFTER ALL I'VE DONE FOR YOU MORTY!!!"

	opt5_rickdemption: .asciiz "Well hurt up and dig them up! You can use the dead ricks portal gun! \n Come onn Morty! D-Did you seriously not think about that! \n (press enter to dig) \n"	
	
	opt6_rickdemption: .asciiz "Whoops! I must have added that to the morty mind blowers list \n (7) ask about morty mind blowers \n (8) Hurry to pick up a shovel\n ====="
	
	opt7_rickdemption: .asciiz "We don't have time for these questions! Just help summber dig! \n (press enter to pick up a shovel) \n"
	
	opt8_rickdemption: .asciiz "You've got the gun! Great! \n \n "
	
	opt82_rickdemption: .asciiz "HURRY CONROY IS COMMING! G-GET OUT OF THERE MORTY! \n (9) give gun to Conroy so he can 'Relinquish the illegal technology \n    to the nearest Federation representative.' \n (10) Take Summer to Dimension C-137 \n ====="

	opt9_rickdemption: .asciiz "NO MORTY! THERE GOES EVERY CHANCE OF ME EXCAPING SPACE PRISON!! \n G-Got YOu! im a freaking genius !\n I can do this o-on *buurrrp* my own "

	opt10_rickdemption: .asciiz "Why would you go here Morty!?!? We left this demention for a reason!! T-This is not space prison! \n Summer:' What is this place?' \n (11) Walk with her down the street until you find your old home \n (12) Tell her this was your home, and your original family is here \n ===== "
	
	opt11_rickdemption: .asciiz "Summer: ''Hey that totally looks like our house!'' \n (13)Tell her this is your original home \n (14)follow her inside \n ====="

	opt12_rickdemption: .asciiz "Summer: What? How did this happen? Totally uncool! \n (13) Explain to her that this is the side of the adventures that no one sees\n (14)Walk with her to original home \n ===== "

	opt13_rickdemption: .asciiz "Summer: '' Grandpa Rick would never do this! Hes like a hero! '' "
	
	opt14_rickdemption: .asciiz "You see your original family \n (15)\n (16) "	
	
	opt15_rickdemption: .asciiz " "	
	
	opt16_rickdemption: .asciiz " "	
	
	opt17_rickdemption: .asciiz " "	
	
	opt18_rickdemption: .asciiz " "	
	
	opt19_rickdemption: .asciiz " "
	
	opt20_rickdemption: .asciiz " "		

	opt21_rickdemption: .asciiz " "	
	
	opt22_rickdemption: .asciiz " "	
	
	opt23_rickdemption: .asciiz " "	
	
	opt24_rickdemption: .asciiz " "	
	
	opt25_rickdemption: .asciiz " "	
	
	opt26_rickdemption: .asciiz " "
	
	opt27_rickdemption: .asciiz " "	

	opt28_rickdemption: .asciiz " "	
	
	opt29_rickdemption: .asciiz " "
	
	opt30_rickdemption: .asciiz " "	
		
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
	
	b level2
		
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

	b level2
			
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

	b level2
		
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
	
	b level2
		
	opt4:
	li $v0, 4
	la $a0, opt4_rickdemption
	syscall
	
	b level2
	
	opt5:
	li $v0, 4
	la $a0, opt5_rickdemption
	syscall
	
	li $v0, 12
	syscall
	
	b opt82
	
	opt6:
	li $v0, 4
	la $a0, opt6_rickdemption
	syscall
	
	li $v0, 5
	syscall
	
	la $t0, ($v0)                                   
	beq $t0, 0, rules
	beq $t0, 7, opt7
	beq $t0, 8, opt8
	syscall

	b level2
			
	opt7:
	li $v0, 4
	la $a0, opt7_rickdemption
	syscall
	
	li $v0, 12
	syscall
	
	b opt5
	
	opt8:
	b opt5
	
	opt82:
	li $v0, 4
	la $a0, opt8_rickdemption
	syscall
	
	li $v0, 4
	la $a0, opt82_rickdemption
	syscall
	
	li $v0, 5
	syscall
	
	la $t0, ($v0)                                   
	beq $t0, 0, rules
	beq $t0, 9, opt9
	beq $t0, 10, opt10
	syscall

	b level2

	opt9:
	li $v0, 4
	la $a0, opt9_rickdemption
	syscall
	
	b level2	
	
	opt10:
	li $v0, 4
	la $a0, opt10_rickdemption
	syscall
	
	li $v0, 5
	syscall
	
	la $t0, ($v0)                                   
	beq $t0, 0, rules
	beq $t0, 11, opt11
	beq $t0, 12, opt12
	syscall

	b level2
		
	opt11:
	li $v0, 4
	la $a0, opt11_rickdemption
	syscall
	
	li $v0, 5
	syscall
	
	la $t0, ($v0)                                   
	beq $t0, 0, rules
	beq $t0, 13, opt13
	beq $t0, 14, opt14
	syscall

	b level2
			
	opt12:
	li $v0, 4
	la $a0, opt12_rickdemption
	syscall
	
	li $v0, 5
	syscall
	
	la $t0, ($v0)                                   
	beq $t0, 0, rules
	beq $t0, 13, opt13
	beq $t0, 14, opt14
	syscall

	b level2
		
	opt13:
	li $v0, 4
	la $a0, opt13_rickdemption
	syscall
	
	li $v0, 5
	syscall
	
	la $t0, ($v0)                                   
	beq $t0, 0, rules
	beq $t0, 13, opt13
	beq $t0, 14, opt14
	syscall

	b level2
	
	opt14:
	
	level2:
	
	wrong: