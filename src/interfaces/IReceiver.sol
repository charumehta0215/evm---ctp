pragma solidity 0.7.6;

/**
 * @title IReceiver
 * @notice Receives messages on destination chain and forwards them to IMessageDestinationHandler
 */
interface IReceiver {
    /**
     * @notice Receives an incoming message, validating the header and passing
     * the body to application-specific handler.
     * @param message The message raw bytes
     * @param signature The message signature
     * @return success bool, true if successful
     */
    function receiveMessage(bytes calldata message, bytes calldata signature)
        external
        returns (bool success);
}
