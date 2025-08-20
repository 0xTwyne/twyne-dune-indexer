// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function GenericFactory$Abi() pure returns (Abi memory) {
    return Abi("GenericFactory");
}
struct GenericFactory$CreateProxyFunctionInputs {
    address desiredImplementation;
    bool upgradeable;
    bytes trailingData;
}

struct GenericFactory$CreateProxyFunctionOutputs {
    address outArg0;
}

struct GenericFactory$GetProxyConfigFunctionInputs {
    address proxy;
}

struct GenericFactory$GenericFactory$ProxyConfig {
    bool upgradeable;
    address implementation;
    bytes trailingData;
}

struct GenericFactory$GetProxyConfigFunctionOutputs {
    GenericFactory$GenericFactory$ProxyConfig config;
}

struct GenericFactory$GetProxyListLengthFunctionOutputs {
    uint256 outArg0;
}

struct GenericFactory$GetProxyListSliceFunctionInputs {
    uint256 start;
    uint256 end;
}

struct GenericFactory$GetProxyListSliceFunctionOutputs {
    address[] list;
}

struct GenericFactory$ImplementationFunctionOutputs {
    address outArg0;
}

struct GenericFactory$IsProxyFunctionInputs {
    address proxy;
}

struct GenericFactory$IsProxyFunctionOutputs {
    bool outArg0;
}

struct GenericFactory$ProxyListFunctionInputs {
    uint256 outArg0;
}

struct GenericFactory$ProxyListFunctionOutputs {
    address outArg0;
}

struct GenericFactory$SetImplementationFunctionInputs {
    address newImplementation;
}

struct GenericFactory$SetUpgradeAdminFunctionInputs {
    address newUpgradeAdmin;
}

struct GenericFactory$UpgradeAdminFunctionOutputs {
    address outArg0;
}

struct GenericFactory$ProxyCreatedEventParams {
    address proxy;
    bool upgradeable;
    address implementation;
    bytes trailingData;
}

struct GenericFactory$SetImplementationEventParams {
    address newImplementation;
}

struct GenericFactory$SetUpgradeAdminEventParams {
    address newUpgradeAdmin;
}

abstract contract GenericFactory$OnGenesisEvent {
    function onGenesisEvent(EventContext memory ctx) virtual external;

    function triggerOnGenesisEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes32(0x6bf6eaff5e9af8fbccb949f4c38cc016936f8775363ccf4224db160365785d52),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGenesisEvent.selector
        });
    }
}

abstract contract GenericFactory$OnProxyCreatedEvent {
    function onProxyCreatedEvent(EventContext memory ctx, GenericFactory$ProxyCreatedEventParams memory inputs) virtual external;

    function triggerOnProxyCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes32(0x04e664079117e113faa9684bc14aecb41651cbf098b14eda271248c6d0cda57c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProxyCreatedEvent.selector
        });
    }
}

abstract contract GenericFactory$OnSetImplementationEvent {
    function onSetImplementationEvent(EventContext memory ctx, GenericFactory$SetImplementationEventParams memory inputs) virtual external;

    function triggerOnSetImplementationEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes32(0xddebe6de740fe0dd01cc33ffa314d11c6ac6acbbe50b80513c4c360ae7aa4f04),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetImplementationEvent.selector
        });
    }
}

abstract contract GenericFactory$OnSetUpgradeAdminEvent {
    function onSetUpgradeAdminEvent(EventContext memory ctx, GenericFactory$SetUpgradeAdminEventParams memory inputs) virtual external;

    function triggerOnSetUpgradeAdminEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes32(0x7b1ebd0f3ec81bf1cd5f478166ec87beaea1eee7f3bc2612295ae161048a239f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetUpgradeAdminEvent.selector
        });
    }
}

abstract contract GenericFactory$OnCreateProxyFunction {
    function onCreateProxyFunction(FunctionContext memory ctx, GenericFactory$CreateProxyFunctionInputs memory inputs, GenericFactory$CreateProxyFunctionOutputs memory outputs) virtual external;

    function triggerOnCreateProxyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x83e85b27),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreateProxyFunction.selector
        });
    }
}

