module testbench;
    reg [3:0] a, b;
    reg [1:0] op;
    wire [7:0] res;

    calculator uut (a, b, op, res);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        a = 5; b = 3; op = 0; #10; // 5 + 3
        a = 10; b = 4; op = 1; #10; // 10 - 4
        a = 3; b = 4; op = 2; #10; // 3 * 4
        $finish;
    end
endmodule
