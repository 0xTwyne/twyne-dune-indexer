// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../../sim-idx-sol/src/Triggers.sol";
import "../../sim-idx-sol/src/Context.sol";

function EthereumVaultConnector$Abi() pure returns (Abi memory) {
    return Abi("EthereumVaultConnector");
}
struct EthereumVaultConnector$AreChecksDeferredFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$AreChecksInProgressFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IEVC$BatchItem {
    address targetContract;
    address onBehalfOfAccount;
    uint256 value;
    bytes data;
}

struct EthereumVaultConnector$BatchFunctionInputs {
    EthereumVaultConnector$IEVC$BatchItem[] items;
}

struct EthereumVaultConnector$BatchRevertFunctionInputs {
    EthereumVaultConnector$IEVC$BatchItem[] items;
}

struct EthereumVaultConnector$BatchSimulationFunctionInputs {
    EthereumVaultConnector$IEVC$BatchItem[] items;
}

struct EthereumVaultConnector$IEVC$BatchItemResult {
    bool success;
    bytes result;
}

struct EthereumVaultConnector$IEVC$StatusCheckResult {
    address checkedAddress;
    bool isValid;
    bytes result;
}

struct EthereumVaultConnector$BatchSimulationFunctionOutputs {
    EthereumVaultConnector$IEVC$BatchItemResult[] batchItemsResult;
    EthereumVaultConnector$IEVC$StatusCheckResult[] accountsStatusCheckResult;
    EthereumVaultConnector$IEVC$StatusCheckResult[] vaultsStatusCheckResult;
}

struct EthereumVaultConnector$CallFunctionInputs {
    address targetContract;
    address onBehalfOfAccount;
    uint256 value;
    bytes data;
}

struct EthereumVaultConnector$CallFunctionOutputs {
    bytes result;
}

struct EthereumVaultConnector$ControlCollateralFunctionInputs {
    address targetCollateral;
    address onBehalfOfAccount;
    uint256 value;
    bytes data;
}

struct EthereumVaultConnector$ControlCollateralFunctionOutputs {
    bytes result;
}

struct EthereumVaultConnector$DisableCollateralFunctionInputs {
    address account;
    address vault;
}

struct EthereumVaultConnector$DisableControllerFunctionInputs {
    address account;
}

struct EthereumVaultConnector$EnableCollateralFunctionInputs {
    address account;
    address vault;
}

struct EthereumVaultConnector$EnableControllerFunctionInputs {
    address account;
    address vault;
}

struct EthereumVaultConnector$ForgiveAccountStatusCheckFunctionInputs {
    address account;
}

struct EthereumVaultConnector$GetAccountOwnerFunctionInputs {
    address account;
}

struct EthereumVaultConnector$GetAccountOwnerFunctionOutputs {
    address outArg0;
}

struct EthereumVaultConnector$GetAddressPrefixFunctionInputs {
    address account;
}

struct EthereumVaultConnector$GetAddressPrefixFunctionOutputs {
    bytes19 outArg0;
}

struct EthereumVaultConnector$GetCollateralsFunctionInputs {
    address account;
}

struct EthereumVaultConnector$GetCollateralsFunctionOutputs {
    address[] outArg0;
}

struct EthereumVaultConnector$GetControllersFunctionInputs {
    address account;
}

struct EthereumVaultConnector$GetControllersFunctionOutputs {
    address[] outArg0;
}

struct EthereumVaultConnector$GetCurrentOnBehalfOfAccountFunctionInputs {
    address controllerToCheck;
}

struct EthereumVaultConnector$GetCurrentOnBehalfOfAccountFunctionOutputs {
    address onBehalfOfAccount;
    bool controllerEnabled;
}

struct EthereumVaultConnector$GetLastAccountStatusCheckTimestampFunctionInputs {
    address account;
}

struct EthereumVaultConnector$GetLastAccountStatusCheckTimestampFunctionOutputs {
    uint256 outArg0;
}

struct EthereumVaultConnector$GetNonceFunctionInputs {
    bytes19 addressPrefix;
    uint256 nonceNamespace;
}

struct EthereumVaultConnector$GetNonceFunctionOutputs {
    uint256 outArg0;
}

struct EthereumVaultConnector$GetOperatorFunctionInputs {
    bytes19 addressPrefix;
    address operator;
}

struct EthereumVaultConnector$GetOperatorFunctionOutputs {
    uint256 outArg0;
}

struct EthereumVaultConnector$GetRawExecutionContextFunctionOutputs {
    uint256 context;
}

struct EthereumVaultConnector$HaveCommonOwnerFunctionInputs {
    address account;
    address otherAccount;
}

struct EthereumVaultConnector$HaveCommonOwnerFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsAccountOperatorAuthorizedFunctionInputs {
    address account;
    address operator;
}

struct EthereumVaultConnector$IsAccountOperatorAuthorizedFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsAccountStatusCheckDeferredFunctionInputs {
    address account;
}

struct EthereumVaultConnector$IsAccountStatusCheckDeferredFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsCollateralEnabledFunctionInputs {
    address account;
    address vault;
}

struct EthereumVaultConnector$IsCollateralEnabledFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsControlCollateralInProgressFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsControllerEnabledFunctionInputs {
    address account;
    address vault;
}

struct EthereumVaultConnector$IsControllerEnabledFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsLockdownModeFunctionInputs {
    bytes19 addressPrefix;
}

struct EthereumVaultConnector$IsLockdownModeFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsOperatorAuthenticatedFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsPermitDisabledModeFunctionInputs {
    bytes19 addressPrefix;
}

struct EthereumVaultConnector$IsPermitDisabledModeFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsSimulationInProgressFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$IsVaultStatusCheckDeferredFunctionInputs {
    address vault;
}

struct EthereumVaultConnector$IsVaultStatusCheckDeferredFunctionOutputs {
    bool outArg0;
}

