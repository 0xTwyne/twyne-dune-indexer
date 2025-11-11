// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function EulerCollateralVault$Abi() pure returns (Abi memory) {
    return Abi("EulerCollateralVault");
}
struct EulerCollateralVault$EvcFunctionOutputs {
    address outArg0;
}

struct EulerCollateralVault$AssetFunctionOutputs {
    address outArg0;
}

struct EulerCollateralVault$BalanceOfFunctionInputs {
    address user;
}

struct EulerCollateralVault$BalanceOfFunctionOutputs {
    uint256 outArg0;
}

struct EulerCollateralVault$BorrowFunctionInputs {
    uint256 _targetAmount;
    address _receiver;
}

struct EulerCollateralVault$BorrowerFunctionOutputs {
    address outArg0;
}

struct EulerCollateralVault$CanLiquidateFunctionOutputs {
    bool outArg0;
}

struct EulerCollateralVault$CanRebalanceFunctionOutputs {
    uint256 outArg0;
}

struct EulerCollateralVault$CheckVaultStatusFunctionOutputs {
    bytes4 outArg0;
}

struct EulerCollateralVault$CollateralVaultFactoryFunctionOutputs {
    address outArg0;
}

struct EulerCollateralVault$ConvertToAssetsFunctionInputs {
    uint256 shares;
}

struct EulerCollateralVault$ConvertToAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EulerCollateralVault$DepositFunctionInputs {
    uint256 assets;
}

struct EulerCollateralVault$DepositUnderlyingFunctionInputs {
    uint256 underlying;
}

struct EulerCollateralVault$EulerEvcFunctionOutputs {
    address outArg0;
}

struct EulerCollateralVault$InitializeFunctionInputs {
    address __asset;
    address __borrower;
    uint256 __liqLTV;
    address __vaultManager;
}

struct EulerCollateralVault$IntermediateVaultFunctionOutputs {
    address outArg0;
}

struct EulerCollateralVault$IsExternallyLiquidatedFunctionOutputs {
    bool outArg0;
}

struct EulerCollateralVault$MaxReleaseFunctionOutputs {
    uint256 outArg0;
}

struct EulerCollateralVault$MaxRepayFunctionOutputs {
    uint256 outArg0;
}

struct EulerCollateralVault$NameFunctionOutputs {
    string outArg0;
}

struct EulerCollateralVault$RedeemUnderlyingFunctionInputs {
    uint256 assets;
    address receiver;
}

struct EulerCollateralVault$RedeemUnderlyingFunctionOutputs {
    uint256 underlying;
}

struct EulerCollateralVault$RepayFunctionInputs {
    uint256 _amount;
}

struct EulerCollateralVault$SetTwyneLiqLtvFunctionInputs {
    uint256 _ltv;
}

struct EulerCollateralVault$SymbolFunctionOutputs {
    string outArg0;
}

struct EulerCollateralVault$TargetAssetFunctionOutputs {
    address outArg0;
}

struct EulerCollateralVault$TargetVaultFunctionOutputs {
    address outArg0;
}

struct EulerCollateralVault$TeleportFunctionInputs {
    uint256 toDeposit;
    uint256 toBorrow;
    uint8 subAccountId;
}

struct EulerCollateralVault$TotalAssetsDepositedOrReservedFunctionOutputs {
    uint256 outArg0;
}

struct EulerCollateralVault$TwyneLiqLtvFunctionOutputs {
    uint256 outArg0;
}

struct EulerCollateralVault$TwyneVaultManagerFunctionOutputs {
    address outArg0;
}

struct EulerCollateralVault$VersionFunctionOutputs {
    uint256 outArg0;
}

struct EulerCollateralVault$WithdrawFunctionInputs {
    uint256 assets;
    address receiver;
}

struct EulerCollateralVault$TBorrowEventParams {
    uint256 targetAmount;
    address receiver;
}

