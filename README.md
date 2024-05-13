# VLSI-LAB-EXP-4
SIMULATION AND IMPLEMENTATION OF SEQUENTIAL LOGIC CIRCUITS

AIM: 
 To simulate and synthesis SR, JK, T, D - FLIPFLOP, COUNTER DESIGN using Xilinx ISE.

APPARATUS REQUIRED:

 VIVADO 2023.1

 PROCEDURE:

STEP:1 Start the Vivado, Select and Name the New project. STEP:2 Select the device family, device, package and speed.
STEP:3 Select new source in the New Project and select Verilog Module as the Source type.
STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it.
STEP:5 Select the Behavioural Simulation in the Source Window and click the check syntax.
STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table.


**LOGIC DIAGRAM**

SR FLIPFLOP

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/77fb7f38-5649-4778-a987-8468df9ea3c3)

PROGRAM:
```
module sr_ff(clk,q,rst,s,r); input s,r,clk,rst;
output reg q; 
always@(posedge clk) begin
if(rst==1) q=1'b0;
else begin case({s,r})
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=1'bx;
endcase
end end
endmodule
```
OUTPUT:

![image](https://github.com/Siva1309/VLSI-LAB-EXP-4/assets/166374356/0a2b786a-8016-4e09-8ad1-4cab4ab28c07)


JK FLIPFLOP

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/1510e030-4ddc-42b1-88ce-d00f6f0dc7e6)

PROGRAM:
```
module jk_ff(clk,q,rst,j,k); 
input j,k,clk,rst;
output reg q;
always@(posedge clk)

begin if(rst==1) q=1'b0;
else begin case({j,k})
2'b00:q=q; 2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=~q;
endcase 
end
end endmodule
```
OUTPUT:

![image](https://github.com/Siva1309/VLSI-LAB-EXP-4/assets/166374356/2c8c8a97-24a1-4ef0-8e6c-9266e4b8bac1)


T FLIPFLOP

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/7a020379-efb1-4104-85ee-439d660baa08)

PROGRAM:
```
module t_ff(clk,q,rst,t);
input t,clk,rst;
output reg q; 
always@(posedge clk) begin
if(rst==1) q=1'b0;
else if(t==0) q=q; 
else q=~q; 
end
endmodule
```
OUTPUT:

![image](https://github.com/Siva1309/VLSI-LAB-EXP-4/assets/166374356/b22a946d-7958-4312-9e0f-445f50bf4ca1)


D FLIPFLOP

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/dda843c5-f0a0-4b51-93a2-eaa4b7fa8aa0)

PROGRAM:
```
module d_ff(clk,q,rst,d);
input d,clk,rst;
output reg q; 
always@(posedge clk) begin

if(rst==1) q=1'b0;
else q=d;
end
endmodule
```
OUTPUT:

![image](https://github.com/Siva1309/VLSI-LAB-EXP-4/assets/166374356/4170d592-bf8c-4d79-87ed-1be974bee062)


COUNTER

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/a1fc5f68-aafb-49a1-93d2-779529f525fa)

PROGRAM:

module mod_10(clk,rst,out);
input clk,rst;
output reg[3:0]out; 
always@(posedge clk)
begin if(rst==1|out==9) out=4'b0;
else out=out+1; 
end endmodule

OUTPUT:

![image](https://github.com/Siva1309/VLSI-LAB-EXP-4/assets/166374356/a69b62a9-c148-44e2-bba4-1d2485f835ea)

UP-DOWN-COUNTER
![image](https://github.com/Siva1309/VLSI-LAB-EXP-4/assets/166374356/77e27c90-bea7-40bb-862e-75da25371b5d)

PROGRAM

module updown_counter(clk,rst,ud,out); 
input clk,rst,ud; 
output reg[3:0]out;
always@(posedge clk) begin if(rst==1) out=4'b0; 
else if (ud==1) out=out+1;
else if(ud==0) out=out-1;
end endmodule

OUTPUT

![image](https://github.com/Siva1309/VLSI-LAB-EXP-4/assets/166374356/28b91983-5e9f-4e2c-892d-106dfcbc399c)


RESULT:
    The simulate and synthesis SR, JK, T, D - FLIPFLOP, COUNTER DESIGN using VIV.


