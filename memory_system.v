module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] data0, data1, data2, data3;
    wire store0, store1, store2, store3;
    wire [7:0] mem0, mem1, mem2, mem3;

    demultiplexer #(.WIDTH(8)) data_demux(
        .data(data),
        .sel(addr),
        .A(data0),
        .B(data1),
        .C(data2),
        .D(data3)
    );

    demultiplexer #(.WIDTH(1)) store_demux(
        .data(store),
        .sel(addr),
        .A(store0),
        .B(store1),
        .C(store2),
        .D(store3)
    );

    byte_memory byte0(.data(data0), .store(store0), .memory(mem0));
    byte_memory byte1(.data(data1), .store(store1), .memory(mem1));
    byte_memory byte2(.data(data2), .store(store2), .memory(mem2));
    byte_memory byte3(.data(data3), .store(store3), .memory(mem3));

    multiplexer output_mux(
        .A(mem0),
        .B(mem1),
        .C(mem2),
        .D(mem3),
        .sel(addr),
        .out(memory)
    );

endmodule
