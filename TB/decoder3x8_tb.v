# code for decoder3x8_tb.v
  ...
     module decoder3x8_tb();
        reg [2:0]d;
        wire [7:0]y;

        integer i;

        decoder3x8 DUT(d,y);

        task initialize();
                begin
                        d=0;
                end
        endtask

        task stimulus([2:0]a);
                begin
                        d=a;
                end
        endtask

                  task delay();
                               begin
                                  #10;
                               end
                  endtask

        initial
        begin
                initialize;
                for(i=0;i<8;i=i+1)
                begin
                         stimulus(i);
                         delay;
                end
        end

        initial
                $monitor("%b %b",d,y);
        endmodule
...