abstract contract GenericFactory$PreCreateProxyFunction {
    function preCreateProxyFunction(PreFunctionContext memory ctx, GenericFactory$CreateProxyFunctionInputs memory inputs) virtual external;

    function triggerPreCreateProxyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x83e85b27),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreateProxyFunction.selector
        });
    }
}

abstract contract GenericFactory$OnGetProxyConfigFunction {
    function onGetProxyConfigFunction(FunctionContext memory ctx, GenericFactory$GetProxyConfigFunctionInputs memory inputs, GenericFactory$GetProxyConfigFunctionOutputs memory outputs) virtual external;

    function triggerOnGetProxyConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0xa20ea5c1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetProxyConfigFunction.selector
        });
    }
}

abstract contract GenericFactory$PreGetProxyConfigFunction {
    function preGetProxyConfigFunction(PreFunctionContext memory ctx, GenericFactory$GetProxyConfigFunctionInputs memory inputs) virtual external;

    function triggerPreGetProxyConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0xa20ea5c1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetProxyConfigFunction.selector
        });
    }
}

abstract contract GenericFactory$OnGetProxyListLengthFunction {
    function onGetProxyListLengthFunction(FunctionContext memory ctx, GenericFactory$GetProxyListLengthFunctionOutputs memory outputs) virtual external;

    function triggerOnGetProxyListLengthFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x0a68b7ba),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetProxyListLengthFunction.selector
        });
    }
}

abstract contract GenericFactory$PreGetProxyListLengthFunction {
    function preGetProxyListLengthFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetProxyListLengthFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x0a68b7ba),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetProxyListLengthFunction.selector
        });
    }
}

abstract contract GenericFactory$OnGetProxyListSliceFunction {
    function onGetProxyListSliceFunction(FunctionContext memory ctx, GenericFactory$GetProxyListSliceFunctionInputs memory inputs, GenericFactory$GetProxyListSliceFunctionOutputs memory outputs) virtual external;

    function triggerOnGetProxyListSliceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0xc0e96df6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetProxyListSliceFunction.selector
        });
    }
}

abstract contract GenericFactory$PreGetProxyListSliceFunction {
    function preGetProxyListSliceFunction(PreFunctionContext memory ctx, GenericFactory$GetProxyListSliceFunctionInputs memory inputs) virtual external;

    function triggerPreGetProxyListSliceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0xc0e96df6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetProxyListSliceFunction.selector
        });
    }
}

abstract contract GenericFactory$OnImplementationFunction {
    function onImplementationFunction(FunctionContext memory ctx, GenericFactory$ImplementationFunctionOutputs memory outputs) virtual external;

    function triggerOnImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x5c60da1b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onImplementationFunction.selector
        });
    }
}

abstract contract GenericFactory$PreImplementationFunction {
    function preImplementationFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x5c60da1b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preImplementationFunction.selector
        });
    }
}

abstract contract GenericFactory$OnIsProxyFunction {
    function onIsProxyFunction(FunctionContext memory ctx, GenericFactory$IsProxyFunctionInputs memory inputs, GenericFactory$IsProxyFunctionOutputs memory outputs) virtual external;

    function triggerOnIsProxyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x29710388),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsProxyFunction.selector
        });
    }
}

abstract contract GenericFactory$PreIsProxyFunction {
    function preIsProxyFunction(PreFunctionContext memory ctx, GenericFactory$IsProxyFunctionInputs memory inputs) virtual external;

    function triggerPreIsProxyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x29710388),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsProxyFunction.selector
        });
    }
}

abstract contract GenericFactory$OnProxyListFunction {
    function onProxyListFunction(FunctionContext memory ctx, GenericFactory$ProxyListFunctionInputs memory inputs, GenericFactory$ProxyListFunctionOutputs memory outputs) virtual external;

    function triggerOnProxyListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x378cdb62),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProxyListFunction.selector
        });
    }
}

abstract contract GenericFactory$PreProxyListFunction {
    function preProxyListFunction(PreFunctionContext memory ctx, GenericFactory$ProxyListFunctionInputs memory inputs) virtual external;

    function triggerPreProxyListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x378cdb62),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProxyListFunction.selector
        });
    }
}