struct EulerCollateralVault$TDepositEventParams {
    uint256 amount;
}

struct EulerCollateralVault$TDepositUnderlyingEventParams {
    uint256 amount;
}

struct EulerCollateralVault$TRedeemUnderlyingEventParams {
    uint256 amount;
    address receiver;
}

struct EulerCollateralVault$TRepayEventParams {
    uint256 repayAmount;
}

struct EulerCollateralVault$TSkimEventParams {
    uint256 amount;
}

struct EulerCollateralVault$TTeleportEventParams {
    uint256 toDeposit;
    uint256 toBorrow;
}

struct EulerCollateralVault$TWithdrawEventParams {
    uint256 amount;
    address receiver;
}

abstract contract EulerCollateralVault$OnTBorrowEvent {
    function onTBorrowEvent(EventContext memory ctx, EulerCollateralVault$TBorrowEventParams memory inputs) virtual external;

    function triggerOnTBorrowEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0xde4f42b1727454f62e0f8b803f786bdf0c725998ffe2608545decdaad324b670),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTBorrowEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTDepositEvent {
    function onTDepositEvent(EventContext memory ctx, EulerCollateralVault$TDepositEventParams memory inputs) virtual external;

    function triggerOnTDepositEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0x729fe3250be1fe37041d8f9ee1649d82d8578a0230154a04fc00143efcb3d0ea),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTDepositEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTDepositUnderlyingEvent {
    function onTDepositUnderlyingEvent(EventContext memory ctx, EulerCollateralVault$TDepositUnderlyingEventParams memory inputs) virtual external;

    function triggerOnTDepositUnderlyingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0x8570c637af651287ed477b5c53ba29ef8d7dbb8c10a7cc4f496d870b5bea2ea8),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTDepositUnderlyingEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTHandleExternalLiquidationEvent {
    function onTHandleExternalLiquidationEvent(EventContext memory ctx) virtual external;

    function triggerOnTHandleExternalLiquidationEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0x201069227b1c078db0bf2f6c8d33cb0ae064045c18ce10c1017f360997ae8d3e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTHandleExternalLiquidationEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTRebalanceEvent {
    function onTRebalanceEvent(EventContext memory ctx) virtual external;

    function triggerOnTRebalanceEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0x7f89682ae65a1f951f91061a52d68beff208a52bbbb13b88ff3045a6c6d1bf92),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRebalanceEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTRedeemUnderlyingEvent {
    function onTRedeemUnderlyingEvent(EventContext memory ctx, EulerCollateralVault$TRedeemUnderlyingEventParams memory inputs) virtual external;

    function triggerOnTRedeemUnderlyingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0x3339ef804667402c8f3f362db72e43c0db110e5350d243b388abd9c534d147bb),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRedeemUnderlyingEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTRepayEvent {
    function onTRepayEvent(EventContext memory ctx, EulerCollateralVault$TRepayEventParams memory inputs) virtual external;

    function triggerOnTRepayEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0xda868d2eef48a736c565bda78058f72b57b928b32f991f0002678ce45172398b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRepayEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTSkimEvent {
    function onTSkimEvent(EventContext memory ctx, EulerCollateralVault$TSkimEventParams memory inputs) virtual external;

    function triggerOnTSkimEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0xbf070d83d8b5b8f55a9661ab7e6003ff366d49ace118b225d25a86194f4004d1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSkimEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTTeleportEvent {
    function onTTeleportEvent(EventContext memory ctx, EulerCollateralVault$TTeleportEventParams memory inputs) virtual external;

    function triggerOnTTeleportEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0x4e237f0423b2c96207fb350d6582eaaa4301aa520358058af3b5fdad69ec21bc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTTeleportEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTWithdrawEvent {
    function onTWithdrawEvent(EventContext memory ctx, EulerCollateralVault$TWithdrawEventParams memory inputs) virtual external;

    function triggerOnTWithdrawEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes32(0x226e3a154752424088fa9e17a43d1d4eb4738179083b3e9fb71b0a14e0949dcd),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTWithdrawEvent.selector
        });
    }
}

abstract contract EulerCollateralVault$OnEvcFunction {
    function onEvcFunction(FunctionContext memory ctx, EulerCollateralVault$EvcFunctionOutputs memory outputs) virtual external;

    function triggerOnEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEvcFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreEvcFunction {
    function preEvcFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEvcFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnAssetFunction {
    function onAssetFunction(FunctionContext memory ctx, EulerCollateralVault$AssetFunctionOutputs memory outputs) virtual external;

    function triggerOnAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x38d52e0f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAssetFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreAssetFunction {
    function preAssetFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x38d52e0f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAssetFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnBalanceOfFunction {
    function onBalanceOfFunction(FunctionContext memory ctx, EulerCollateralVault$BalanceOfFunctionInputs memory inputs, EulerCollateralVault$BalanceOfFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceOfFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreBalanceOfFunction {
    function preBalanceOfFunction(PreFunctionContext memory ctx, EulerCollateralVault$BalanceOfFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceOfFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnBorrowFunction {
    function onBorrowFunction(FunctionContext memory ctx, EulerCollateralVault$BorrowFunctionInputs memory inputs) virtual external;

    function triggerOnBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x4b3fd148),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBorrowFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreBorrowFunction {
    function preBorrowFunction(PreFunctionContext memory ctx, EulerCollateralVault$BorrowFunctionInputs memory inputs) virtual external;

    function triggerPreBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x4b3fd148),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBorrowFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnBorrowerFunction {
    function onBorrowerFunction(FunctionContext memory ctx, EulerCollateralVault$BorrowerFunctionOutputs memory outputs) virtual external;

    function triggerOnBorrowerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x7df1f1b9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBorrowerFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreBorrowerFunction {
    function preBorrowerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreBorrowerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x7df1f1b9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBorrowerFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnCanLiquidateFunction {
    function onCanLiquidateFunction(FunctionContext memory ctx, EulerCollateralVault$CanLiquidateFunctionOutputs memory outputs) virtual external;

    function triggerOnCanLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xcd13ee77),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCanLiquidateFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreCanLiquidateFunction {
    function preCanLiquidateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCanLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xcd13ee77),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCanLiquidateFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnCanRebalanceFunction {
    function onCanRebalanceFunction(FunctionContext memory ctx, EulerCollateralVault$CanRebalanceFunctionOutputs memory outputs) virtual external;

    function triggerOnCanRebalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xa06880c0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCanRebalanceFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreCanRebalanceFunction {
    function preCanRebalanceFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCanRebalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xa06880c0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCanRebalanceFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnCheckVaultStatusFunction {
    function onCheckVaultStatusFunction(FunctionContext memory ctx, EulerCollateralVault$CheckVaultStatusFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckVaultStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x4b3d1223),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckVaultStatusFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreCheckVaultStatusFunction {
    function preCheckVaultStatusFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCheckVaultStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x4b3d1223),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckVaultStatusFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnCollateralVaultFactoryFunction {
    function onCollateralVaultFactoryFunction(FunctionContext memory ctx, EulerCollateralVault$CollateralVaultFactoryFunctionOutputs memory outputs) virtual external;

    function triggerOnCollateralVaultFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x5297ffbb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCollateralVaultFactoryFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreCollateralVaultFactoryFunction {
    function preCollateralVaultFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCollateralVaultFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x5297ffbb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCollateralVaultFactoryFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnConvertToAssetsFunction {
    function onConvertToAssetsFunction(FunctionContext memory ctx, EulerCollateralVault$ConvertToAssetsFunctionInputs memory inputs, EulerCollateralVault$ConvertToAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnConvertToAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x07a2d13a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertToAssetsFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreConvertToAssetsFunction {
    function preConvertToAssetsFunction(PreFunctionContext memory ctx, EulerCollateralVault$ConvertToAssetsFunctionInputs memory inputs) virtual external;

    function triggerPreConvertToAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x07a2d13a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertToAssetsFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnDepositFunction {
    function onDepositFunction(FunctionContext memory ctx, EulerCollateralVault$DepositFunctionInputs memory inputs) virtual external;

    function triggerOnDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xb6b55f25),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreDepositFunction {
    function preDepositFunction(PreFunctionContext memory ctx, EulerCollateralVault$DepositFunctionInputs memory inputs) virtual external;

    function triggerPreDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xb6b55f25),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnDepositUnderlyingFunction {
    function onDepositUnderlyingFunction(FunctionContext memory ctx, EulerCollateralVault$DepositUnderlyingFunctionInputs memory inputs) virtual external;

    function triggerOnDepositUnderlyingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xb9f5be41),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositUnderlyingFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreDepositUnderlyingFunction {
    function preDepositUnderlyingFunction(PreFunctionContext memory ctx, EulerCollateralVault$DepositUnderlyingFunctionInputs memory inputs) virtual external;

    function triggerPreDepositUnderlyingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xb9f5be41),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositUnderlyingFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnEulerEvcFunction {
    function onEulerEvcFunction(FunctionContext memory ctx, EulerCollateralVault$EulerEvcFunctionOutputs memory outputs) virtual external;

    function triggerOnEulerEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x5b3046fd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEulerEvcFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreEulerEvcFunction {
    function preEulerEvcFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEulerEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x5b3046fd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEulerEvcFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnHandleExternalLiquidationFunction {
    function onHandleExternalLiquidationFunction(FunctionContext memory ctx) virtual external;

    function triggerOnHandleExternalLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x0e308a5e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onHandleExternalLiquidationFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreHandleExternalLiquidationFunction {
    function preHandleExternalLiquidationFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreHandleExternalLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x0e308a5e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preHandleExternalLiquidationFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, EulerCollateralVault$InitializeFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xbe203094),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, EulerCollateralVault$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xbe203094),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnIntermediateVaultFunction {
    function onIntermediateVaultFunction(FunctionContext memory ctx, EulerCollateralVault$IntermediateVaultFunctionOutputs memory outputs) virtual external;

    function triggerOnIntermediateVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x5519129a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIntermediateVaultFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreIntermediateVaultFunction {
    function preIntermediateVaultFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreIntermediateVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x5519129a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIntermediateVaultFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnIsExternallyLiquidatedFunction {
    function onIsExternallyLiquidatedFunction(FunctionContext memory ctx, EulerCollateralVault$IsExternallyLiquidatedFunctionOutputs memory outputs) virtual external;

    function triggerOnIsExternallyLiquidatedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xe18b419f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsExternallyLiquidatedFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreIsExternallyLiquidatedFunction {
    function preIsExternallyLiquidatedFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreIsExternallyLiquidatedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xe18b419f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsExternallyLiquidatedFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnLiquidateFunction {
    function onLiquidateFunction(FunctionContext memory ctx) virtual external;

    function triggerOnLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x28a07025),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreLiquidateFunction {
    function preLiquidateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x28a07025),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLiquidateFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnMaxReleaseFunction {
    function onMaxReleaseFunction(FunctionContext memory ctx, EulerCollateralVault$MaxReleaseFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxReleaseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x800aac03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxReleaseFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreMaxReleaseFunction {
    function preMaxReleaseFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMaxReleaseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x800aac03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxReleaseFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnMaxRepayFunction {
    function onMaxRepayFunction(FunctionContext memory ctx, EulerCollateralVault$MaxRepayFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x548e2132),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxRepayFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreMaxRepayFunction {
    function preMaxRepayFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMaxRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x548e2132),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxRepayFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnNameFunction {
    function onNameFunction(FunctionContext memory ctx, EulerCollateralVault$NameFunctionOutputs memory outputs) virtual external;

    function triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNameFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreNameFunction {
    function preNameFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNameFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnRebalanceFunction {
    function onRebalanceFunction(FunctionContext memory ctx) virtual external;

    function triggerOnRebalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x7d7c2a1c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRebalanceFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreRebalanceFunction {
    function preRebalanceFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRebalanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x7d7c2a1c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRebalanceFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnRedeemUnderlyingFunction {
    function onRedeemUnderlyingFunction(FunctionContext memory ctx, EulerCollateralVault$RedeemUnderlyingFunctionInputs memory inputs, EulerCollateralVault$RedeemUnderlyingFunctionOutputs memory outputs) virtual external;

    function triggerOnRedeemUnderlyingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xf0933698),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRedeemUnderlyingFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreRedeemUnderlyingFunction {
    function preRedeemUnderlyingFunction(PreFunctionContext memory ctx, EulerCollateralVault$RedeemUnderlyingFunctionInputs memory inputs) virtual external;

    function triggerPreRedeemUnderlyingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xf0933698),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRedeemUnderlyingFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnRepayFunction {
    function onRepayFunction(FunctionContext memory ctx, EulerCollateralVault$RepayFunctionInputs memory inputs) virtual external;

    function triggerOnRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x371fd8e6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreRepayFunction {
    function preRepayFunction(PreFunctionContext memory ctx, EulerCollateralVault$RepayFunctionInputs memory inputs) virtual external;

    function triggerPreRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x371fd8e6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRepayFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnSetTwyneLiqLtvFunction {
    function onSetTwyneLiqLtvFunction(FunctionContext memory ctx, EulerCollateralVault$SetTwyneLiqLtvFunctionInputs memory inputs) virtual external;

    function triggerOnSetTwyneLiqLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xca19bcd4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetTwyneLiqLtvFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreSetTwyneLiqLtvFunction {
    function preSetTwyneLiqLtvFunction(PreFunctionContext memory ctx, EulerCollateralVault$SetTwyneLiqLtvFunctionInputs memory inputs) virtual external;

    function triggerPreSetTwyneLiqLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xca19bcd4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetTwyneLiqLtvFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnSkimFunction {
    function onSkimFunction(FunctionContext memory ctx) virtual external;

    function triggerOnSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x1dd19cb4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSkimFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreSkimFunction {
    function preSkimFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x1dd19cb4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSkimFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnSymbolFunction {
    function onSymbolFunction(FunctionContext memory ctx, EulerCollateralVault$SymbolFunctionOutputs memory outputs) virtual external;

    function triggerOnSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSymbolFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreSymbolFunction {
    function preSymbolFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSymbolFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTargetAssetFunction {
    function onTargetAssetFunction(FunctionContext memory ctx, EulerCollateralVault$TargetAssetFunctionOutputs memory outputs) virtual external;

    function triggerOnTargetAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x3d4403ac),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTargetAssetFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreTargetAssetFunction {
    function preTargetAssetFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTargetAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x3d4403ac),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTargetAssetFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTargetVaultFunction {
    function onTargetVaultFunction(FunctionContext memory ctx, EulerCollateralVault$TargetVaultFunctionOutputs memory outputs) virtual external;

    function triggerOnTargetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x1f92db45),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTargetVaultFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreTargetVaultFunction {
    function preTargetVaultFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTargetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x1f92db45),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTargetVaultFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTeleportFunction {
    function onTeleportFunction(FunctionContext memory ctx, EulerCollateralVault$TeleportFunctionInputs memory inputs) virtual external;

    function triggerOnTeleportFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x81054573),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTeleportFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreTeleportFunction {
    function preTeleportFunction(PreFunctionContext memory ctx, EulerCollateralVault$TeleportFunctionInputs memory inputs) virtual external;

    function triggerPreTeleportFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x81054573),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTeleportFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTotalAssetsDepositedOrReservedFunction {
    function onTotalAssetsDepositedOrReservedFunction(FunctionContext memory ctx, EulerCollateralVault$TotalAssetsDepositedOrReservedFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalAssetsDepositedOrReservedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x68851d2f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalAssetsDepositedOrReservedFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreTotalAssetsDepositedOrReservedFunction {
    function preTotalAssetsDepositedOrReservedFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalAssetsDepositedOrReservedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x68851d2f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalAssetsDepositedOrReservedFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTwyneLiqLtvFunction {
    function onTwyneLiqLtvFunction(FunctionContext memory ctx, EulerCollateralVault$TwyneLiqLtvFunctionOutputs memory outputs) virtual external;

    function triggerOnTwyneLiqLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xd09f2701),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTwyneLiqLtvFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreTwyneLiqLtvFunction {
    function preTwyneLiqLtvFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTwyneLiqLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0xd09f2701),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTwyneLiqLtvFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnTwyneVaultManagerFunction {
    function onTwyneVaultManagerFunction(FunctionContext memory ctx, EulerCollateralVault$TwyneVaultManagerFunctionOutputs memory outputs) virtual external;

    function triggerOnTwyneVaultManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x7ff80498),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTwyneVaultManagerFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreTwyneVaultManagerFunction {
    function preTwyneVaultManagerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTwyneVaultManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x7ff80498),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTwyneVaultManagerFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnVersionFunction {
    function onVersionFunction(FunctionContext memory ctx, EulerCollateralVault$VersionFunctionOutputs memory outputs) virtual external;

    function triggerOnVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVersionFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreVersionFunction {
    function preVersionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVersionFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$OnWithdrawFunction {
    function onWithdrawFunction(FunctionContext memory ctx, EulerCollateralVault$WithdrawFunctionInputs memory inputs) virtual external;

    function triggerOnWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x00f714ce),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawFunction.selector
        });
    }
}

abstract contract EulerCollateralVault$PreWithdrawFunction {
    function preWithdrawFunction(PreFunctionContext memory ctx, EulerCollateralVault$WithdrawFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerCollateralVault",
            selector: bytes4(0x00f714ce),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawFunction.selector
        });
    }
}


struct EulerCollateralVault$EmitAllEvents$TBorrow {
  uint256 targetAmount;
  address receiver;
}

struct EulerCollateralVault$EmitAllEvents$TDeposit {
  uint256 amount;
}

struct EulerCollateralVault$EmitAllEvents$TDepositUnderlying {
  uint256 amount;
}

struct EulerCollateralVault$EmitAllEvents$TRedeemUnderlying {
  uint256 amount;
  address receiver;
}

struct EulerCollateralVault$EmitAllEvents$TRepay {
  uint256 repayAmount;
}

struct EulerCollateralVault$EmitAllEvents$TSkim {
  uint256 amount;
}

struct EulerCollateralVault$EmitAllEvents$TTeleport {
  uint256 toDeposit;
  uint256 toBorrow;
}

struct EulerCollateralVault$EmitAllEvents$TWithdraw {
  uint256 amount;
  address receiver;
}

contract EulerCollateralVault$EmitAllEvents is
  EulerCollateralVault$OnTBorrowEvent,
EulerCollateralVault$OnTDepositEvent,
EulerCollateralVault$OnTDepositUnderlyingEvent,
EulerCollateralVault$OnTHandleExternalLiquidationEvent,
EulerCollateralVault$OnTRebalanceEvent,
EulerCollateralVault$OnTRedeemUnderlyingEvent,
EulerCollateralVault$OnTRepayEvent,
EulerCollateralVault$OnTSkimEvent,
EulerCollateralVault$OnTTeleportEvent,
EulerCollateralVault$OnTWithdrawEvent
{
  event TBorrow(EulerCollateralVault$EmitAllEvents$TBorrow);
  event TDeposit(EulerCollateralVault$EmitAllEvents$TDeposit);
  event TDepositUnderlying(EulerCollateralVault$EmitAllEvents$TDepositUnderlying);
  event THandleExternalLiquidation();
  event TRebalance();
  event TRedeemUnderlying(EulerCollateralVault$EmitAllEvents$TRedeemUnderlying);
  event TRepay(EulerCollateralVault$EmitAllEvents$TRepay);
  event TSkim(EulerCollateralVault$EmitAllEvents$TSkim);
  event TTeleport(EulerCollateralVault$EmitAllEvents$TTeleport);
  event TWithdraw(EulerCollateralVault$EmitAllEvents$TWithdraw);

  function onTBorrowEvent(EventContext memory ctx, EulerCollateralVault$TBorrowEventParams memory inputs) virtual external override {
    emit TBorrow(EulerCollateralVault$EmitAllEvents$TBorrow(inputs.targetAmount, inputs.receiver));
  }
function onTDepositEvent(EventContext memory ctx, EulerCollateralVault$TDepositEventParams memory inputs) virtual external override {
    emit TDeposit(EulerCollateralVault$EmitAllEvents$TDeposit(inputs.amount));
  }
function onTDepositUnderlyingEvent(EventContext memory ctx, EulerCollateralVault$TDepositUnderlyingEventParams memory inputs) virtual external override {
    emit TDepositUnderlying(EulerCollateralVault$EmitAllEvents$TDepositUnderlying(inputs.amount));
  }
function onTHandleExternalLiquidationEvent(EventContext memory ctx) virtual external override {
    emit THandleExternalLiquidation();
  }
function onTRebalanceEvent(EventContext memory ctx) virtual external override {
    emit TRebalance();
  }
function onTRedeemUnderlyingEvent(EventContext memory ctx, EulerCollateralVault$TRedeemUnderlyingEventParams memory inputs) virtual external override {
    emit TRedeemUnderlying(EulerCollateralVault$EmitAllEvents$TRedeemUnderlying(inputs.amount, inputs.receiver));
  }
function onTRepayEvent(EventContext memory ctx, EulerCollateralVault$TRepayEventParams memory inputs) virtual external override {
    emit TRepay(EulerCollateralVault$EmitAllEvents$TRepay(inputs.repayAmount));
  }
function onTSkimEvent(EventContext memory ctx, EulerCollateralVault$TSkimEventParams memory inputs) virtual external override {
    emit TSkim(EulerCollateralVault$EmitAllEvents$TSkim(inputs.amount));
  }
function onTTeleportEvent(EventContext memory ctx, EulerCollateralVault$TTeleportEventParams memory inputs) virtual external override {
    emit TTeleport(EulerCollateralVault$EmitAllEvents$TTeleport(inputs.toDeposit, inputs.toBorrow));
  }
function onTWithdrawEvent(EventContext memory ctx, EulerCollateralVault$TWithdrawEventParams memory inputs) virtual external override {
    emit TWithdraw(EulerCollateralVault$EmitAllEvents$TWithdraw(inputs.amount, inputs.receiver));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](10);
    triggers[0] = this.triggerOnTBorrowEvent();
    triggers[1] = this.triggerOnTDepositEvent();
    triggers[2] = this.triggerOnTDepositUnderlyingEvent();
    triggers[3] = this.triggerOnTHandleExternalLiquidationEvent();
    triggers[4] = this.triggerOnTRebalanceEvent();
    triggers[5] = this.triggerOnTRedeemUnderlyingEvent();
    triggers[6] = this.triggerOnTRepayEvent();
    triggers[7] = this.triggerOnTSkimEvent();
    triggers[8] = this.triggerOnTTeleportEvent();
    triggers[9] = this.triggerOnTWithdrawEvent();
    return triggers;
  }
}