.IGNORE:

#PROGRAM = jup20

all: $(PROGRAM).crt

$(PROGRAM).crt : $(PROGRAM).prg
	c:\bin\cartconv -t vic20 -i $(PROGRAM).prg -o $(PROGRAM).crt -n "JUPITER LANDER"	

$(PROGRAM).prg : $(PROGRAM).obj
	c:\bin\obj2prg $(PROGRAM).obj $(PROGRAM).prg
	
$(PROGRAM).obj : $(PROGRAM).asm
	c:\bin\cbm6502asm $(PROGRAM),$(PROGRAM)=$(PROGRAM) /B1 /Z

clean:
	del $(PROGRAM).crt
	del $(PROGRAM).prg
	del $(PROGRAM).obj