abstract contract GenericFactory$OnSetImplementationFunction {
    function onSetImplementationFunction(FunctionContext memory ctx, GenericFactory$SetImplementationFunctionInputs memory inputs) virtual external;

    function triggerOnSetImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0xd784d426),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetImplementationFunction.selector
        });
    }
}

abstract contract GenericFactory$PreSetImplementationFunction {
    function preSetImplementationFunction(PreFunctionContext memory ctx, GenericFactory$SetImplementationFunctionInputs memory inputs) virtual external;

    function triggerPreSetImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0xd784d426),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetImplementationFunction.selector
        });
    }
}

abstract contract GenericFactory$OnSetUpgradeAdminFunction {
    function onSetUpgradeAdminFunction(FunctionContext memory ctx, GenericFactory$SetUpgradeAdminFunctionInputs memory inputs) virtual external;

    function triggerOnSetUpgradeAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x9342f417),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetUpgradeAdminFunction.selector
        });
    }
}

abstract contract GenericFactory$PreSetUpgradeAdminFunction {
    function preSetUpgradeAdminFunction(PreFunctionContext memory ctx, GenericFactory$SetUpgradeAdminFunctionInputs memory inputs) virtual external;

    function triggerPreSetUpgradeAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0x9342f417),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetUpgradeAdminFunction.selector
        });
    }
}

abstract contract GenericFactory$OnUpgradeAdminFunction {
    function onUpgradeAdminFunction(FunctionContext memory ctx, GenericFactory$UpgradeAdminFunctionOutputs memory outputs) virtual external;

    function triggerOnUpgradeAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0xc4d5608a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradeAdminFunction.selector
        });
    }
}

abstract contract GenericFactory$PreUpgradeAdminFunction {
    function preUpgradeAdminFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUpgradeAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "GenericFactory",
            selector: bytes4(0xc4d5608a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpgradeAdminFunction.selector
        });
    }
}


struct GenericFactory$EmitAllEvents$ProxyCreated {
  address proxy;
  bool upgradeable;
  address implementation;
  bytes trailingData;
}

struct GenericFactory$EmitAllEvents$SetImplementation {
  address newImplementation;
}

struct GenericFactory$EmitAllEvents$SetUpgradeAdmin {
  address newUpgradeAdmin;
}

contract GenericFactory$EmitAllEvents is
  GenericFactory$OnGenesisEvent,
GenericFactory$OnProxyCreatedEvent,
GenericFactory$OnSetImplementationEvent,
GenericFactory$OnSetUpgradeAdminEvent
{
  event Genesis();
  event ProxyCreated(GenericFactory$EmitAllEvents$ProxyCreated);
  event SetImplementation(GenericFactory$EmitAllEvents$SetImplementation);
  event SetUpgradeAdmin(GenericFactory$EmitAllEvents$SetUpgradeAdmin);

  function onGenesisEvent(EventContext memory ctx) virtual external override {
    emit Genesis();
  }
function onProxyCreatedEvent(EventContext memory ctx, GenericFactory$ProxyCreatedEventParams memory inputs) virtual external override {
    emit ProxyCreated(GenericFactory$EmitAllEvents$ProxyCreated(inputs.proxy, inputs.upgradeable, inputs.implementation, inputs.trailingData));
  }
function onSetImplementationEvent(EventContext memory ctx, GenericFactory$SetImplementationEventParams memory inputs) virtual external override {
    emit SetImplementation(GenericFactory$EmitAllEvents$SetImplementation(inputs.newImplementation));
  }
function onSetUpgradeAdminEvent(EventContext memory ctx, GenericFactory$SetUpgradeAdminEventParams memory inputs) virtual external override {
    emit SetUpgradeAdmin(GenericFactory$EmitAllEvents$SetUpgradeAdmin(inputs.newUpgradeAdmin));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](4);
    triggers[0] = this.triggerOnGenesisEvent();
    triggers[1] = this.triggerOnProxyCreatedEvent();
    triggers[2] = this.triggerOnSetImplementationEvent();
    triggers[3] = this.triggerOnSetUpgradeAdminEvent();
    return triggers;
  }
}