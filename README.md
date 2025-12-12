
### ENCODER 8TO3 DATAFLOW Modelling

**AIM:**

To implement  Encoder 8 To 3 in Dataflow Modelling using verilog and validating their functionality using their functional tables

**SOFTWARE REQUIRED:** Quartus prime

**THEORY**

**Encoder 8 To 3**

The 8 to 3 line Encoder is also known as Octal to Binary Encoder. In 8 to 3 line encoder, there is a total of eight inputs, i.e., D0, D1, D2, D3, D4, D5, D6, and D7 and three outputs, i.e., A0, A1, and A2. In 8-input lines, one input-line is set to true at a time to get the respective binary code in the output side. Below are the block diagram and the truth table of the 8 to 3 line encoder.

![image](https://github.com/naavaneetha/ENCODER8TO3DATAFLOW/assets/154305477/0bc242c1-eb9e-4c47-afe5-30428470efc3)

Figure 01  Block Diagram of Encoder 8 * 3

**Truth Table**

![image](https://github.com/naavaneetha/ENCODER8TO3DATAFLOW/assets/154305477/35496b14-ae6e-4cd1-9abd-d6736b576575)

The logical expression of the term A0, A1, and A2 are as follows:

A0 = D1 + D3 + D5 + D7

A1 = D2 + D3 + D6 + D7

A2 = D4 + D5 + D6 + D7

Logical circuit of the above expressions is given below:

![image](https://github.com/naavaneetha/ENCODER8TO3DATAFLOW/assets/154305477/95acaee6-c873-4c75-89eb-ef09fb158053)

Figure 02  Encoder 8 * 3

**Procedure**

/* write all the steps invloved */

**PROGRAM**

/* Program for Encoder 8 To 3 in Dataflow Modelling and verify its truth table in quartus using Verilog programming. 

Developed by:  Abinaya P RegisterNumber:25014594
*/
```
module Encoder(
    input  wire [7:0] in,   // 4 input lines
    output reg  [2:0] out   // 2 output lines
);
    always @(*) begin
        case (in)
            8'b00000001: out = 2'b000;
            8'b00000010: out = 2'b001;
            8'b00000100: out = 2'b010;
            8'b00001000: out = 2'b011;
				8'b00010000: out = 2'b100;
				8'b00100000: out = 2'b101;
				8'b01000000: out = 2'b110;
				8'b10000000: out = 2'b111;
            default: out = 2'bxxx;  // Invalid case
        endcase
    end
endmodule
```
**RTL LOGIC FOR Encoder 8 To 3 in Dataflow Modelling**
<img width="1887" height="901" alt="Screenshot 2025-12-12 222217" src="https://github.com/user-attachments/assets/50fe72e5-9aaa-4d50-8c0d-6d30b84a59b5" />

**TIMING DIGRAMS FOR Encoder 8 To 3 in Dataflow Modelling**
<img width="1037" height="316" alt="Screenshot 2025-12-12 224139" src="https://github.com/user-attachments/assets/d9b1358f-5084-491c-b032-84adbda03e3b" />

**RESULTS**




