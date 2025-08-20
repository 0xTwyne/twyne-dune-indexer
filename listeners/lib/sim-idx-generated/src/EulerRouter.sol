// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function EulerRouter$Abi() pure returns (Abi memory) {
    return Abi("EulerRouter");
}
struct EulerRouter$EvcFunctionOutputs {
    address outArg0;
}

struct EulerRouter$FallbackOracleFunctionOutputs {
    address outArg0;
}

struct EulerRouter$GetConfiguredOracleFunctionInputs {
    address base;
    address quote;
}

struct EulerRouter$GetConfiguredOracleFunctionOutputs {
    address outArg0;
}

struct EulerRouter$GetQuoteFunctionInputs {
    uint256 inAmount;
    address base;
    address quote;
}

struct EulerRouter$GetQuoteFunctionOutputs {
    uint256 outArg0;
}

struct EulerRouter$GetQuotesFunctionInputs {
    uint256 inAmount;
    address base;
    address quote;
}

struct EulerRouter$GetQuotesFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct EulerRouter$GovSetConfigFunctionInputs {
    address base;
    address quote;
    address oracle;
}

struct EulerRouter$GovSetFallbackOracleFunctionInputs {
    address _fallbackOracle;
}

struct EulerRouter$GovSetResolvedVaultFunctionInputs {
    address vault;
    bool set;
}

struct EulerRouter$GovernorFunctionOutputs {
    address outArg0;
}

struct EulerRouter$NameFunctionOutputs {
    string outArg0;
}

struct EulerRouter$ResolveOracleFunctionInputs {
    uint256 inAmount;
    address base;
    address quote;
}

struct EulerRouter$ResolveOracleFunctionOutputs {
    uint256 outArg0;
    address outArg1;
    address outArg2;
    address outArg3;
}

struct EulerRouter$ResolvedVaultsFunctionInputs {
    address vault;
}

struct EulerRouter$ResolvedVaultsFunctionOutputs {
    address asset;
}

struct EulerRouter$TransferGovernanceFunctionInputs {
    address newGovernor;
}

struct EulerRouter$ConfigSetEventParams {
    address asset0;
    address asset1;
    address oracle;
}

struct EulerRouter$FallbackOracleSetEventParams {
    address fallbackOracle;
}

struct EulerRouter$GovernorSetEventParams {
    address oldGovernor;
    address newGovernor;
}

struct EulerRouter$ResolvedVaultSetEventParams {
    address vault;
    address asset;
}

abstract contract EulerRouter$OnConfigSetEvent {
    function onConfigSetEvent(EventContext memory ctx, EulerRouter$ConfigSetEventParams memory inputs) virtual external;

    function triggerOnConfigSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes32(0x4ac83f39568b63f952374c82351889b07aff4f7e261232a20ba5a2a6d82b9ce0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConfigSetEvent.selector
        });
    }
}

abstract contract EulerRouter$OnFallbackOracleSetEvent {
    function onFallbackOracleSetEvent(EventContext memory ctx, EulerRouter$FallbackOracleSetEventParams memory inputs) virtual external;

    function triggerOnFallbackOracleSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes32(0xef21cd88756d665855f56a2652b7eda229d6f3102988a95975e46964d24d478a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFallbackOracleSetEvent.selector
        });
    }
}

abstract contract EulerRouter$OnGovernorSetEvent {
    function onGovernorSetEvent(EventContext memory ctx, EulerRouter$GovernorSetEventParams memory inputs) virtual external;

    function triggerOnGovernorSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes32(0xf31bb200dbf42bb9cecaa49dceb87eae178b024ad3cf2930b4aaac5cb0f96ec0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovernorSetEvent.selector
        });
    }
}

abstract contract EulerRouter$OnResolvedVaultSetEvent {
    function onResolvedVaultSetEvent(EventContext memory ctx, EulerRouter$ResolvedVaultSetEventParams memory inputs) virtual external;

    function triggerOnResolvedVaultSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes32(0x15beaec71c94ee69b5a824e905ca6d1260da10196b715c38b565b80180f630ce),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onResolvedVaultSetEvent.selector
        });
    }
}

abstract contract EulerRouter$OnEvcFunction {
    function onEvcFunction(FunctionContext memory ctx, EulerRouter$EvcFunctionOutputs memory outputs) virtual external;

    function triggerOnEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEvcFunction.selector
        });
    }
}

abstract contract EulerRouter$PreEvcFunction {
    function preEvcFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEvcFunction.selector
        });
    }
}

abstract contract EulerRouter$OnFallbackOracleFunction {
    function onFallbackOracleFunction(FunctionContext memory ctx, EulerRouter$FallbackOracleFunctionOutputs memory outputs) virtual external;

    function triggerOnFallbackOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x629838e5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFallbackOracleFunction.selector
        });
    }
}

abstract contract EulerRouter$PreFallbackOracleFunction {
    function preFallbackOracleFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFallbackOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x629838e5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFallbackOracleFunction.selector
        });
    }
}