struct EthereumVaultConnector$NameFunctionOutputs {
    string outArg0;
}

struct EthereumVaultConnector$PermitFunctionInputs {
    address signer;
    address sender;
    uint256 nonceNamespace;
    uint256 nonce;
    uint256 deadline;
    uint256 value;
    bytes data;
    bytes signature;
}

struct EthereumVaultConnector$ReorderCollateralsFunctionInputs {
    address account;
    uint8 index1;
    uint8 index2;
}

struct EthereumVaultConnector$RequireAccountAndVaultStatusCheckFunctionInputs {
    address account;
}

struct EthereumVaultConnector$RequireAccountStatusCheckFunctionInputs {
    address account;
}

struct EthereumVaultConnector$SetAccountOperatorFunctionInputs {
    address account;
    address operator;
    bool authorized;
}

struct EthereumVaultConnector$SetLockdownModeFunctionInputs {
    bytes19 addressPrefix;
    bool enabled;
}

struct EthereumVaultConnector$SetNonceFunctionInputs {
    bytes19 addressPrefix;
    uint256 nonceNamespace;
    uint256 nonce;
}

struct EthereumVaultConnector$SetOperatorFunctionInputs {
    bytes19 addressPrefix;
    address operator;
    uint256 operatorBitField;
}

struct EthereumVaultConnector$SetPermitDisabledModeFunctionInputs {
    bytes19 addressPrefix;
    bool enabled;
}

struct EthereumVaultConnector$AccountStatusCheckEventParams {
    address account;
    address controller;
}

struct EthereumVaultConnector$CallWithContextEventParams {
    address caller;
    bytes19 onBehalfOfAddressPrefix;
    address onBehalfOfAccount;
    address targetContract;
    bytes4 selector;
}

struct EthereumVaultConnector$CollateralStatusEventParams {
    address account;
    address collateral;
    bool enabled;
}

struct EthereumVaultConnector$ControllerStatusEventParams {
    address account;
    address controller;
    bool enabled;
}

struct EthereumVaultConnector$LockdownModeStatusEventParams {
    bytes19 addressPrefix;
    bool enabled;
}

struct EthereumVaultConnector$NonceStatusEventParams {
    bytes19 addressPrefix;
    uint256 nonceNamespace;
    uint256 oldNonce;
    uint256 newNonce;
}

struct EthereumVaultConnector$NonceUsedEventParams {
    bytes19 addressPrefix;
    uint256 nonceNamespace;
    uint256 nonce;
}

struct EthereumVaultConnector$OperatorStatusEventParams {
    bytes19 addressPrefix;
    address operator;
    uint256 accountOperatorAuthorized;
}

struct EthereumVaultConnector$OwnerRegisteredEventParams {
    bytes19 addressPrefix;
    address owner;
}

struct EthereumVaultConnector$PermitDisabledModeStatusEventParams {
    bytes19 addressPrefix;
    bool enabled;
}

struct EthereumVaultConnector$VaultStatusCheckEventParams {
    address vault;
}

