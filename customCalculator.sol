// SPDX-License-Identifier: MIT
// license -> solidity version -> contract
pragma solidity ^0.8.24;

contract customCalculator{
    // Variables
    int256 public result;
    // Modifiers
    modifier verifier(int num_){
        if(num_ == 10) revert();
        _;
    }
    // Events
    event resultado(int256 param1_, int256 param2_, int256 param3_, int256 resultado_);
    event resultado_d(int256 element1_, int256 element2_, int256 resultado_);

    // External Functions
    function suma(int256 param1_, int256 param2_, int256 param3_) public returns (int256 resultado_) {
        resultado_ = param1_ + param2_ + param3_;

        emit resultado(param1_, param2_, param3_, resultado_);
    }

    function divisor(int256 element1_, int256 element2_) public returns (int256 resultado_) {
        resultado_ = element1_ / element2_;

        emit resultado_d(element1_, element2_, resultado_);
    }
    // Internal Functions: can not be called by users
    function autoExecution(int256 e1_, int256 e2_, int num_) private verifier (num_) {
        //
    }
}