abstract contract EulerRouter$OnGetConfiguredOracleFunction {
    function onGetConfiguredOracleFunction(FunctionContext memory ctx, EulerRouter$GetConfiguredOracleFunctionInputs memory inputs, EulerRouter$GetConfiguredOracleFunctionOutputs memory outputs) virtual external;

    function triggerOnGetConfiguredOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x8aa77608),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetConfiguredOracleFunction.selector
        });
    }
}

abstract contract EulerRouter$PreGetConfiguredOracleFunction {
    function preGetConfiguredOracleFunction(PreFunctionContext memory ctx, EulerRouter$GetConfiguredOracleFunctionInputs memory inputs) virtual external;

    function triggerPreGetConfiguredOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x8aa77608),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetConfiguredOracleFunction.selector
        });
    }
}

abstract contract EulerRouter$OnGetQuoteFunction {
    function onGetQuoteFunction(FunctionContext memory ctx, EulerRouter$GetQuoteFunctionInputs memory inputs, EulerRouter$GetQuoteFunctionOutputs memory outputs) virtual external;

    function triggerOnGetQuoteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xae68676c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetQuoteFunction.selector
        });
    }
}

abstract contract EulerRouter$PreGetQuoteFunction {
    function preGetQuoteFunction(PreFunctionContext memory ctx, EulerRouter$GetQuoteFunctionInputs memory inputs) virtual external;

    function triggerPreGetQuoteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xae68676c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetQuoteFunction.selector
        });
    }
}

abstract contract EulerRouter$OnGetQuotesFunction {
    function onGetQuotesFunction(FunctionContext memory ctx, EulerRouter$GetQuotesFunctionInputs memory inputs, EulerRouter$GetQuotesFunctionOutputs memory outputs) virtual external;

    function triggerOnGetQuotesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x0579e61f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetQuotesFunction.selector
        });
    }
}

abstract contract EulerRouter$PreGetQuotesFunction {
    function preGetQuotesFunction(PreFunctionContext memory ctx, EulerRouter$GetQuotesFunctionInputs memory inputs) virtual external;

    function triggerPreGetQuotesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x0579e61f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetQuotesFunction.selector
        });
    }
}

abstract contract EulerRouter$OnGovSetConfigFunction {
    function onGovSetConfigFunction(FunctionContext memory ctx, EulerRouter$GovSetConfigFunctionInputs memory inputs) virtual external;

    function triggerOnGovSetConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x06c570c1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetConfigFunction.selector
        });
    }
}

abstract contract EulerRouter$PreGovSetConfigFunction {
    function preGovSetConfigFunction(PreFunctionContext memory ctx, EulerRouter$GovSetConfigFunctionInputs memory inputs) virtual external;

    function triggerPreGovSetConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x06c570c1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGovSetConfigFunction.selector
        });
    }
}

abstract contract EulerRouter$OnGovSetFallbackOracleFunction {
    function onGovSetFallbackOracleFunction(FunctionContext memory ctx, EulerRouter$GovSetFallbackOracleFunctionInputs memory inputs) virtual external;

    function triggerOnGovSetFallbackOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xeab49501),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetFallbackOracleFunction.selector
        });
    }
}

abstract contract EulerRouter$PreGovSetFallbackOracleFunction {
    function preGovSetFallbackOracleFunction(PreFunctionContext memory ctx, EulerRouter$GovSetFallbackOracleFunctionInputs memory inputs) virtual external;

    function triggerPreGovSetFallbackOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xeab49501),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGovSetFallbackOracleFunction.selector
        });
    }
}

abstract contract EulerRouter$OnGovSetResolvedVaultFunction {
    function onGovSetResolvedVaultFunction(FunctionContext memory ctx, EulerRouter$GovSetResolvedVaultFunctionInputs memory inputs) virtual external;

    function triggerOnGovSetResolvedVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xd6c02926),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetResolvedVaultFunction.selector
        });
    }
}

abstract contract EulerRouter$PreGovSetResolvedVaultFunction {
    function preGovSetResolvedVaultFunction(PreFunctionContext memory ctx, EulerRouter$GovSetResolvedVaultFunctionInputs memory inputs) virtual external;

    function triggerPreGovSetResolvedVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xd6c02926),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGovSetResolvedVaultFunction.selector
        });
    }
}

abstract contract EulerRouter$OnGovernorFunction {
    function onGovernorFunction(FunctionContext memory ctx, EulerRouter$GovernorFunctionOutputs memory outputs) virtual external;

    function triggerOnGovernorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x0c340a24),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovernorFunction.selector
        });
    }
}

abstract contract EulerRouter$PreGovernorFunction {
    function preGovernorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGovernorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x0c340a24),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGovernorFunction.selector
        });
    }
}

abstract contract EulerRouter$OnNameFunction {
    function onNameFunction(FunctionContext memory ctx, EulerRouter$NameFunctionOutputs memory outputs) virtual external;

    function triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNameFunction.selector
        });
    }
}

