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

	opt5_rickdemption: .asciiz "Well hurt up and dig them up! You can use the dead ricks portal gun! \n Come onn Morty! D-Did you seriously not think about that! \n (press enter to dig)"	
	
	opt6_rickdemption: .asciiz "Whoops! I must have added that to the morty mind blowers list \n (7) ask about morty mind blowers \n (8) Hurry to pick up a shovel and dig \n ====="
	
	opt7_rickdemption: .asciiz "We don't have time for these questions! Just help summber dig!"
	
	opt8_rickdemption: .asciiz "You've got the gun! Great! \n "
	
	opt9_rickdemption: .asciiz "HURRY CONROY IS COMMING! G-GET OUT OF THERE MORTY! \n (10) give gun to Conroy so he can 'Relinquish the illegal technology to the nearest Federation representative. ['"

	opt10_rickdemption: .asciiz " "

	opt11_rickdemption: .asciiz " "
					
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
	
	b opt8
	
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
	
	b level2
	
	opt8:
	li $v0, 4
	la $a0, opt8_rickdemption
	syscall
	
	la $t0, ($v0)
	beq $t0, 0, rules
	beq $t0, 9, opt9
	beq $t0, 10, opt10
	syscall
	
	b wrong

	opt9:
	li $v0, 4
	la $a0, opt9_rickdemption
	syscall
	
	la $t0, ($v0)
	beq $t0, 0, rules
	beq $t0, 11, opt11
	beq $t0, 12, opt12
	syscall
	opt10:
	
	opt11:
	
	opt12:

	level2:
	
	wrong: