pragma solidity 0.7.6;

import "./IRelayer.sol";
import "./IReceiver.sol";

/**
 * @title IMessageTransmitter
 * @notice Interface for message transmitters, which both relay and receive messages.
 */
interface IMessageTransmitter is IRelayer, IReceiver {

}
