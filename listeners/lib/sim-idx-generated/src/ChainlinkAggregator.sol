// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function ChainlinkAggregator$Abi() pure returns (Abi memory) {
    return Abi("ChainlinkAggregator");
}
struct ChainlinkAggregator$AcceptPayeeshipFunctionInputs {
    address transmitter;
}

struct ChainlinkAggregator$AddAccessFunctionInputs {
    address _user;
}

struct ChainlinkAggregator$CheckEnabledFunctionOutputs {
    bool outArg0;
}

struct ChainlinkAggregator$DecimalsFunctionOutputs {
    uint8 outArg0;
}

struct ChainlinkAggregator$DescriptionFunctionOutputs {
    string outArg0;
}

struct ChainlinkAggregator$GetAnswerFunctionInputs {
    uint256 _roundId;
}

struct ChainlinkAggregator$GetAnswerFunctionOutputs {
    int256 outArg0;
}

struct ChainlinkAggregator$GetBillingFunctionOutputs {
    uint32 maximumGasPriceGwei;
    uint32 reasonableGasPriceGwei;
    uint32 observationPaymentGjuels;
    uint32 transmissionPaymentGjuels;
    uint24 accountingGas;
}

struct ChainlinkAggregator$GetBillingAccessControllerFunctionOutputs {
    address outArg0;
}

struct ChainlinkAggregator$GetLinkTokenFunctionOutputs {
    address linkToken;
}

struct ChainlinkAggregator$GetRequesterAccessControllerFunctionOutputs {
    address outArg0;
}

struct ChainlinkAggregator$GetRoundDataFunctionInputs {
    uint80 _roundId;
}

struct ChainlinkAggregator$GetRoundDataFunctionOutputs {
    uint80 roundId;
    int256 answer;
    uint256 startedAt;
    uint256 updatedAt;
    uint80 answeredInRound;
}

struct ChainlinkAggregator$GetTimestampFunctionInputs {
    uint256 _roundId;
}

struct ChainlinkAggregator$GetTimestampFunctionOutputs {
    uint256 outArg0;
}

struct ChainlinkAggregator$GetTransmittersFunctionOutputs {
    address[] outArg0;
}

struct ChainlinkAggregator$GetValidatorConfigFunctionOutputs {
    address validator;
    uint32 gasLimit;
}

struct ChainlinkAggregator$HasAccessFunctionInputs {
    address _user;
    bytes _calldata;
}

struct ChainlinkAggregator$HasAccessFunctionOutputs {
    bool outArg0;
}

struct ChainlinkAggregator$LatestAnswerFunctionOutputs {
    int256 outArg0;
}

struct ChainlinkAggregator$LatestConfigDetailsFunctionOutputs {
    uint32 configCount;
    uint32 blockNumber;
    bytes32 configDigest;
}

struct ChainlinkAggregator$LatestConfigDigestAndEpochFunctionOutputs {
    bool scanLogs;
    bytes32 configDigest;
    uint32 epoch;
}

struct ChainlinkAggregator$LatestRoundFunctionOutputs {
    uint256 outArg0;
}

struct ChainlinkAggregator$LatestRoundDataFunctionOutputs {
    uint80 roundId;
    int256 answer;
    uint256 startedAt;
    uint256 updatedAt;
    uint80 answeredInRound;
}

struct ChainlinkAggregator$LatestTimestampFunctionOutputs {
    uint256 outArg0;
}

struct ChainlinkAggregator$LatestTransmissionDetailsFunctionOutputs {
    bytes32 configDigest;
    uint32 epoch;
    uint8 round;
    int192 latestAnswer_;
    uint64 latestTimestamp_;
}

struct ChainlinkAggregator$LinkAvailableForPaymentFunctionOutputs {
    int256 availableBalance;
}

struct ChainlinkAggregator$MaxAnswerFunctionOutputs {
    int192 outArg0;
}

struct ChainlinkAggregator$MinAnswerFunctionOutputs {
    int192 outArg0;
}

struct ChainlinkAggregator$OracleObservationCountFunctionInputs {
    address transmitterAddress;
}

struct ChainlinkAggregator$OracleObservationCountFunctionOutputs {
    uint32 outArg0;
}

struct ChainlinkAggregator$OwedPaymentFunctionInputs {
    address transmitterAddress;
}

struct ChainlinkAggregator$OwedPaymentFunctionOutputs {
    uint256 outArg0;
}

struct ChainlinkAggregator$OwnerFunctionOutputs {
    address outArg0;
}

struct ChainlinkAggregator$RemoveAccessFunctionInputs {
    address _user;
}

struct ChainlinkAggregator$RequestNewRoundFunctionOutputs {
    uint80 outArg0;
}

struct ChainlinkAggregator$SetBillingFunctionInputs {
    uint32 maximumGasPriceGwei;
    uint32 reasonableGasPriceGwei;
    uint32 observationPaymentGjuels;
    uint32 transmissionPaymentGjuels;
    uint24 accountingGas;
}

struct ChainlinkAggregator$SetBillingAccessControllerFunctionInputs {
    address _billingAccessController;
}

struct ChainlinkAggregator$SetConfigFunctionInputs {
    address[] signers;
    address[] transmitters;
    uint8 f;
    bytes onchainConfig;
    uint64 offchainConfigVersion;
    bytes offchainConfig;
}

struct ChainlinkAggregator$SetLinkTokenFunctionInputs {
    address linkToken;
    address recipient;
}

struct ChainlinkAggregator$SetPayeesFunctionInputs {
    address[] transmitters;
    address[] payees;
}

struct ChainlinkAggregator$SetRequesterAccessControllerFunctionInputs {
    address requesterAccessController;
}

struct ChainlinkAggregator$SetValidatorConfigFunctionInputs {
    address newValidator;
    uint32 newGasLimit;
}

struct ChainlinkAggregator$TransferOwnershipFunctionInputs {
    address to;
}

struct ChainlinkAggregator$TransferPayeeshipFunctionInputs {
    address transmitter;
    address proposed;
}

struct ChainlinkAggregator$TransmitFunctionInputs {
    bytes32[3] reportContext;
    bytes report;
    bytes32[] rs;
    bytes32[] ss;
    bytes32 rawVs;
}

struct ChainlinkAggregator$TypeAndVersionFunctionOutputs {
    string outArg0;
}

struct ChainlinkAggregator$VersionFunctionOutputs {
    uint256 outArg0;
}

struct ChainlinkAggregator$WithdrawFundsFunctionInputs {
    address recipient;
    uint256 amount;
}