abstract contract EulerRouter$PreNameFunction {
    function preNameFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNameFunction.selector
        });
    }
}

abstract contract EulerRouter$OnResolveOracleFunction {
    function onResolveOracleFunction(FunctionContext memory ctx, EulerRouter$ResolveOracleFunctionInputs memory inputs, EulerRouter$ResolveOracleFunctionOutputs memory outputs) virtual external;

    function triggerOnResolveOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x8418e6f3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onResolveOracleFunction.selector
        });
    }
}

abstract contract EulerRouter$PreResolveOracleFunction {
    function preResolveOracleFunction(PreFunctionContext memory ctx, EulerRouter$ResolveOracleFunctionInputs memory inputs) virtual external;

    function triggerPreResolveOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x8418e6f3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preResolveOracleFunction.selector
        });
    }
}

abstract contract EulerRouter$OnResolvedVaultsFunction {
    function onResolvedVaultsFunction(FunctionContext memory ctx, EulerRouter$ResolvedVaultsFunctionInputs memory inputs, EulerRouter$ResolvedVaultsFunctionOutputs memory outputs) virtual external;

    function triggerOnResolvedVaultsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x5ca40017),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onResolvedVaultsFunction.selector
        });
    }
}

abstract contract EulerRouter$PreResolvedVaultsFunction {
    function preResolvedVaultsFunction(PreFunctionContext memory ctx, EulerRouter$ResolvedVaultsFunctionInputs memory inputs) virtual external;

    function triggerPreResolvedVaultsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0x5ca40017),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preResolvedVaultsFunction.selector
        });
    }
}

abstract contract EulerRouter$OnTransferGovernanceFunction {
    function onTransferGovernanceFunction(FunctionContext memory ctx, EulerRouter$TransferGovernanceFunctionInputs memory inputs) virtual external;

    function triggerOnTransferGovernanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xd38bfff4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferGovernanceFunction.selector
        });
    }
}

abstract contract EulerRouter$PreTransferGovernanceFunction {
    function preTransferGovernanceFunction(PreFunctionContext memory ctx, EulerRouter$TransferGovernanceFunctionInputs memory inputs) virtual external;

    function triggerPreTransferGovernanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerRouter",
            selector: bytes4(0xd38bfff4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferGovernanceFunction.selector
        });
    }
}


struct EulerRouter$EmitAllEvents$ConfigSet {
  address asset0;
  address asset1;
  address oracle;
}

struct EulerRouter$EmitAllEvents$FallbackOracleSet {
  address fallbackOracle;
}

struct EulerRouter$EmitAllEvents$GovernorSet {
  address oldGovernor;
  address newGovernor;
}

struct EulerRouter$EmitAllEvents$ResolvedVaultSet {
  address vault;
  address asset;
}

contract EulerRouter$EmitAllEvents is
  EulerRouter$OnConfigSetEvent,
EulerRouter$OnFallbackOracleSetEvent,
EulerRouter$OnGovernorSetEvent,
EulerRouter$OnResolvedVaultSetEvent
{
  event ConfigSet(EulerRouter$EmitAllEvents$ConfigSet);
  event FallbackOracleSet(EulerRouter$EmitAllEvents$FallbackOracleSet);
  event GovernorSet(EulerRouter$EmitAllEvents$GovernorSet);
  event ResolvedVaultSet(EulerRouter$EmitAllEvents$ResolvedVaultSet);

  function onConfigSetEvent(EventContext memory ctx, EulerRouter$ConfigSetEventParams memory inputs) virtual external override {
    emit ConfigSet(EulerRouter$EmitAllEvents$ConfigSet(inputs.asset0, inputs.asset1, inputs.oracle));
  }
function onFallbackOracleSetEvent(EventContext memory ctx, EulerRouter$FallbackOracleSetEventParams memory inputs) virtual external override {
    emit FallbackOracleSet(EulerRouter$EmitAllEvents$FallbackOracleSet(inputs.fallbackOracle));
  }
function onGovernorSetEvent(EventContext memory ctx, EulerRouter$GovernorSetEventParams memory inputs) virtual external override {
    emit GovernorSet(EulerRouter$EmitAllEvents$GovernorSet(inputs.oldGovernor, inputs.newGovernor));
  }
function onResolvedVaultSetEvent(EventContext memory ctx, EulerRouter$ResolvedVaultSetEventParams memory inputs) virtual external override {
    emit ResolvedVaultSet(EulerRouter$EmitAllEvents$ResolvedVaultSet(inputs.vault, inputs.asset));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](4);
    triggers[0] = this.triggerOnConfigSetEvent();
    triggers[1] = this.triggerOnFallbackOracleSetEvent();
    triggers[2] = this.triggerOnGovernorSetEvent();
    triggers[3] = this.triggerOnResolvedVaultSetEvent();
    return triggers;
  }
}