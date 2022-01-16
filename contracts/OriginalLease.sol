// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "./SafeMath.sol";

contract OriginalLease {

    using SafeMath for uint;

    address payable lessor;
    address payable lessee;
    uint256 public startDate;
    uint256 public endDate;
    

    function fixedLease(address lessee, uint256 startDate, uint256 endDate, uint256 numOfDays) public {
        startDate = now;
        endDate = now + (numOfDays * 182 days);

        if (lessee )
    }
}