struct ChainlinkAggregator$WithdrawPaymentFunctionInputs {
    address transmitter;
}

struct ChainlinkAggregator$AddedAccessEventParams {
    address user;
}

struct ChainlinkAggregator$AnswerUpdatedEventParams {
    int256 current;
    uint256 roundId;
    uint256 updatedAt;
}

struct ChainlinkAggregator$BillingAccessControllerSetEventParams {
    address old;
    address current;
}

struct ChainlinkAggregator$BillingSetEventParams {
    uint32 maximumGasPriceGwei;
    uint32 reasonableGasPriceGwei;
    uint32 observationPaymentGjuels;
    uint32 transmissionPaymentGjuels;
    uint24 accountingGas;
}

struct ChainlinkAggregator$ConfigSetEventParams {
    uint32 previousConfigBlockNumber;
    bytes32 configDigest;
    uint64 configCount;
    address[] signers;
    address[] transmitters;
    uint8 f;
    bytes onchainConfig;
    uint64 offchainConfigVersion;
    bytes offchainConfig;
}

struct ChainlinkAggregator$LinkTokenSetEventParams {
    address oldLinkToken;
    address newLinkToken;
}

struct ChainlinkAggregator$NewRoundEventParams {
    uint256 roundId;
    address startedBy;
    uint256 startedAt;
}

struct ChainlinkAggregator$NewTransmissionEventParams {
    uint32 aggregatorRoundId;
    int192 answer;
    address transmitter;
    uint32 observationsTimestamp;
    int192[] observations;
    bytes observers;
    int192 juelsPerFeeCoin;
    bytes32 configDigest;
    uint40 epochAndRound;
}

struct ChainlinkAggregator$OraclePaidEventParams {
    address transmitter;
    address payee;
    uint256 amount;
    address linkToken;
}

struct ChainlinkAggregator$OwnershipTransferRequestedEventParams {
    address from;
    address to;
}

struct ChainlinkAggregator$OwnershipTransferredEventParams {
    address from;
    address to;
}

struct ChainlinkAggregator$PayeeshipTransferRequestedEventParams {
    address transmitter;
    address current;
    address proposed;
}

struct ChainlinkAggregator$PayeeshipTransferredEventParams {
    address transmitter;
    address previous;
    address current;
}

struct ChainlinkAggregator$RemovedAccessEventParams {
    address user;
}

struct ChainlinkAggregator$RequesterAccessControllerSetEventParams {
    address old;
    address current;
}

struct ChainlinkAggregator$RoundRequestedEventParams {
    address requester;
    bytes32 configDigest;
    uint32 epoch;
    uint8 round;
}

struct ChainlinkAggregator$TransmittedEventParams {
    bytes32 configDigest;
    uint32 epoch;
}

struct ChainlinkAggregator$ValidatorConfigSetEventParams {
    address previousValidator;
    uint32 previousGasLimit;
    address currentValidator;
    uint32 currentGasLimit;
}

