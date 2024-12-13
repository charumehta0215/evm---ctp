pragma solidity 0.7.6;

import "../../src/interfaces/IMessageHandler.sol";

contract MockTokenMessenger is IMessageHandler {
    // ============ Constructor ============
    constructor() {}

    function handleReceiveMessage(
        uint32 _sourceDomain,
        bytes32 _sender,
        bytes memory _messageBody
    ) external override returns (bool) {
        // revert if _messageBody is 'revert', otherwise do nothing
        require(
            keccak256(_messageBody) != keccak256(bytes("revert")),
            "mock revert"
        );

        if (keccak256(_messageBody) == keccak256(bytes("return false"))) {
            return false;
        }

        return true;
    }
}