abstract contract EthereumVaultConnector$OnAccountStatusCheckEvent {
    function onAccountStatusCheckEvent(EventContext memory ctx, EthereumVaultConnector$AccountStatusCheckEventParams memory inputs) virtual external;

    function triggerOnAccountStatusCheckEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0x889a4d4628b31342e420737e2aeb45387087570710d26239aa8a5f13d3e829d4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccountStatusCheckEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnCallWithContextEvent {
    function onCallWithContextEvent(EventContext memory ctx, EthereumVaultConnector$CallWithContextEventParams memory inputs) virtual external;

    function triggerOnCallWithContextEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0x6e9738e5aa38fe1517adbb480351ec386ece82947737b18badbcad1e911133ec),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCallWithContextEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnCollateralStatusEvent {
    function onCollateralStatusEvent(EventContext memory ctx, EthereumVaultConnector$CollateralStatusEventParams memory inputs) virtual external;

    function triggerOnCollateralStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0xf022705c827017c972043d1984cfddc7958c9f4685b4d9ce8bd68696f4381cd2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCollateralStatusEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnControllerStatusEvent {
    function onControllerStatusEvent(EventContext memory ctx, EthereumVaultConnector$ControllerStatusEventParams memory inputs) virtual external;

    function triggerOnControllerStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0x9919d437ee612d4ec7bba88a7d9bc4fc36a0a23608ad6259252711a46b708af9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onControllerStatusEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnLockdownModeStatusEvent {
    function onLockdownModeStatusEvent(EventContext memory ctx, EthereumVaultConnector$LockdownModeStatusEventParams memory inputs) virtual external;

    function triggerOnLockdownModeStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0xaf5120bc58372f0063d8362c9bba9070c462c07ae24c24082d080a426432798b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLockdownModeStatusEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnNonceStatusEvent {
    function onNonceStatusEvent(EventContext memory ctx, EthereumVaultConnector$NonceStatusEventParams memory inputs) virtual external;

    function triggerOnNonceStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0x3b8510174a91acb36200f7427c1889f934941fd89ed86faf390749b4c2b46337),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNonceStatusEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnNonceUsedEvent {
    function onNonceUsedEvent(EventContext memory ctx, EthereumVaultConnector$NonceUsedEventParams memory inputs) virtual external;

    function triggerOnNonceUsedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0xb0dcec731e48090736be6db10ad9f9581d0ec5fc0f1925a8e267b64b614b08d6),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNonceUsedEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnOperatorStatusEvent {
    function onOperatorStatusEvent(EventContext memory ctx, EthereumVaultConnector$OperatorStatusEventParams memory inputs) virtual external;

    function triggerOnOperatorStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0x7ba31654d8467e98b6bd4fc56ddde246de9ade831cf860c7ac695579aecb9564),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOperatorStatusEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnOwnerRegisteredEvent {
    function onOwnerRegisteredEvent(EventContext memory ctx, EthereumVaultConnector$OwnerRegisteredEventParams memory inputs) virtual external;

    function triggerOnOwnerRegisteredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0x67cb2734834e775d6db886bf16ac03d7273b290223ee5363354b385ec5b643b0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnerRegisteredEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnPermitDisabledModeStatusEvent {
    function onPermitDisabledModeStatusEvent(EventContext memory ctx, EthereumVaultConnector$PermitDisabledModeStatusEventParams memory inputs) virtual external;

    function triggerOnPermitDisabledModeStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0x6321df4e44267d425279195e7488fadba1a42d5cce9e84f596d5cf696f4449cd),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPermitDisabledModeStatusEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnVaultStatusCheckEvent {
    function onVaultStatusCheckEvent(EventContext memory ctx, EthereumVaultConnector$VaultStatusCheckEventParams memory inputs) virtual external;

    function triggerOnVaultStatusCheckEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes32(0xaea973cfb51ea8ca328767d72f105b5b9d2360c65f5ac4110a2c4470434471c9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVaultStatusCheckEvent.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnAreChecksDeferredFunction {
    function onAreChecksDeferredFunction(FunctionContext memory ctx, EthereumVaultConnector$AreChecksDeferredFunctionOutputs memory outputs) virtual external;

    function triggerOnAreChecksDeferredFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x430292b3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAreChecksDeferredFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreAreChecksDeferredFunction {
    function preAreChecksDeferredFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAreChecksDeferredFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x430292b3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAreChecksDeferredFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnAreChecksInProgressFunction {
    function onAreChecksInProgressFunction(FunctionContext memory ctx, EthereumVaultConnector$AreChecksInProgressFunctionOutputs memory outputs) virtual external;

    function triggerOnAreChecksInProgressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xe21e537c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAreChecksInProgressFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreAreChecksInProgressFunction {
    function preAreChecksInProgressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAreChecksInProgressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xe21e537c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAreChecksInProgressFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnBatchFunction {
    function onBatchFunction(FunctionContext memory ctx, EthereumVaultConnector$BatchFunctionInputs memory inputs) virtual external;

    function triggerOnBatchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xc16ae7a4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBatchFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreBatchFunction {
    function preBatchFunction(PreFunctionContext memory ctx, EthereumVaultConnector$BatchFunctionInputs memory inputs) virtual external;

    function triggerPreBatchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xc16ae7a4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBatchFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnBatchRevertFunction {
    function onBatchRevertFunction(FunctionContext memory ctx, EthereumVaultConnector$BatchRevertFunctionInputs memory inputs) virtual external;

    function triggerOnBatchRevertFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x7f5c92f3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBatchRevertFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreBatchRevertFunction {
    function preBatchRevertFunction(PreFunctionContext memory ctx, EthereumVaultConnector$BatchRevertFunctionInputs memory inputs) virtual external;

    function triggerPreBatchRevertFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x7f5c92f3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBatchRevertFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnBatchSimulationFunction {
    function onBatchSimulationFunction(FunctionContext memory ctx, EthereumVaultConnector$BatchSimulationFunctionInputs memory inputs, EthereumVaultConnector$BatchSimulationFunctionOutputs memory outputs) virtual external;

    function triggerOnBatchSimulationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x7f17c377),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBatchSimulationFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreBatchSimulationFunction {
    function preBatchSimulationFunction(PreFunctionContext memory ctx, EthereumVaultConnector$BatchSimulationFunctionInputs memory inputs) virtual external;

    function triggerPreBatchSimulationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x7f17c377),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBatchSimulationFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnCallFunction {
    function onCallFunction(FunctionContext memory ctx, EthereumVaultConnector$CallFunctionInputs memory inputs, EthereumVaultConnector$CallFunctionOutputs memory outputs) virtual external;

    function triggerOnCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x1f8b5215),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCallFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreCallFunction {
    function preCallFunction(PreFunctionContext memory ctx, EthereumVaultConnector$CallFunctionInputs memory inputs) virtual external;

    function triggerPreCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x1f8b5215),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCallFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnControlCollateralFunction {
    function onControlCollateralFunction(FunctionContext memory ctx, EthereumVaultConnector$ControlCollateralFunctionInputs memory inputs, EthereumVaultConnector$ControlCollateralFunctionOutputs memory outputs) virtual external;

    function triggerOnControlCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xb9b70ff5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onControlCollateralFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreControlCollateralFunction {
    function preControlCollateralFunction(PreFunctionContext memory ctx, EthereumVaultConnector$ControlCollateralFunctionInputs memory inputs) virtual external;

    function triggerPreControlCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xb9b70ff5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preControlCollateralFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnDisableCollateralFunction {
    function onDisableCollateralFunction(FunctionContext memory ctx, EthereumVaultConnector$DisableCollateralFunctionInputs memory inputs) virtual external;

    function triggerOnDisableCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xe920e8e0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDisableCollateralFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreDisableCollateralFunction {
    function preDisableCollateralFunction(PreFunctionContext memory ctx, EthereumVaultConnector$DisableCollateralFunctionInputs memory inputs) virtual external;

    function triggerPreDisableCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xe920e8e0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDisableCollateralFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnDisableControllerFunction {
    function onDisableControllerFunction(FunctionContext memory ctx, EthereumVaultConnector$DisableControllerFunctionInputs memory inputs) virtual external;

    function triggerOnDisableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xf4fc3570),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDisableControllerFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreDisableControllerFunction {
    function preDisableControllerFunction(PreFunctionContext memory ctx, EthereumVaultConnector$DisableControllerFunctionInputs memory inputs) virtual external;

    function triggerPreDisableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xf4fc3570),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDisableControllerFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnEnableCollateralFunction {
    function onEnableCollateralFunction(FunctionContext memory ctx, EthereumVaultConnector$EnableCollateralFunctionInputs memory inputs) virtual external;

    function triggerOnEnableCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xd44fee5a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEnableCollateralFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreEnableCollateralFunction {
    function preEnableCollateralFunction(PreFunctionContext memory ctx, EthereumVaultConnector$EnableCollateralFunctionInputs memory inputs) virtual external;

    function triggerPreEnableCollateralFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xd44fee5a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEnableCollateralFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnEnableControllerFunction {
    function onEnableControllerFunction(FunctionContext memory ctx, EthereumVaultConnector$EnableControllerFunctionInputs memory inputs) virtual external;

    function triggerOnEnableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xc368516c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEnableControllerFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreEnableControllerFunction {
    function preEnableControllerFunction(PreFunctionContext memory ctx, EthereumVaultConnector$EnableControllerFunctionInputs memory inputs) virtual external;

    function triggerPreEnableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xc368516c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEnableControllerFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnForgiveAccountStatusCheckFunction {
    function onForgiveAccountStatusCheckFunction(FunctionContext memory ctx, EthereumVaultConnector$ForgiveAccountStatusCheckFunctionInputs memory inputs) virtual external;

    function triggerOnForgiveAccountStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x10a75198),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onForgiveAccountStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreForgiveAccountStatusCheckFunction {
    function preForgiveAccountStatusCheckFunction(PreFunctionContext memory ctx, EthereumVaultConnector$ForgiveAccountStatusCheckFunctionInputs memory inputs) virtual external;

    function triggerPreForgiveAccountStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x10a75198),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preForgiveAccountStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnForgiveVaultStatusCheckFunction {
    function onForgiveVaultStatusCheckFunction(FunctionContext memory ctx) virtual external;

    function triggerOnForgiveVaultStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xebf1ea86),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onForgiveVaultStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreForgiveVaultStatusCheckFunction {
    function preForgiveVaultStatusCheckFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreForgiveVaultStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xebf1ea86),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preForgiveVaultStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnGetAccountOwnerFunction {
    function onGetAccountOwnerFunction(FunctionContext memory ctx, EthereumVaultConnector$GetAccountOwnerFunctionInputs memory inputs, EthereumVaultConnector$GetAccountOwnerFunctionOutputs memory outputs) virtual external;

    function triggerOnGetAccountOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x442b172c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetAccountOwnerFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreGetAccountOwnerFunction {
    function preGetAccountOwnerFunction(PreFunctionContext memory ctx, EthereumVaultConnector$GetAccountOwnerFunctionInputs memory inputs) virtual external;

    function triggerPreGetAccountOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x442b172c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetAccountOwnerFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnGetAddressPrefixFunction {
    function onGetAddressPrefixFunction(FunctionContext memory ctx, EthereumVaultConnector$GetAddressPrefixFunctionInputs memory inputs, EthereumVaultConnector$GetAddressPrefixFunctionOutputs memory outputs) virtual external;

    function triggerOnGetAddressPrefixFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x506d8c92),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetAddressPrefixFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreGetAddressPrefixFunction {
    function preGetAddressPrefixFunction(PreFunctionContext memory ctx, EthereumVaultConnector$GetAddressPrefixFunctionInputs memory inputs) virtual external;

    function triggerPreGetAddressPrefixFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x506d8c92),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetAddressPrefixFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnGetCollateralsFunction {
    function onGetCollateralsFunction(FunctionContext memory ctx, EthereumVaultConnector$GetCollateralsFunctionInputs memory inputs, EthereumVaultConnector$GetCollateralsFunctionOutputs memory outputs) virtual external;

    function triggerOnGetCollateralsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xa4d25d1e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetCollateralsFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreGetCollateralsFunction {
    function preGetCollateralsFunction(PreFunctionContext memory ctx, EthereumVaultConnector$GetCollateralsFunctionInputs memory inputs) virtual external;

    function triggerPreGetCollateralsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xa4d25d1e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetCollateralsFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnGetControllersFunction {
    function onGetControllersFunction(FunctionContext memory ctx, EthereumVaultConnector$GetControllersFunctionInputs memory inputs, EthereumVaultConnector$GetControllersFunctionOutputs memory outputs) virtual external;

    function triggerOnGetControllersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xfd6046d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetControllersFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreGetControllersFunction {
    function preGetControllersFunction(PreFunctionContext memory ctx, EthereumVaultConnector$GetControllersFunctionInputs memory inputs) virtual external;

    function triggerPreGetControllersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xfd6046d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetControllersFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnGetCurrentOnBehalfOfAccountFunction {
    function onGetCurrentOnBehalfOfAccountFunction(FunctionContext memory ctx, EthereumVaultConnector$GetCurrentOnBehalfOfAccountFunctionInputs memory inputs, EthereumVaultConnector$GetCurrentOnBehalfOfAccountFunctionOutputs memory outputs) virtual external;

    function triggerOnGetCurrentOnBehalfOfAccountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x18503a1e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetCurrentOnBehalfOfAccountFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreGetCurrentOnBehalfOfAccountFunction {
    function preGetCurrentOnBehalfOfAccountFunction(PreFunctionContext memory ctx, EthereumVaultConnector$GetCurrentOnBehalfOfAccountFunctionInputs memory inputs) virtual external;

    function triggerPreGetCurrentOnBehalfOfAccountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x18503a1e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetCurrentOnBehalfOfAccountFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnGetLastAccountStatusCheckTimestampFunction {
    function onGetLastAccountStatusCheckTimestampFunction(FunctionContext memory ctx, EthereumVaultConnector$GetLastAccountStatusCheckTimestampFunctionInputs memory inputs, EthereumVaultConnector$GetLastAccountStatusCheckTimestampFunctionOutputs memory outputs) virtual external;

    function triggerOnGetLastAccountStatusCheckTimestampFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xdf7c1384),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetLastAccountStatusCheckTimestampFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreGetLastAccountStatusCheckTimestampFunction {
    function preGetLastAccountStatusCheckTimestampFunction(PreFunctionContext memory ctx, EthereumVaultConnector$GetLastAccountStatusCheckTimestampFunctionInputs memory inputs) virtual external;

    function triggerPreGetLastAccountStatusCheckTimestampFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xdf7c1384),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetLastAccountStatusCheckTimestampFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnGetNonceFunction {
    function onGetNonceFunction(FunctionContext memory ctx, EthereumVaultConnector$GetNonceFunctionInputs memory inputs, EthereumVaultConnector$GetNonceFunctionOutputs memory outputs) virtual external;

    function triggerOnGetNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x12d6c936),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetNonceFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreGetNonceFunction {
    function preGetNonceFunction(PreFunctionContext memory ctx, EthereumVaultConnector$GetNonceFunctionInputs memory inputs) virtual external;

    function triggerPreGetNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x12d6c936),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetNonceFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnGetOperatorFunction {
    function onGetOperatorFunction(FunctionContext memory ctx, EthereumVaultConnector$GetOperatorFunctionInputs memory inputs, EthereumVaultConnector$GetOperatorFunctionOutputs memory outputs) virtual external;

    function triggerOnGetOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xb03c130d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetOperatorFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreGetOperatorFunction {
    function preGetOperatorFunction(PreFunctionContext memory ctx, EthereumVaultConnector$GetOperatorFunctionInputs memory inputs) virtual external;

    function triggerPreGetOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xb03c130d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetOperatorFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnGetRawExecutionContextFunction {
    function onGetRawExecutionContextFunction(FunctionContext memory ctx, EthereumVaultConnector$GetRawExecutionContextFunctionOutputs memory outputs) virtual external;

    function triggerOnGetRawExecutionContextFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x3a1a3a1d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetRawExecutionContextFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreGetRawExecutionContextFunction {
    function preGetRawExecutionContextFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetRawExecutionContextFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x3a1a3a1d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetRawExecutionContextFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnHaveCommonOwnerFunction {
    function onHaveCommonOwnerFunction(FunctionContext memory ctx, EthereumVaultConnector$HaveCommonOwnerFunctionInputs memory inputs, EthereumVaultConnector$HaveCommonOwnerFunctionOutputs memory outputs) virtual external;

    function triggerOnHaveCommonOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xc760d921),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onHaveCommonOwnerFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreHaveCommonOwnerFunction {
    function preHaveCommonOwnerFunction(PreFunctionContext memory ctx, EthereumVaultConnector$HaveCommonOwnerFunctionInputs memory inputs) virtual external;

    function triggerPreHaveCommonOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xc760d921),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preHaveCommonOwnerFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsAccountOperatorAuthorizedFunction {
    function onIsAccountOperatorAuthorizedFunction(FunctionContext memory ctx, EthereumVaultConnector$IsAccountOperatorAuthorizedFunctionInputs memory inputs, EthereumVaultConnector$IsAccountOperatorAuthorizedFunctionOutputs memory outputs) virtual external;

    function triggerOnIsAccountOperatorAuthorizedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x1647292a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsAccountOperatorAuthorizedFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsAccountOperatorAuthorizedFunction {
    function preIsAccountOperatorAuthorizedFunction(PreFunctionContext memory ctx, EthereumVaultConnector$IsAccountOperatorAuthorizedFunctionInputs memory inputs) virtual external;

    function triggerPreIsAccountOperatorAuthorizedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x1647292a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsAccountOperatorAuthorizedFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsAccountStatusCheckDeferredFunction {
    function onIsAccountStatusCheckDeferredFunction(FunctionContext memory ctx, EthereumVaultConnector$IsAccountStatusCheckDeferredFunctionInputs memory inputs, EthereumVaultConnector$IsAccountStatusCheckDeferredFunctionOutputs memory outputs) virtual external;

    function triggerOnIsAccountStatusCheckDeferredFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x42e53499),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsAccountStatusCheckDeferredFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsAccountStatusCheckDeferredFunction {
    function preIsAccountStatusCheckDeferredFunction(PreFunctionContext memory ctx, EthereumVaultConnector$IsAccountStatusCheckDeferredFunctionInputs memory inputs) virtual external;

    function triggerPreIsAccountStatusCheckDeferredFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x42e53499),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsAccountStatusCheckDeferredFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsCollateralEnabledFunction {
    function onIsCollateralEnabledFunction(FunctionContext memory ctx, EthereumVaultConnector$IsCollateralEnabledFunctionInputs memory inputs, EthereumVaultConnector$IsCollateralEnabledFunctionOutputs memory outputs) virtual external;

    function triggerOnIsCollateralEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x9e716d58),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsCollateralEnabledFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsCollateralEnabledFunction {
    function preIsCollateralEnabledFunction(PreFunctionContext memory ctx, EthereumVaultConnector$IsCollateralEnabledFunctionInputs memory inputs) virtual external;

    function triggerPreIsCollateralEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x9e716d58),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsCollateralEnabledFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsControlCollateralInProgressFunction {
    function onIsControlCollateralInProgressFunction(FunctionContext memory ctx, EthereumVaultConnector$IsControlCollateralInProgressFunctionOutputs memory outputs) virtual external;

    function triggerOnIsControlCollateralInProgressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x863789d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsControlCollateralInProgressFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsControlCollateralInProgressFunction {
    function preIsControlCollateralInProgressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreIsControlCollateralInProgressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x863789d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsControlCollateralInProgressFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsControllerEnabledFunction {
    function onIsControllerEnabledFunction(FunctionContext memory ctx, EthereumVaultConnector$IsControllerEnabledFunctionInputs memory inputs, EthereumVaultConnector$IsControllerEnabledFunctionOutputs memory outputs) virtual external;

    function triggerOnIsControllerEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x47cfdac4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsControllerEnabledFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsControllerEnabledFunction {
    function preIsControllerEnabledFunction(PreFunctionContext memory ctx, EthereumVaultConnector$IsControllerEnabledFunctionInputs memory inputs) virtual external;

    function triggerPreIsControllerEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x47cfdac4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsControllerEnabledFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsLockdownModeFunction {
    function onIsLockdownModeFunction(FunctionContext memory ctx, EthereumVaultConnector$IsLockdownModeFunctionInputs memory inputs, EthereumVaultConnector$IsLockdownModeFunctionOutputs memory outputs) virtual external;

    function triggerOnIsLockdownModeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x3b10f3ef),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsLockdownModeFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsLockdownModeFunction {
    function preIsLockdownModeFunction(PreFunctionContext memory ctx, EthereumVaultConnector$IsLockdownModeFunctionInputs memory inputs) virtual external;

    function triggerPreIsLockdownModeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x3b10f3ef),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsLockdownModeFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsOperatorAuthenticatedFunction {
    function onIsOperatorAuthenticatedFunction(FunctionContext memory ctx, EthereumVaultConnector$IsOperatorAuthenticatedFunctionOutputs memory outputs) virtual external;

    function triggerOnIsOperatorAuthenticatedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x3b2416be),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsOperatorAuthenticatedFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsOperatorAuthenticatedFunction {
    function preIsOperatorAuthenticatedFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreIsOperatorAuthenticatedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x3b2416be),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsOperatorAuthenticatedFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsPermitDisabledModeFunction {
    function onIsPermitDisabledModeFunction(FunctionContext memory ctx, EthereumVaultConnector$IsPermitDisabledModeFunctionInputs memory inputs, EthereumVaultConnector$IsPermitDisabledModeFunctionOutputs memory outputs) virtual external;

    function triggerOnIsPermitDisabledModeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xcb29955a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsPermitDisabledModeFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsPermitDisabledModeFunction {
    function preIsPermitDisabledModeFunction(PreFunctionContext memory ctx, EthereumVaultConnector$IsPermitDisabledModeFunctionInputs memory inputs) virtual external;

    function triggerPreIsPermitDisabledModeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xcb29955a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsPermitDisabledModeFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsSimulationInProgressFunction {
    function onIsSimulationInProgressFunction(FunctionContext memory ctx, EthereumVaultConnector$IsSimulationInProgressFunctionOutputs memory outputs) virtual external;

    function triggerOnIsSimulationInProgressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x92d2fc01),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsSimulationInProgressFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsSimulationInProgressFunction {
    function preIsSimulationInProgressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreIsSimulationInProgressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x92d2fc01),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsSimulationInProgressFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnIsVaultStatusCheckDeferredFunction {
    function onIsVaultStatusCheckDeferredFunction(FunctionContext memory ctx, EthereumVaultConnector$IsVaultStatusCheckDeferredFunctionInputs memory inputs, EthereumVaultConnector$IsVaultStatusCheckDeferredFunctionOutputs memory outputs) virtual external;

    function triggerOnIsVaultStatusCheckDeferredFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xcdd8ea78),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsVaultStatusCheckDeferredFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreIsVaultStatusCheckDeferredFunction {
    function preIsVaultStatusCheckDeferredFunction(PreFunctionContext memory ctx, EthereumVaultConnector$IsVaultStatusCheckDeferredFunctionInputs memory inputs) virtual external;

    function triggerPreIsVaultStatusCheckDeferredFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xcdd8ea78),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsVaultStatusCheckDeferredFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnNameFunction {
    function onNameFunction(FunctionContext memory ctx, EthereumVaultConnector$NameFunctionOutputs memory outputs) virtual external;

    function triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNameFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreNameFunction {
    function preNameFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNameFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnPermitFunction {
    function onPermitFunction(FunctionContext memory ctx, EthereumVaultConnector$PermitFunctionInputs memory inputs) virtual external;

    function triggerOnPermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x5bedd1cd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPermitFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PrePermitFunction {
    function prePermitFunction(PreFunctionContext memory ctx, EthereumVaultConnector$PermitFunctionInputs memory inputs) virtual external;

    function triggerPrePermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x5bedd1cd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePermitFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnReorderCollateralsFunction {
    function onReorderCollateralsFunction(FunctionContext memory ctx, EthereumVaultConnector$ReorderCollateralsFunctionInputs memory inputs) virtual external;

    function triggerOnReorderCollateralsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x642ea23f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onReorderCollateralsFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreReorderCollateralsFunction {
    function preReorderCollateralsFunction(PreFunctionContext memory ctx, EthereumVaultConnector$ReorderCollateralsFunctionInputs memory inputs) virtual external;

    function triggerPreReorderCollateralsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x642ea23f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preReorderCollateralsFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnRequireAccountAndVaultStatusCheckFunction {
    function onRequireAccountAndVaultStatusCheckFunction(FunctionContext memory ctx, EthereumVaultConnector$RequireAccountAndVaultStatusCheckFunctionInputs memory inputs) virtual external;

    function triggerOnRequireAccountAndVaultStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x30f31667),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequireAccountAndVaultStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreRequireAccountAndVaultStatusCheckFunction {
    function preRequireAccountAndVaultStatusCheckFunction(PreFunctionContext memory ctx, EthereumVaultConnector$RequireAccountAndVaultStatusCheckFunctionInputs memory inputs) virtual external;

    function triggerPreRequireAccountAndVaultStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x30f31667),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRequireAccountAndVaultStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnRequireAccountStatusCheckFunction {
    function onRequireAccountStatusCheckFunction(FunctionContext memory ctx, EthereumVaultConnector$RequireAccountStatusCheckFunctionInputs memory inputs) virtual external;

    function triggerOnRequireAccountStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x46591032),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequireAccountStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreRequireAccountStatusCheckFunction {
    function preRequireAccountStatusCheckFunction(PreFunctionContext memory ctx, EthereumVaultConnector$RequireAccountStatusCheckFunctionInputs memory inputs) virtual external;

    function triggerPreRequireAccountStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x46591032),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRequireAccountStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnRequireVaultStatusCheckFunction {
    function onRequireVaultStatusCheckFunction(FunctionContext memory ctx) virtual external;

    function triggerOnRequireVaultStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xa37d54af),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequireVaultStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreRequireVaultStatusCheckFunction {
    function preRequireVaultStatusCheckFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRequireVaultStatusCheckFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xa37d54af),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRequireVaultStatusCheckFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnSetAccountOperatorFunction {
    function onSetAccountOperatorFunction(FunctionContext memory ctx, EthereumVaultConnector$SetAccountOperatorFunctionInputs memory inputs) virtual external;

    function triggerOnSetAccountOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x9f5c462a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetAccountOperatorFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreSetAccountOperatorFunction {
    function preSetAccountOperatorFunction(PreFunctionContext memory ctx, EthereumVaultConnector$SetAccountOperatorFunctionInputs memory inputs) virtual external;

    function triggerPreSetAccountOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x9f5c462a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetAccountOperatorFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnSetLockdownModeFunction {
    function onSetLockdownModeFunction(FunctionContext memory ctx, EthereumVaultConnector$SetLockdownModeFunctionInputs memory inputs) virtual external;

    function triggerOnSetLockdownModeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x129d21a0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetLockdownModeFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreSetLockdownModeFunction {
    function preSetLockdownModeFunction(PreFunctionContext memory ctx, EthereumVaultConnector$SetLockdownModeFunctionInputs memory inputs) virtual external;

    function triggerPreSetLockdownModeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x129d21a0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetLockdownModeFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnSetNonceFunction {
    function onSetNonceFunction(FunctionContext memory ctx, EthereumVaultConnector$SetNonceFunctionInputs memory inputs) virtual external;

    function triggerOnSetNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xa829aaf5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetNonceFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreSetNonceFunction {
    function preSetNonceFunction(PreFunctionContext memory ctx, EthereumVaultConnector$SetNonceFunctionInputs memory inputs) virtual external;

    function triggerPreSetNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xa829aaf5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetNonceFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnSetOperatorFunction {
    function onSetOperatorFunction(FunctionContext memory ctx, EthereumVaultConnector$SetOperatorFunctionInputs memory inputs) virtual external;

    function triggerOnSetOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xc14c11bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetOperatorFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreSetOperatorFunction {
    function preSetOperatorFunction(PreFunctionContext memory ctx, EthereumVaultConnector$SetOperatorFunctionInputs memory inputs) virtual external;

    function triggerPreSetOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0xc14c11bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetOperatorFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$OnSetPermitDisabledModeFunction {
    function onSetPermitDisabledModeFunction(FunctionContext memory ctx, EthereumVaultConnector$SetPermitDisabledModeFunctionInputs memory inputs) virtual external;

    function triggerOnSetPermitDisabledModeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x116d0e93),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetPermitDisabledModeFunction.selector
        });
    }
}

abstract contract EthereumVaultConnector$PreSetPermitDisabledModeFunction {
    function preSetPermitDisabledModeFunction(PreFunctionContext memory ctx, EthereumVaultConnector$SetPermitDisabledModeFunctionInputs memory inputs) virtual external;

    function triggerPreSetPermitDisabledModeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EthereumVaultConnector",
            selector: bytes4(0x116d0e93),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetPermitDisabledModeFunction.selector
        });
    }
}


struct EthereumVaultConnector$EmitAllEvents$AccountStatusCheck {
  address account;
  address controller;
}

struct EthereumVaultConnector$EmitAllEvents$CallWithContext {
  address caller;
  bytes19 onBehalfOfAddressPrefix;
  address onBehalfOfAccount;
  address targetContract;
  bytes4 selector;
}

struct EthereumVaultConnector$EmitAllEvents$CollateralStatus {
  address account;
  address collateral;
  bool enabled;
}

struct EthereumVaultConnector$EmitAllEvents$ControllerStatus {
  address account;
  address controller;
  bool enabled;
}

struct EthereumVaultConnector$EmitAllEvents$LockdownModeStatus {
  bytes19 addressPrefix;
  bool enabled;
}

struct EthereumVaultConnector$EmitAllEvents$NonceStatus {
  bytes19 addressPrefix;
  uint256 nonceNamespace;
  uint256 oldNonce;
  uint256 newNonce;
}

struct EthereumVaultConnector$EmitAllEvents$NonceUsed {
  bytes19 addressPrefix;
  uint256 nonceNamespace;
  uint256 nonce;
}

struct EthereumVaultConnector$EmitAllEvents$OperatorStatus {
  bytes19 addressPrefix;
  address operator;
  uint256 accountOperatorAuthorized;
}

struct EthereumVaultConnector$EmitAllEvents$OwnerRegistered {
  bytes19 addressPrefix;
  address owner;
}

struct EthereumVaultConnector$EmitAllEvents$PermitDisabledModeStatus {
  bytes19 addressPrefix;
  bool enabled;
}

struct EthereumVaultConnector$EmitAllEvents$VaultStatusCheck {
  address vault;
}

contract EthereumVaultConnector$EmitAllEvents is
  EthereumVaultConnector$OnAccountStatusCheckEvent,
EthereumVaultConnector$OnCallWithContextEvent,
EthereumVaultConnector$OnCollateralStatusEvent,
EthereumVaultConnector$OnControllerStatusEvent,
EthereumVaultConnector$OnLockdownModeStatusEvent,
EthereumVaultConnector$OnNonceStatusEvent,
EthereumVaultConnector$OnNonceUsedEvent,
EthereumVaultConnector$OnOperatorStatusEvent,
EthereumVaultConnector$OnOwnerRegisteredEvent,
EthereumVaultConnector$OnPermitDisabledModeStatusEvent,
EthereumVaultConnector$OnVaultStatusCheckEvent
{
  event AccountStatusCheck(EthereumVaultConnector$EmitAllEvents$AccountStatusCheck);
  event CallWithContext(EthereumVaultConnector$EmitAllEvents$CallWithContext);
  event CollateralStatus(EthereumVaultConnector$EmitAllEvents$CollateralStatus);
  event ControllerStatus(EthereumVaultConnector$EmitAllEvents$ControllerStatus);
  event LockdownModeStatus(EthereumVaultConnector$EmitAllEvents$LockdownModeStatus);
  event NonceStatus(EthereumVaultConnector$EmitAllEvents$NonceStatus);
  event NonceUsed(EthereumVaultConnector$EmitAllEvents$NonceUsed);
  event OperatorStatus(EthereumVaultConnector$EmitAllEvents$OperatorStatus);
  event OwnerRegistered(EthereumVaultConnector$EmitAllEvents$OwnerRegistered);
  event PermitDisabledModeStatus(EthereumVaultConnector$EmitAllEvents$PermitDisabledModeStatus);
  event VaultStatusCheck(EthereumVaultConnector$EmitAllEvents$VaultStatusCheck);

  function onAccountStatusCheckEvent(EventContext memory ctx, EthereumVaultConnector$AccountStatusCheckEventParams memory inputs) virtual external override {
    emit AccountStatusCheck(EthereumVaultConnector$EmitAllEvents$AccountStatusCheck(inputs.account, inputs.controller));
  }
function onCallWithContextEvent(EventContext memory ctx, EthereumVaultConnector$CallWithContextEventParams memory inputs) virtual external override {
    emit CallWithContext(EthereumVaultConnector$EmitAllEvents$CallWithContext(inputs.caller, inputs.onBehalfOfAddressPrefix, inputs.onBehalfOfAccount, inputs.targetContract, inputs.selector));
  }
function onCollateralStatusEvent(EventContext memory ctx, EthereumVaultConnector$CollateralStatusEventParams memory inputs) virtual external override {
    emit CollateralStatus(EthereumVaultConnector$EmitAllEvents$CollateralStatus(inputs.account, inputs.collateral, inputs.enabled));
  }
function onControllerStatusEvent(EventContext memory ctx, EthereumVaultConnector$ControllerStatusEventParams memory inputs) virtual external override {
    emit ControllerStatus(EthereumVaultConnector$EmitAllEvents$ControllerStatus(inputs.account, inputs.controller, inputs.enabled));
  }
function onLockdownModeStatusEvent(EventContext memory ctx, EthereumVaultConnector$LockdownModeStatusEventParams memory inputs) virtual external override {
    emit LockdownModeStatus(EthereumVaultConnector$EmitAllEvents$LockdownModeStatus(inputs.addressPrefix, inputs.enabled));
  }
function onNonceStatusEvent(EventContext memory ctx, EthereumVaultConnector$NonceStatusEventParams memory inputs) virtual external override {
    emit NonceStatus(EthereumVaultConnector$EmitAllEvents$NonceStatus(inputs.addressPrefix, inputs.nonceNamespace, inputs.oldNonce, inputs.newNonce));
  }
function onNonceUsedEvent(EventContext memory ctx, EthereumVaultConnector$NonceUsedEventParams memory inputs) virtual external override {
    emit NonceUsed(EthereumVaultConnector$EmitAllEvents$NonceUsed(inputs.addressPrefix, inputs.nonceNamespace, inputs.nonce));
  }
function onOperatorStatusEvent(EventContext memory ctx, EthereumVaultConnector$OperatorStatusEventParams memory inputs) virtual external override {
    emit OperatorStatus(EthereumVaultConnector$EmitAllEvents$OperatorStatus(inputs.addressPrefix, inputs.operator, inputs.accountOperatorAuthorized));
  }
function onOwnerRegisteredEvent(EventContext memory ctx, EthereumVaultConnector$OwnerRegisteredEventParams memory inputs) virtual external override {
    emit OwnerRegistered(EthereumVaultConnector$EmitAllEvents$OwnerRegistered(inputs.addressPrefix, inputs.owner));
  }
function onPermitDisabledModeStatusEvent(EventContext memory ctx, EthereumVaultConnector$PermitDisabledModeStatusEventParams memory inputs) virtual external override {
    emit PermitDisabledModeStatus(EthereumVaultConnector$EmitAllEvents$PermitDisabledModeStatus(inputs.addressPrefix, inputs.enabled));
  }
function onVaultStatusCheckEvent(EventContext memory ctx, EthereumVaultConnector$VaultStatusCheckEventParams memory inputs) virtual external override {
    emit VaultStatusCheck(EthereumVaultConnector$EmitAllEvents$VaultStatusCheck(inputs.vault));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](11);
    triggers[0] = this.triggerOnAccountStatusCheckEvent();
    triggers[1] = this.triggerOnCallWithContextEvent();
    triggers[2] = this.triggerOnCollateralStatusEvent();
    triggers[3] = this.triggerOnControllerStatusEvent();
    triggers[4] = this.triggerOnLockdownModeStatusEvent();
    triggers[5] = this.triggerOnNonceStatusEvent();
    triggers[6] = this.triggerOnNonceUsedEvent();
    triggers[7] = this.triggerOnOperatorStatusEvent();
    triggers[8] = this.triggerOnOwnerRegisteredEvent();
    triggers[9] = this.triggerOnPermitDisabledModeStatusEvent();
    triggers[10] = this.triggerOnVaultStatusCheckEvent();
    return triggers;
  }
}