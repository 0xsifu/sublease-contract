// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "./SafeMath.sol";

contract OriginalLease {

    using SafeMath for uint;

    address payable lessor;
    address payable lessee;
    uint256 public startDate;
    uint256 public endDate;

    uint ETHUSD;
    uint lesseePayment;
    uint leaseBalanceWei;

    struct Lease {
        uint8 numberOfMonths;
        uint8 monthsPaid;
        uint16 monthlyAmountUsd;
        uint16 leaseDepositUsd;
        uint32 leasePaymentWindowSeconds;
        uint64 leasePaymentWindowEnd;
        uint64 depositPaymentWindowEnd;
        bool leaseDepositPaid;
        bool leaseFullyPaid;
    }

    mapping (bytes32 => bool) validIds;
    mapping (address => Lease) tenantLease;

    modifier onlyLessor() {
        require(msg.sender == lessorAddress, "Must be the lessor to create a lease");
        _;
    }
    

    function fixedLease(address lessee, uint256 startDate, uint256 endDate, uint256 numOfDays) public {
        startDate = now;
        endDate = now + (numOfDays * 182 days);


    }
} 

