pragma solidity 0.7.6;

/**
 * @title IMessageHandler
 * @notice Handles messages on destination domain forwarded from
 * an IReceiver
 */
interface IMessageHandler {
    /**
     * @notice handles an incoming message from a Receiver
     * @param sourceDomain the source domain of the message
     * @param sender the sender of the message
     * @param messageBody The message raw bytes
     * @return success bool, true if successful
     */
    function handleReceiveMessage(
        uint32 sourceDomain,
        bytes32 sender,
        bytes calldata messageBody
    ) external returns (bool);
}
