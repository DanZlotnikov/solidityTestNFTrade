// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Person {

    string private _name = 'test';
    bool isOnTree = false;
    bool isMamaPigNearby = false;
    bool isWithLankry = false;
    int reputation = 100;
    int stupidMoves = 0;
    constructor() {
        
    }
    
    function climbTree(bool up) {
        if (stupidMoves > 3) {
            console.log("Mama pig ate you");
            isWithLankry = false;
            return;
        }
        else if (!isWithLankry) {
            console.log("No trees here man. You're on the bus.");
            stupidMoves = stupidMoves + 1;
            return;
        }
        else if (!isOnTree && up) {
            console.log("ok what now?");
        }
        if (isOnTree && !up) {
            if (isMamaPigNearby) {
                console.log("Mama pig ate you");
            }
            else {
                console.log("man, that was cloooose");
            }
        }
        else {
            if (isWithLankry) {
                console.log("this doesn't make sense");
                stupidMoves = stupidMoves + 1;
            }
        }
    }

    function petBabyPigs() {
        if (stupidMoves > 3) {
            console.log("Mama pig ate you");
            isWithLankry = false;
            return;
        }
        if (!isWithLankry) {
            console.log("No pigs here man. You're on the bus.");
            reputation = reputation - 1;
            return;
        }
        isMamaPigNearby = true;
        console.log("shiiiiet. Mama pig is here");
    }

    function throwBranch() {
        if (stupidMoves > 3) {
            console.log("Mama pig ate you");
            isWithLankry = false;
            return;
        }
        if (!isWithLankry) {
            console.log("No branches here man. You're on the bus.");
            reputation = reputation - 1;
            return;
        }
        else if (!isOnTree) {
            console.log("wtf are you doing");
        }
        else {
            isMamaPigNearby = false;
        }
    }

    /**
     * @dev Returns the person's name
     */
    function name() public view returns (string memory) {
        return _name;
    }

    function startNavigation(string partnerIsLankry) {
        if (!partnerIsLankry) {
            return;
        }    
        else {
            isWithLankry = true;
            console.log("Hey man, look, there's some baby pigs here. Let's take a look.");
        }
    }
}
