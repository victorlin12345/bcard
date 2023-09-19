// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.3/token/ERC20/ERC20.sol";

contract BlockCard is ERC20 {

    struct PostInfo {
        uint256 UserID;
        string Article;
    }
    
    PostInfo[] public data;

    constructor() ERC20("MyToken", "MTK") {}

    function PostArticle(uint256 userID, string memory article) public {
        require(userID >= 0, "price should greater than 0");
        data.push(PostInfo(userID, article));
    }
}
