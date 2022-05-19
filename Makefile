VERILOG = iverilog
TARGET = test0513.vcd
TEMP = test0513.vvp

$(TARGET) : $(TEMP)
	vvp $(TEMP)

$(TEMP):   test0513_tb.v test0513.v
	$(VERILOG) -o $(TEMP)   test0513_tb.v test0513.v

clean:
	-del $(TARGET)
	-del $(TEMP)
