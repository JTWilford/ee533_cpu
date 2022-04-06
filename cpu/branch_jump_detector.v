`timescale 1ns / 1ps
module branch_jump_detector (
    input ALU_eq,
    input ALU_lt,
    input ALU_gt,
    input	[3:0]	br_ctrl,// br_ctrl [3:0] {branch_greater,branch_less, branch_eq, branch_neq}
    input jump_ctrl,
    output branch
);
    wire br_eq, br_neq, br_lt, br_gt;
    assign {br_gt, br_lt, br_eq, br_neq} = br_ctrl;
    assign branch = (ALU_eq & br_eq) | (~ALU_eq & br_neq) | (~ALU_lt & br_gt) | (ALU_lt & br_lt) | jump_ctrl;

endmodule //branch_jump_detector