abstract contract ChainlinkAggregator$OnAddedAccessEvent {
    function onAddedAccessEvent(EventContext memory ctx, ChainlinkAggregator$AddedAccessEventParams memory inputs) virtual external;

    function triggerOnAddedAccessEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x87286ad1f399c8e82bf0c4ef4fcdc570ea2e1e92176e5c848b6413545b885db4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAddedAccessEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnAnswerUpdatedEvent {
    function onAnswerUpdatedEvent(EventContext memory ctx, ChainlinkAggregator$AnswerUpdatedEventParams memory inputs) virtual external;

    function triggerOnAnswerUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x0559884fd3a460db3073b7fc896cc77986f16e378210ded43186175bf646fc5f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAnswerUpdatedEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnBillingAccessControllerSetEvent {
    function onBillingAccessControllerSetEvent(EventContext memory ctx, ChainlinkAggregator$BillingAccessControllerSetEventParams memory inputs) virtual external;

    function triggerOnBillingAccessControllerSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x793cb73064f3c8cde7e187ae515511e6e56d1ee89bf08b82fa60fb70f8d48912),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBillingAccessControllerSetEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnBillingSetEvent {
    function onBillingSetEvent(EventContext memory ctx, ChainlinkAggregator$BillingSetEventParams memory inputs) virtual external;

    function triggerOnBillingSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x0bf184bf1bba9699114bdceddaf338a1b364252c5e497cc01918dde92031713f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBillingSetEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnCheckAccessDisabledEvent {
    function onCheckAccessDisabledEvent(EventContext memory ctx) virtual external;

    function triggerOnCheckAccessDisabledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x3be8a977a014527b50ae38adda80b56911c267328965c98ddc385d248f539638),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckAccessDisabledEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnCheckAccessEnabledEvent {
    function onCheckAccessEnabledEvent(EventContext memory ctx) virtual external;

    function triggerOnCheckAccessEnabledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0xaebf329500988c6488a0074e5a0a9ff304561fc5c6fc877aeb1d59c8282c3480),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckAccessEnabledEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnConfigSetEvent {
    function onConfigSetEvent(EventContext memory ctx, ChainlinkAggregator$ConfigSetEventParams memory inputs) virtual external;

    function triggerOnConfigSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x1591690b8638f5fb2dbec82ac741805ac5da8b45dc5263f4875b0496fdce4e05),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConfigSetEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnLinkTokenSetEvent {
    function onLinkTokenSetEvent(EventContext memory ctx, ChainlinkAggregator$LinkTokenSetEventParams memory inputs) virtual external;

    function triggerOnLinkTokenSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x4966a50c93f855342ccf6c5c0d358b85b91335b2acedc7da0932f691f351711a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLinkTokenSetEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnNewRoundEvent {
    function onNewRoundEvent(EventContext memory ctx, ChainlinkAggregator$NewRoundEventParams memory inputs) virtual external;

    function triggerOnNewRoundEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x0109fc6f55cf40689f02fbaad7af7fe7bbac8a3d2186600afc7d3e10cac60271),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNewRoundEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnNewTransmissionEvent {
    function onNewTransmissionEvent(EventContext memory ctx, ChainlinkAggregator$NewTransmissionEventParams memory inputs) virtual external;

    function triggerOnNewTransmissionEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0xc797025feeeaf2cd924c99e9205acb8ec04d5cad21c41ce637a38fb6dee6016a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNewTransmissionEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnOraclePaidEvent {
    function onOraclePaidEvent(EventContext memory ctx, ChainlinkAggregator$OraclePaidEventParams memory inputs) virtual external;

    function triggerOnOraclePaidEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0xd0b1dac935d85bd54cf0a33b0d41d39f8cf53a968465fc7ea2377526b8ac712c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOraclePaidEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnOwnershipTransferRequestedEvent {
    function onOwnershipTransferRequestedEvent(EventContext memory ctx, ChainlinkAggregator$OwnershipTransferRequestedEventParams memory inputs) virtual external;

    function triggerOnOwnershipTransferRequestedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0xed8889f560326eb138920d842192f0eb3dd22b4f139c87a2c57538e05bae1278),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnershipTransferRequestedEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnOwnershipTransferredEvent {
    function onOwnershipTransferredEvent(EventContext memory ctx, ChainlinkAggregator$OwnershipTransferredEventParams memory inputs) virtual external;

    function triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnPayeeshipTransferRequestedEvent {
    function onPayeeshipTransferRequestedEvent(EventContext memory ctx, ChainlinkAggregator$PayeeshipTransferRequestedEventParams memory inputs) virtual external;

    function triggerOnPayeeshipTransferRequestedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x84f7c7c80bb8ed2279b4aab5f61cd05e6374073d38f46d7f32de8c30e9e38367),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPayeeshipTransferRequestedEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnPayeeshipTransferredEvent {
    function onPayeeshipTransferredEvent(EventContext memory ctx, ChainlinkAggregator$PayeeshipTransferredEventParams memory inputs) virtual external;

    function triggerOnPayeeshipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x78af32efdcad432315431e9b03d27e6cd98fb79c405fdc5af7c1714d9c0f75b3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPayeeshipTransferredEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnRemovedAccessEvent {
    function onRemovedAccessEvent(EventContext memory ctx, ChainlinkAggregator$RemovedAccessEventParams memory inputs) virtual external;

    function triggerOnRemovedAccessEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x3d68a6fce901d20453d1a7aa06bf3950302a735948037deb182a8db66df2a0d1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRemovedAccessEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnRequesterAccessControllerSetEvent {
    function onRequesterAccessControllerSetEvent(EventContext memory ctx, ChainlinkAggregator$RequesterAccessControllerSetEventParams memory inputs) virtual external;

    function triggerOnRequesterAccessControllerSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x27b89aede8b560578baaa25ee5ce3852c5eecad1e114b941bbd89e1eb4bae634),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequesterAccessControllerSetEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnRoundRequestedEvent {
    function onRoundRequestedEvent(EventContext memory ctx, ChainlinkAggregator$RoundRequestedEventParams memory inputs) virtual external;

    function triggerOnRoundRequestedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0x41e3990591fd372502daa15842da15bc7f41c75309ab3ff4f56f1848c178825c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRoundRequestedEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnTransmittedEvent {
    function onTransmittedEvent(EventContext memory ctx, ChainlinkAggregator$TransmittedEventParams memory inputs) virtual external;

    function triggerOnTransmittedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0xb04e63db38c49950639fa09d29872f21f5d49d614f3a969d8adf3d4b52e41a62),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransmittedEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnValidatorConfigSetEvent {
    function onValidatorConfigSetEvent(EventContext memory ctx, ChainlinkAggregator$ValidatorConfigSetEventParams memory inputs) virtual external;

    function triggerOnValidatorConfigSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes32(0xb04e3a37abe9c0fcdfebdeae019a8e2b12ddf53f5d55ffb0caccc1bedaca1541),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onValidatorConfigSetEvent.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnAcceptOwnershipFunction {
    function onAcceptOwnershipFunction(FunctionContext memory ctx) virtual external;

    function triggerOnAcceptOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x79ba5097),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAcceptOwnershipFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreAcceptOwnershipFunction {
    function preAcceptOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAcceptOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x79ba5097),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAcceptOwnershipFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnAcceptPayeeshipFunction {
    function onAcceptPayeeshipFunction(FunctionContext memory ctx, ChainlinkAggregator$AcceptPayeeshipFunctionInputs memory inputs) virtual external;

    function triggerOnAcceptPayeeshipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xb121e147),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAcceptPayeeshipFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreAcceptPayeeshipFunction {
    function preAcceptPayeeshipFunction(PreFunctionContext memory ctx, ChainlinkAggregator$AcceptPayeeshipFunctionInputs memory inputs) virtual external;

    function triggerPreAcceptPayeeshipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xb121e147),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAcceptPayeeshipFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnAddAccessFunction {
    function onAddAccessFunction(FunctionContext memory ctx, ChainlinkAggregator$AddAccessFunctionInputs memory inputs) virtual external;

    function triggerOnAddAccessFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xa118f249),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAddAccessFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreAddAccessFunction {
    function preAddAccessFunction(PreFunctionContext memory ctx, ChainlinkAggregator$AddAccessFunctionInputs memory inputs) virtual external;

    function triggerPreAddAccessFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xa118f249),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAddAccessFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnCheckEnabledFunction {
    function onCheckEnabledFunction(FunctionContext memory ctx, ChainlinkAggregator$CheckEnabledFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xdc7f0124),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckEnabledFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreCheckEnabledFunction {
    function preCheckEnabledFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCheckEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xdc7f0124),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckEnabledFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnDecimalsFunction {
    function onDecimalsFunction(FunctionContext memory ctx, ChainlinkAggregator$DecimalsFunctionOutputs memory outputs) virtual external;

    function triggerOnDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDecimalsFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreDecimalsFunction {
    function preDecimalsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDecimalsFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnDescriptionFunction {
    function onDescriptionFunction(FunctionContext memory ctx, ChainlinkAggregator$DescriptionFunctionOutputs memory outputs) virtual external;

    function triggerOnDescriptionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x7284e416),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDescriptionFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreDescriptionFunction {
    function preDescriptionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDescriptionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x7284e416),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDescriptionFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnDisableAccessCheckFunction {
    function onDisableAccessCheckFunction(FunctionContext memory ctx) virtual external;

    function triggerOnDisableAccessCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x0a756983),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDisableAccessCheckFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreDisableAccessCheckFunction {
    function preDisableAccessCheckFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDisableAccessCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x0a756983),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDisableAccessCheckFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnEnableAccessCheckFunction {
    function onEnableAccessCheckFunction(FunctionContext memory ctx) virtual external;

    function triggerOnEnableAccessCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8038e4a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEnableAccessCheckFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreEnableAccessCheckFunction {
    function preEnableAccessCheckFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEnableAccessCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8038e4a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEnableAccessCheckFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnGetAnswerFunction {
    function onGetAnswerFunction(FunctionContext memory ctx, ChainlinkAggregator$GetAnswerFunctionInputs memory inputs, ChainlinkAggregator$GetAnswerFunctionOutputs memory outputs) virtual external;

    function triggerOnGetAnswerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xb5ab58dc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetAnswerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreGetAnswerFunction {
    function preGetAnswerFunction(PreFunctionContext memory ctx, ChainlinkAggregator$GetAnswerFunctionInputs memory inputs) virtual external;

    function triggerPreGetAnswerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xb5ab58dc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetAnswerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnGetBillingFunction {
    function onGetBillingFunction(FunctionContext memory ctx, ChainlinkAggregator$GetBillingFunctionOutputs memory outputs) virtual external;

    function triggerOnGetBillingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x29937268),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetBillingFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreGetBillingFunction {
    function preGetBillingFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetBillingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x29937268),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetBillingFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnGetBillingAccessControllerFunction {
    function onGetBillingAccessControllerFunction(FunctionContext memory ctx, ChainlinkAggregator$GetBillingAccessControllerFunctionOutputs memory outputs) virtual external;

    function triggerOnGetBillingAccessControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xc4c92b37),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetBillingAccessControllerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreGetBillingAccessControllerFunction {
    function preGetBillingAccessControllerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetBillingAccessControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xc4c92b37),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetBillingAccessControllerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnGetLinkTokenFunction {
    function onGetLinkTokenFunction(FunctionContext memory ctx, ChainlinkAggregator$GetLinkTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnGetLinkTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xe76d5168),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetLinkTokenFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreGetLinkTokenFunction {
    function preGetLinkTokenFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetLinkTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xe76d5168),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetLinkTokenFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnGetRequesterAccessControllerFunction {
    function onGetRequesterAccessControllerFunction(FunctionContext memory ctx, ChainlinkAggregator$GetRequesterAccessControllerFunctionOutputs memory outputs) virtual external;

    function triggerOnGetRequesterAccessControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xdaffc4b5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetRequesterAccessControllerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreGetRequesterAccessControllerFunction {
    function preGetRequesterAccessControllerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetRequesterAccessControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xdaffc4b5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetRequesterAccessControllerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnGetRoundDataFunction {
    function onGetRoundDataFunction(FunctionContext memory ctx, ChainlinkAggregator$GetRoundDataFunctionInputs memory inputs, ChainlinkAggregator$GetRoundDataFunctionOutputs memory outputs) virtual external;

    function triggerOnGetRoundDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x9a6fc8f5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetRoundDataFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreGetRoundDataFunction {
    function preGetRoundDataFunction(PreFunctionContext memory ctx, ChainlinkAggregator$GetRoundDataFunctionInputs memory inputs) virtual external;

    function triggerPreGetRoundDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x9a6fc8f5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetRoundDataFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnGetTimestampFunction {
    function onGetTimestampFunction(FunctionContext memory ctx, ChainlinkAggregator$GetTimestampFunctionInputs memory inputs, ChainlinkAggregator$GetTimestampFunctionOutputs memory outputs) virtual external;

    function triggerOnGetTimestampFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xb633620c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetTimestampFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreGetTimestampFunction {
    function preGetTimestampFunction(PreFunctionContext memory ctx, ChainlinkAggregator$GetTimestampFunctionInputs memory inputs) virtual external;

    function triggerPreGetTimestampFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xb633620c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetTimestampFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnGetTransmittersFunction {
    function onGetTransmittersFunction(FunctionContext memory ctx, ChainlinkAggregator$GetTransmittersFunctionOutputs memory outputs) virtual external;

    function triggerOnGetTransmittersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x666cab8d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetTransmittersFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreGetTransmittersFunction {
    function preGetTransmittersFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetTransmittersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x666cab8d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetTransmittersFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnGetValidatorConfigFunction {
    function onGetValidatorConfigFunction(FunctionContext memory ctx, ChainlinkAggregator$GetValidatorConfigFunctionOutputs memory outputs) virtual external;

    function triggerOnGetValidatorConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x9bd2c0b1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetValidatorConfigFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreGetValidatorConfigFunction {
    function preGetValidatorConfigFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetValidatorConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x9bd2c0b1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetValidatorConfigFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnHasAccessFunction {
    function onHasAccessFunction(FunctionContext memory ctx, ChainlinkAggregator$HasAccessFunctionInputs memory inputs, ChainlinkAggregator$HasAccessFunctionOutputs memory outputs) virtual external;

    function triggerOnHasAccessFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x6b14daf8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onHasAccessFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreHasAccessFunction {
    function preHasAccessFunction(PreFunctionContext memory ctx, ChainlinkAggregator$HasAccessFunctionInputs memory inputs) virtual external;

    function triggerPreHasAccessFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x6b14daf8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preHasAccessFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnLatestAnswerFunction {
    function onLatestAnswerFunction(FunctionContext memory ctx, ChainlinkAggregator$LatestAnswerFunctionOutputs memory outputs) virtual external;

    function triggerOnLatestAnswerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x50d25bcd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLatestAnswerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreLatestAnswerFunction {
    function preLatestAnswerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLatestAnswerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x50d25bcd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLatestAnswerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnLatestConfigDetailsFunction {
    function onLatestConfigDetailsFunction(FunctionContext memory ctx, ChainlinkAggregator$LatestConfigDetailsFunctionOutputs memory outputs) virtual external;

    function triggerOnLatestConfigDetailsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x81ff7048),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLatestConfigDetailsFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreLatestConfigDetailsFunction {
    function preLatestConfigDetailsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLatestConfigDetailsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x81ff7048),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLatestConfigDetailsFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnLatestConfigDigestAndEpochFunction {
    function onLatestConfigDigestAndEpochFunction(FunctionContext memory ctx, ChainlinkAggregator$LatestConfigDigestAndEpochFunctionOutputs memory outputs) virtual external;

    function triggerOnLatestConfigDigestAndEpochFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xafcb95d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLatestConfigDigestAndEpochFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreLatestConfigDigestAndEpochFunction {
    function preLatestConfigDigestAndEpochFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLatestConfigDigestAndEpochFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xafcb95d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLatestConfigDigestAndEpochFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnLatestRoundFunction {
    function onLatestRoundFunction(FunctionContext memory ctx, ChainlinkAggregator$LatestRoundFunctionOutputs memory outputs) virtual external;

    function triggerOnLatestRoundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x668a0f02),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLatestRoundFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreLatestRoundFunction {
    function preLatestRoundFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLatestRoundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x668a0f02),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLatestRoundFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnLatestRoundDataFunction {
    function onLatestRoundDataFunction(FunctionContext memory ctx, ChainlinkAggregator$LatestRoundDataFunctionOutputs memory outputs) virtual external;

    function triggerOnLatestRoundDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xfeaf968c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLatestRoundDataFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreLatestRoundDataFunction {
    function preLatestRoundDataFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLatestRoundDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xfeaf968c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLatestRoundDataFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnLatestTimestampFunction {
    function onLatestTimestampFunction(FunctionContext memory ctx, ChainlinkAggregator$LatestTimestampFunctionOutputs memory outputs) virtual external;

    function triggerOnLatestTimestampFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8205bf6a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLatestTimestampFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreLatestTimestampFunction {
    function preLatestTimestampFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLatestTimestampFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8205bf6a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLatestTimestampFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnLatestTransmissionDetailsFunction {
    function onLatestTransmissionDetailsFunction(FunctionContext memory ctx, ChainlinkAggregator$LatestTransmissionDetailsFunctionOutputs memory outputs) virtual external;

    function triggerOnLatestTransmissionDetailsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xe5fe4577),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLatestTransmissionDetailsFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreLatestTransmissionDetailsFunction {
    function preLatestTransmissionDetailsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLatestTransmissionDetailsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xe5fe4577),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLatestTransmissionDetailsFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnLinkAvailableForPaymentFunction {
    function onLinkAvailableForPaymentFunction(FunctionContext memory ctx, ChainlinkAggregator$LinkAvailableForPaymentFunctionOutputs memory outputs) virtual external;

    function triggerOnLinkAvailableForPaymentFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xd09dc339),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLinkAvailableForPaymentFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreLinkAvailableForPaymentFunction {
    function preLinkAvailableForPaymentFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLinkAvailableForPaymentFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xd09dc339),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLinkAvailableForPaymentFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnMaxAnswerFunction {
    function onMaxAnswerFunction(FunctionContext memory ctx, ChainlinkAggregator$MaxAnswerFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxAnswerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x70da2f67),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxAnswerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreMaxAnswerFunction {
    function preMaxAnswerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMaxAnswerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x70da2f67),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxAnswerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnMinAnswerFunction {
    function onMinAnswerFunction(FunctionContext memory ctx, ChainlinkAggregator$MinAnswerFunctionOutputs memory outputs) virtual external;

    function triggerOnMinAnswerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x22adbc78),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMinAnswerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreMinAnswerFunction {
    function preMinAnswerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMinAnswerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x22adbc78),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMinAnswerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnOracleObservationCountFunction {
    function onOracleObservationCountFunction(FunctionContext memory ctx, ChainlinkAggregator$OracleObservationCountFunctionInputs memory inputs, ChainlinkAggregator$OracleObservationCountFunctionOutputs memory outputs) virtual external;

    function triggerOnOracleObservationCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xe4902f82),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOracleObservationCountFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreOracleObservationCountFunction {
    function preOracleObservationCountFunction(PreFunctionContext memory ctx, ChainlinkAggregator$OracleObservationCountFunctionInputs memory inputs) virtual external;

    function triggerPreOracleObservationCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xe4902f82),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOracleObservationCountFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnOwedPaymentFunction {
    function onOwedPaymentFunction(FunctionContext memory ctx, ChainlinkAggregator$OwedPaymentFunctionInputs memory inputs, ChainlinkAggregator$OwedPaymentFunctionOutputs memory outputs) virtual external;

    function triggerOnOwedPaymentFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x0eafb25b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwedPaymentFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreOwedPaymentFunction {
    function preOwedPaymentFunction(PreFunctionContext memory ctx, ChainlinkAggregator$OwedPaymentFunctionInputs memory inputs) virtual external;

    function triggerPreOwedPaymentFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x0eafb25b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOwedPaymentFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnOwnerFunction {
    function onOwnerFunction(FunctionContext memory ctx, ChainlinkAggregator$OwnerFunctionOutputs memory outputs) virtual external;

    function triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreOwnerFunction {
    function preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOwnerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnRemoveAccessFunction {
    function onRemoveAccessFunction(FunctionContext memory ctx, ChainlinkAggregator$RemoveAccessFunctionInputs memory inputs) virtual external;

    function triggerOnRemoveAccessFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8823da6c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRemoveAccessFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreRemoveAccessFunction {
    function preRemoveAccessFunction(PreFunctionContext memory ctx, ChainlinkAggregator$RemoveAccessFunctionInputs memory inputs) virtual external;

    function triggerPreRemoveAccessFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8823da6c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRemoveAccessFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnRequestNewRoundFunction {
    function onRequestNewRoundFunction(FunctionContext memory ctx, ChainlinkAggregator$RequestNewRoundFunctionOutputs memory outputs) virtual external;

    function triggerOnRequestNewRoundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x98e5b12a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequestNewRoundFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreRequestNewRoundFunction {
    function preRequestNewRoundFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRequestNewRoundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x98e5b12a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRequestNewRoundFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnSetBillingFunction {
    function onSetBillingFunction(FunctionContext memory ctx, ChainlinkAggregator$SetBillingFunctionInputs memory inputs) virtual external;

    function triggerOnSetBillingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x643dc105),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetBillingFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreSetBillingFunction {
    function preSetBillingFunction(PreFunctionContext memory ctx, ChainlinkAggregator$SetBillingFunctionInputs memory inputs) virtual external;

    function triggerPreSetBillingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x643dc105),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetBillingFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnSetBillingAccessControllerFunction {
    function onSetBillingAccessControllerFunction(FunctionContext memory ctx, ChainlinkAggregator$SetBillingAccessControllerFunctionInputs memory inputs) virtual external;

    function triggerOnSetBillingAccessControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xfbffd2c1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetBillingAccessControllerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreSetBillingAccessControllerFunction {
    function preSetBillingAccessControllerFunction(PreFunctionContext memory ctx, ChainlinkAggregator$SetBillingAccessControllerFunctionInputs memory inputs) virtual external;

    function triggerPreSetBillingAccessControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xfbffd2c1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetBillingAccessControllerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnSetConfigFunction {
    function onSetConfigFunction(FunctionContext memory ctx, ChainlinkAggregator$SetConfigFunctionInputs memory inputs) virtual external;

    function triggerOnSetConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xe3d0e712),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetConfigFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreSetConfigFunction {
    function preSetConfigFunction(PreFunctionContext memory ctx, ChainlinkAggregator$SetConfigFunctionInputs memory inputs) virtual external;

    function triggerPreSetConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xe3d0e712),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetConfigFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnSetLinkTokenFunction {
    function onSetLinkTokenFunction(FunctionContext memory ctx, ChainlinkAggregator$SetLinkTokenFunctionInputs memory inputs) virtual external;

    function triggerOnSetLinkTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x4fb17470),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetLinkTokenFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreSetLinkTokenFunction {
    function preSetLinkTokenFunction(PreFunctionContext memory ctx, ChainlinkAggregator$SetLinkTokenFunctionInputs memory inputs) virtual external;

    function triggerPreSetLinkTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x4fb17470),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetLinkTokenFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnSetPayeesFunction {
    function onSetPayeesFunction(FunctionContext memory ctx, ChainlinkAggregator$SetPayeesFunctionInputs memory inputs) virtual external;

    function triggerOnSetPayeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x9c849b30),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetPayeesFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreSetPayeesFunction {
    function preSetPayeesFunction(PreFunctionContext memory ctx, ChainlinkAggregator$SetPayeesFunctionInputs memory inputs) virtual external;

    function triggerPreSetPayeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x9c849b30),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetPayeesFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnSetRequesterAccessControllerFunction {
    function onSetRequesterAccessControllerFunction(FunctionContext memory ctx, ChainlinkAggregator$SetRequesterAccessControllerFunctionInputs memory inputs) virtual external;

    function triggerOnSetRequesterAccessControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x9e3ceeab),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetRequesterAccessControllerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreSetRequesterAccessControllerFunction {
    function preSetRequesterAccessControllerFunction(PreFunctionContext memory ctx, ChainlinkAggregator$SetRequesterAccessControllerFunctionInputs memory inputs) virtual external;

    function triggerPreSetRequesterAccessControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x9e3ceeab),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetRequesterAccessControllerFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnSetValidatorConfigFunction {
    function onSetValidatorConfigFunction(FunctionContext memory ctx, ChainlinkAggregator$SetValidatorConfigFunctionInputs memory inputs) virtual external;

    function triggerOnSetValidatorConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xeb457163),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetValidatorConfigFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreSetValidatorConfigFunction {
    function preSetValidatorConfigFunction(PreFunctionContext memory ctx, ChainlinkAggregator$SetValidatorConfigFunctionInputs memory inputs) virtual external;

    function triggerPreSetValidatorConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xeb457163),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetValidatorConfigFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnTransferOwnershipFunction {
    function onTransferOwnershipFunction(FunctionContext memory ctx, ChainlinkAggregator$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferOwnershipFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreTransferOwnershipFunction {
    function preTransferOwnershipFunction(PreFunctionContext memory ctx, ChainlinkAggregator$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferOwnershipFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnTransferPayeeshipFunction {
    function onTransferPayeeshipFunction(FunctionContext memory ctx, ChainlinkAggregator$TransferPayeeshipFunctionInputs memory inputs) virtual external;

    function triggerOnTransferPayeeshipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xeb5dcd6c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferPayeeshipFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreTransferPayeeshipFunction {
    function preTransferPayeeshipFunction(PreFunctionContext memory ctx, ChainlinkAggregator$TransferPayeeshipFunctionInputs memory inputs) virtual external;

    function triggerPreTransferPayeeshipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xeb5dcd6c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferPayeeshipFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnTransmitFunction {
    function onTransmitFunction(FunctionContext memory ctx, ChainlinkAggregator$TransmitFunctionInputs memory inputs) virtual external;

    function triggerOnTransmitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xb1dc65a4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransmitFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreTransmitFunction {
    function preTransmitFunction(PreFunctionContext memory ctx, ChainlinkAggregator$TransmitFunctionInputs memory inputs) virtual external;

    function triggerPreTransmitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xb1dc65a4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransmitFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnTypeAndVersionFunction {
    function onTypeAndVersionFunction(FunctionContext memory ctx, ChainlinkAggregator$TypeAndVersionFunctionOutputs memory outputs) virtual external;

    function triggerOnTypeAndVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x181f5a77),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTypeAndVersionFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreTypeAndVersionFunction {
    function preTypeAndVersionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTypeAndVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x181f5a77),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTypeAndVersionFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnVersionFunction {
    function onVersionFunction(FunctionContext memory ctx, ChainlinkAggregator$VersionFunctionOutputs memory outputs) virtual external;

    function triggerOnVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVersionFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreVersionFunction {
    function preVersionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVersionFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnWithdrawFundsFunction {
    function onWithdrawFundsFunction(FunctionContext memory ctx, ChainlinkAggregator$WithdrawFundsFunctionInputs memory inputs) virtual external;

    function triggerOnWithdrawFundsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xc1075329),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawFundsFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreWithdrawFundsFunction {
    function preWithdrawFundsFunction(PreFunctionContext memory ctx, ChainlinkAggregator$WithdrawFundsFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawFundsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0xc1075329),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawFundsFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$OnWithdrawPaymentFunction {
    function onWithdrawPaymentFunction(FunctionContext memory ctx, ChainlinkAggregator$WithdrawPaymentFunctionInputs memory inputs) virtual external;

    function triggerOnWithdrawPaymentFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8ac28d5a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawPaymentFunction.selector
        });
    }
}

abstract contract ChainlinkAggregator$PreWithdrawPaymentFunction {
    function preWithdrawPaymentFunction(PreFunctionContext memory ctx, ChainlinkAggregator$WithdrawPaymentFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawPaymentFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ChainlinkAggregator",
            selector: bytes4(0x8ac28d5a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawPaymentFunction.selector
        });
    }
}


struct ChainlinkAggregator$EmitAllEvents$AddedAccess {
  address user;
}

struct ChainlinkAggregator$EmitAllEvents$AnswerUpdated {
  int256 current;
  uint256 roundId;
  uint256 updatedAt;
}

struct ChainlinkAggregator$EmitAllEvents$BillingAccessControllerSet {
  address old;
  address current;
}

struct ChainlinkAggregator$EmitAllEvents$BillingSet {
  uint32 maximumGasPriceGwei;
  uint32 reasonableGasPriceGwei;
  uint32 observationPaymentGjuels;
  uint32 transmissionPaymentGjuels;
  uint24 accountingGas;
}

struct ChainlinkAggregator$EmitAllEvents$ConfigSet {
  uint32 previousConfigBlockNumber;
  bytes32 configDigest;
  uint64 configCount;
  address[] signers;
  address[] transmitters;
  uint8 f;
  bytes onchainConfig;
  uint64 offchainConfigVersion;
  bytes offchainConfig;
}

struct ChainlinkAggregator$EmitAllEvents$LinkTokenSet {
  address oldLinkToken;
  address newLinkToken;
}

struct ChainlinkAggregator$EmitAllEvents$NewRound {
  uint256 roundId;
  address startedBy;
  uint256 startedAt;
}

struct ChainlinkAggregator$EmitAllEvents$NewTransmission {
  uint32 aggregatorRoundId;
  int192 answer;
  address transmitter;
  uint32 observationsTimestamp;
  int192[] observations;
  bytes observers;
  int192 juelsPerFeeCoin;
  bytes32 configDigest;
  uint40 epochAndRound;
}

struct ChainlinkAggregator$EmitAllEvents$OraclePaid {
  address transmitter;
  address payee;
  uint256 amount;
  address linkToken;
}

struct ChainlinkAggregator$EmitAllEvents$OwnershipTransferRequested {
  address from;
  address to;
}

struct ChainlinkAggregator$EmitAllEvents$OwnershipTransferred {
  address from;
  address to;
}

struct ChainlinkAggregator$EmitAllEvents$PayeeshipTransferRequested {
  address transmitter;
  address current;
  address proposed;
}

struct ChainlinkAggregator$EmitAllEvents$PayeeshipTransferred {
  address transmitter;
  address previous;
  address current;
}

struct ChainlinkAggregator$EmitAllEvents$RemovedAccess {
  address user;
}

struct ChainlinkAggregator$EmitAllEvents$RequesterAccessControllerSet {
  address old;
  address current;
}

struct ChainlinkAggregator$EmitAllEvents$RoundRequested {
  address requester;
  bytes32 configDigest;
  uint32 epoch;
  uint8 round;
}

struct ChainlinkAggregator$EmitAllEvents$Transmitted {
  bytes32 configDigest;
  uint32 epoch;
}

struct ChainlinkAggregator$EmitAllEvents$ValidatorConfigSet {
  address previousValidator;
  uint32 previousGasLimit;
  address currentValidator;
  uint32 currentGasLimit;
}

contract ChainlinkAggregator$EmitAllEvents is
  ChainlinkAggregator$OnAddedAccessEvent,
ChainlinkAggregator$OnAnswerUpdatedEvent,
ChainlinkAggregator$OnBillingAccessControllerSetEvent,
ChainlinkAggregator$OnBillingSetEvent,
ChainlinkAggregator$OnCheckAccessDisabledEvent,
ChainlinkAggregator$OnCheckAccessEnabledEvent,
ChainlinkAggregator$OnConfigSetEvent,
ChainlinkAggregator$OnLinkTokenSetEvent,
ChainlinkAggregator$OnNewRoundEvent,
ChainlinkAggregator$OnNewTransmissionEvent,
ChainlinkAggregator$OnOraclePaidEvent,
ChainlinkAggregator$OnOwnershipTransferRequestedEvent,
ChainlinkAggregator$OnOwnershipTransferredEvent,
ChainlinkAggregator$OnPayeeshipTransferRequestedEvent,
ChainlinkAggregator$OnPayeeshipTransferredEvent,
ChainlinkAggregator$OnRemovedAccessEvent,
ChainlinkAggregator$OnRequesterAccessControllerSetEvent,
ChainlinkAggregator$OnRoundRequestedEvent,
ChainlinkAggregator$OnTransmittedEvent,
ChainlinkAggregator$OnValidatorConfigSetEvent
{
  event AddedAccess(ChainlinkAggregator$EmitAllEvents$AddedAccess);
  event AnswerUpdated(ChainlinkAggregator$EmitAllEvents$AnswerUpdated);
  event BillingAccessControllerSet(ChainlinkAggregator$EmitAllEvents$BillingAccessControllerSet);
  event BillingSet(ChainlinkAggregator$EmitAllEvents$BillingSet);
  event CheckAccessDisabled();
  event CheckAccessEnabled();
  event ConfigSet(ChainlinkAggregator$EmitAllEvents$ConfigSet);
  event LinkTokenSet(ChainlinkAggregator$EmitAllEvents$LinkTokenSet);
  event NewRound(ChainlinkAggregator$EmitAllEvents$NewRound);
  event NewTransmission(ChainlinkAggregator$EmitAllEvents$NewTransmission);
  event OraclePaid(ChainlinkAggregator$EmitAllEvents$OraclePaid);
  event OwnershipTransferRequested(ChainlinkAggregator$EmitAllEvents$OwnershipTransferRequested);
  event OwnershipTransferred(ChainlinkAggregator$EmitAllEvents$OwnershipTransferred);
  event PayeeshipTransferRequested(ChainlinkAggregator$EmitAllEvents$PayeeshipTransferRequested);
  event PayeeshipTransferred(ChainlinkAggregator$EmitAllEvents$PayeeshipTransferred);
  event RemovedAccess(ChainlinkAggregator$EmitAllEvents$RemovedAccess);
  event RequesterAccessControllerSet(ChainlinkAggregator$EmitAllEvents$RequesterAccessControllerSet);
  event RoundRequested(ChainlinkAggregator$EmitAllEvents$RoundRequested);
  event Transmitted(ChainlinkAggregator$EmitAllEvents$Transmitted);
  event ValidatorConfigSet(ChainlinkAggregator$EmitAllEvents$ValidatorConfigSet);

  function onAddedAccessEvent(EventContext memory ctx, ChainlinkAggregator$AddedAccessEventParams memory inputs) virtual external override {
    emit AddedAccess(ChainlinkAggregator$EmitAllEvents$AddedAccess(inputs.user));
  }
function onAnswerUpdatedEvent(EventContext memory ctx, ChainlinkAggregator$AnswerUpdatedEventParams memory inputs) virtual external override {
    emit AnswerUpdated(ChainlinkAggregator$EmitAllEvents$AnswerUpdated(inputs.current, inputs.roundId, inputs.updatedAt));
  }
function onBillingAccessControllerSetEvent(EventContext memory ctx, ChainlinkAggregator$BillingAccessControllerSetEventParams memory inputs) virtual external override {
    emit BillingAccessControllerSet(ChainlinkAggregator$EmitAllEvents$BillingAccessControllerSet(inputs.old, inputs.current));
  }
function onBillingSetEvent(EventContext memory ctx, ChainlinkAggregator$BillingSetEventParams memory inputs) virtual external override {
    emit BillingSet(ChainlinkAggregator$EmitAllEvents$BillingSet(inputs.maximumGasPriceGwei, inputs.reasonableGasPriceGwei, inputs.observationPaymentGjuels, inputs.transmissionPaymentGjuels, inputs.accountingGas));
  }
function onCheckAccessDisabledEvent(EventContext memory ctx) virtual external override {
    emit CheckAccessDisabled();
  }
function onCheckAccessEnabledEvent(EventContext memory ctx) virtual external override {
    emit CheckAccessEnabled();
  }
function onConfigSetEvent(EventContext memory ctx, ChainlinkAggregator$ConfigSetEventParams memory inputs) virtual external override {
    emit ConfigSet(ChainlinkAggregator$EmitAllEvents$ConfigSet(inputs.previousConfigBlockNumber, inputs.configDigest, inputs.configCount, inputs.signers, inputs.transmitters, inputs.f, inputs.onchainConfig, inputs.offchainConfigVersion, inputs.offchainConfig));
  }
function onLinkTokenSetEvent(EventContext memory ctx, ChainlinkAggregator$LinkTokenSetEventParams memory inputs) virtual external override {
    emit LinkTokenSet(ChainlinkAggregator$EmitAllEvents$LinkTokenSet(inputs.oldLinkToken, inputs.newLinkToken));
  }
function onNewRoundEvent(EventContext memory ctx, ChainlinkAggregator$NewRoundEventParams memory inputs) virtual external override {
    emit NewRound(ChainlinkAggregator$EmitAllEvents$NewRound(inputs.roundId, inputs.startedBy, inputs.startedAt));
  }
function onNewTransmissionEvent(EventContext memory ctx, ChainlinkAggregator$NewTransmissionEventParams memory inputs) virtual external override {
    emit NewTransmission(ChainlinkAggregator$EmitAllEvents$NewTransmission(inputs.aggregatorRoundId, inputs.answer, inputs.transmitter, inputs.observationsTimestamp, inputs.observations, inputs.observers, inputs.juelsPerFeeCoin, inputs.configDigest, inputs.epochAndRound));
  }
function onOraclePaidEvent(EventContext memory ctx, ChainlinkAggregator$OraclePaidEventParams memory inputs) virtual external override {
    emit OraclePaid(ChainlinkAggregator$EmitAllEvents$OraclePaid(inputs.transmitter, inputs.payee, inputs.amount, inputs.linkToken));
  }
function onOwnershipTransferRequestedEvent(EventContext memory ctx, ChainlinkAggregator$OwnershipTransferRequestedEventParams memory inputs) virtual external override {
    emit OwnershipTransferRequested(ChainlinkAggregator$EmitAllEvents$OwnershipTransferRequested(inputs.from, inputs.to));
  }
function onOwnershipTransferredEvent(EventContext memory ctx, ChainlinkAggregator$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(ChainlinkAggregator$EmitAllEvents$OwnershipTransferred(inputs.from, inputs.to));
  }
function onPayeeshipTransferRequestedEvent(EventContext memory ctx, ChainlinkAggregator$PayeeshipTransferRequestedEventParams memory inputs) virtual external override {
    emit PayeeshipTransferRequested(ChainlinkAggregator$EmitAllEvents$PayeeshipTransferRequested(inputs.transmitter, inputs.current, inputs.proposed));
  }
function onPayeeshipTransferredEvent(EventContext memory ctx, ChainlinkAggregator$PayeeshipTransferredEventParams memory inputs) virtual external override {
    emit PayeeshipTransferred(ChainlinkAggregator$EmitAllEvents$PayeeshipTransferred(inputs.transmitter, inputs.previous, inputs.current));
  }
function onRemovedAccessEvent(EventContext memory ctx, ChainlinkAggregator$RemovedAccessEventParams memory inputs) virtual external override {
    emit RemovedAccess(ChainlinkAggregator$EmitAllEvents$RemovedAccess(inputs.user));
  }
function onRequesterAccessControllerSetEvent(EventContext memory ctx, ChainlinkAggregator$RequesterAccessControllerSetEventParams memory inputs) virtual external override {
    emit RequesterAccessControllerSet(ChainlinkAggregator$EmitAllEvents$RequesterAccessControllerSet(inputs.old, inputs.current));
  }
function onRoundRequestedEvent(EventContext memory ctx, ChainlinkAggregator$RoundRequestedEventParams memory inputs) virtual external override {
    emit RoundRequested(ChainlinkAggregator$EmitAllEvents$RoundRequested(inputs.requester, inputs.configDigest, inputs.epoch, inputs.round));
  }
function onTransmittedEvent(EventContext memory ctx, ChainlinkAggregator$TransmittedEventParams memory inputs) virtual external override {
    emit Transmitted(ChainlinkAggregator$EmitAllEvents$Transmitted(inputs.configDigest, inputs.epoch));
  }
function onValidatorConfigSetEvent(EventContext memory ctx, ChainlinkAggregator$ValidatorConfigSetEventParams memory inputs) virtual external override {
    emit ValidatorConfigSet(ChainlinkAggregator$EmitAllEvents$ValidatorConfigSet(inputs.previousValidator, inputs.previousGasLimit, inputs.currentValidator, inputs.currentGasLimit));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](20);
    triggers[0] = this.triggerOnAddedAccessEvent();
    triggers[1] = this.triggerOnAnswerUpdatedEvent();
    triggers[2] = this.triggerOnBillingAccessControllerSetEvent();
    triggers[3] = this.triggerOnBillingSetEvent();
    triggers[4] = this.triggerOnCheckAccessDisabledEvent();
    triggers[5] = this.triggerOnCheckAccessEnabledEvent();
    triggers[6] = this.triggerOnConfigSetEvent();
    triggers[7] = this.triggerOnLinkTokenSetEvent();
    triggers[8] = this.triggerOnNewRoundEvent();
    triggers[9] = this.triggerOnNewTransmissionEvent();
    triggers[10] = this.triggerOnOraclePaidEvent();
    triggers[11] = this.triggerOnOwnershipTransferRequestedEvent();
    triggers[12] = this.triggerOnOwnershipTransferredEvent();
    triggers[13] = this.triggerOnPayeeshipTransferRequestedEvent();
    triggers[14] = this.triggerOnPayeeshipTransferredEvent();
    triggers[15] = this.triggerOnRemovedAccessEvent();
    triggers[16] = this.triggerOnRequesterAccessControllerSetEvent();
    triggers[17] = this.triggerOnRoundRequestedEvent();
    triggers[18] = this.triggerOnTransmittedEvent();
    triggers[19] = this.triggerOnValidatorConfigSetEvent();
    return triggers;
  }
}