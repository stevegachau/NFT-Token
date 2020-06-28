pragma solidity ^0.5.0;

import "https://github.com/stevegachau/NFT-Token/blob/master/Dependencies.sol";



contract TokenizedTweets is ERC721Full {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor(string memory _name, string memory _symbol) ERC721Full(_name, _symbol) public {
    }

    function tokenizeTweet(address user, uint256 tokenId, string memory created_at, string memory author, string memory tweet, string memory tweetId) public returns (uint256) {
        _tokenIds.increment();

        uint256 newItemId = tokenId;
        _mint(user, newItemId);
        _setTokendate(newItemId, created_at); 
        _setTokenauthor(newItemId, author);
        _setTokentweet(newItemId, tweet);
        _setTokentweetId(newItemId, tweetId);
        
        return newItemId;
    }
}
