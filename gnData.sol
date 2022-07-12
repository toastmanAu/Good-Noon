// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract GnData{
    uint ckb;
    uint btc;
    uint usd;
    uint gnt;

    constructor() payable {
    ckb = 0;
    btc = 0;
    usd = 0;
    gnt = 0;
    }

    function setStats(uint CKB, uint BTC, uint USD, uint GNT)public payable{
        ckb = CKB;
        btc = BTC;
        usd = USD;
        gnt = GNT;
    }

    function getStats() public view returns (uint, uint, uint, uint) {
    return (ckb, btc, usd, gnt);
  }
}
