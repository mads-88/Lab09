# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Madison Hickey & Austin Maples

## Summary

In this lab, we learned how latches work and how they can store values. A latch saves a value when the enable signal is on and holds that value when it is off. We also used this idea to build a small memory system using multiple latches. This helped us understand how digital circuits can store and keep track of data instead of just reacting to inputs.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

We cannot just use structural Verilog because latches require feedback and memory, which can create loops that are not handled well by synthesis tools. Behavioral Verilog allows us to describe the storing behavior in a way that tools like Vivado can correctly implement.

### What is the meaning of always @(*) in a sensitivity block?

It means the block runs whenever any input used inside of it changes. It automatically includes all relevant signals, which makes it easier to write correct combinational logic.

### What importance is memory to digital circuits?

Memory is important because it allows circuits to store values over time. Without memory, circuits could only respond to current inputs and would not be able to remember or keep track of anything.
