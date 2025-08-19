// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function CollateralVaultFactory$Abi() pure returns (Abi memory) {
    return Abi("CollateralVaultFactory");
}
struct CollateralVaultFactory$EvcFunctionOutputs {
    address outArg0;
}

struct CollateralVaultFactory$CollateralVaultBeaconFunctionInputs {
    address targetVault;
}

struct CollateralVaultFactory$CollateralVaultBeaconFunctionOutputs {
    address beacon;
}

struct CollateralVaultFactory$CollateralVaultsFunctionInputs {
    address borrower;
    uint256 outArg1;
}

struct CollateralVaultFactory$CollateralVaultsFunctionOutputs {
    address collateralVaults;
}

struct CollateralVaultFactory$CreateCollateralVaultFunctionInputs {
    address _asset;
    address _targetVault;
    uint256 _liqLTV;
}

struct CollateralVaultFactory$CreateCollateralVaultFunctionOutputs {
    address vault;
}

struct CollateralVaultFactory$GetCollateralVaultsFunctionInputs {
    address borrower;
}

struct CollateralVaultFactory$GetCollateralVaultsFunctionOutputs {
    address[] outArg0;
}

struct CollateralVaultFactory$IsCollateralVaultFunctionInputs {
    address outArg0;
}

struct CollateralVaultFactory$IsCollateralVaultFunctionOutputs {
    bool outArg0;
}

struct CollateralVaultFactory$NonceFunctionInputs {
    address outArg0;
}

struct CollateralVaultFactory$NonceFunctionOutputs {
    uint256 nonce;
}

struct CollateralVaultFactory$OwnerFunctionOutputs {
    address outArg0;
}

struct CollateralVaultFactory$PauseFunctionInputs {
    bool p;
}

struct CollateralVaultFactory$PausedFunctionOutputs {
    bool outArg0;
}

struct CollateralVaultFactory$SetBeaconFunctionInputs {
    address targetVault;
    address beacon;
}

struct CollateralVaultFactory$SetCollateralVaultLiquidatedFunctionInputs {
    address liquidator;
}

struct CollateralVaultFactory$SetVaultManagerFunctionInputs {
    address _manager;
}

struct CollateralVaultFactory$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct CollateralVaultFactory$VaultManagerFunctionOutputs {
    address outArg0;
}

struct CollateralVaultFactory$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct CollateralVaultFactory$PausedEventParams {
    address account;
}

struct CollateralVaultFactory$TAddAllowedTargetVaultEventParams {
    address intermediateVault;
    address targetVault;
}

struct CollateralVaultFactory$TBorrowEventParams {
    uint256 targetAmount;
    address receiver;
}

struct CollateralVaultFactory$TCollateralVaultCreatedEventParams {
    address vault;
}

struct CollateralVaultFactory$TDepositEventParams {
    uint256 amount;
}

struct CollateralVaultFactory$TDepositUnderlyingEventParams {
    uint256 amount;
}

struct CollateralVaultFactory$TDoCallEventParams {
    address to;
    uint256 value;
    bytes data;
}

struct CollateralVaultFactory$TFactoryPauseEventParams {
    bool pause;
}

struct CollateralVaultFactory$TRedeemUnderlyingEventParams {
    uint256 amount;
    address receiver;
}

struct CollateralVaultFactory$TRemoveAllowedTargetVaultEventParams {
    address intermediateVault;
    address targetVault;
    uint256 index;
}

struct CollateralVaultFactory$TRepayEventParams {
    uint256 repayAmount;
}

struct CollateralVaultFactory$TSetBeaconEventParams {
    address targetVault;
    address beacon;
}

struct CollateralVaultFactory$TSetCollateralVaultFactoryEventParams {
    address factory;
}

struct CollateralVaultFactory$TSetCollateralVaultLiquidatedEventParams {
    address collateralVault;
    address liquidator;
}

struct CollateralVaultFactory$TSetExternalLiqBufferEventParams {
    address collateralAddress;
    uint16 liqBuffer;
}

struct CollateralVaultFactory$TSetIntermediateVaultEventParams {
    address intermediateVault;
}

struct CollateralVaultFactory$TSetLtvEventParams {
    address intermediateVault;
    address collateralVault;
    uint16 borrowLimit;
    uint16 liquidationLimit;
    uint32 rampDuration;
}

struct CollateralVaultFactory$TSetMaxLiqLtvEventParams {
    address collateralAddress;
    uint16 ltv;
}

struct CollateralVaultFactory$TSetOracleResolvedVaultEventParams {
    address collateralAddress;
    bool allow;
}

struct CollateralVaultFactory$TSetOracleRouterEventParams {
    address newOracleRouter;
}

struct CollateralVaultFactory$TSetTwyneLiqLtvEventParams {
    uint256 ltv;
}

struct CollateralVaultFactory$TSetVaultManagerEventParams {
    address vaultManager;
}

struct CollateralVaultFactory$TTeleportEventParams {
    uint256 toDeposit;
    uint256 toBorrow;
}

struct CollateralVaultFactory$TWithdrawEventParams {
    uint256 amount;
    address receiver;
}

struct CollateralVaultFactory$UnpausedEventParams {
    address account;
}

abstract contract CollateralVaultFactory$OnOwnershipTransferredEvent {
    function onOwnershipTransferredEvent(EventContext memory ctx, CollateralVaultFactory$OwnershipTransferredEventParams memory inputs) virtual external;

    function triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnPausedEvent {
    function onPausedEvent(EventContext memory ctx, CollateralVaultFactory$PausedEventParams memory inputs) virtual external;

    function triggerOnPausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPausedEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTAddAllowedTargetVaultEvent {
    function onTAddAllowedTargetVaultEvent(EventContext memory ctx, CollateralVaultFactory$TAddAllowedTargetVaultEventParams memory inputs) virtual external;

    function triggerOnTAddAllowedTargetVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x50edacaf4177a0a51a3003c8c50d39a4e5929720e5b68cf56888decd5691dd12),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTAddAllowedTargetVaultEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTBorrowEvent {
    function onTBorrowEvent(EventContext memory ctx, CollateralVaultFactory$TBorrowEventParams memory inputs) virtual external;

    function triggerOnTBorrowEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0xde4f42b1727454f62e0f8b803f786bdf0c725998ffe2608545decdaad324b670),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTBorrowEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTCollateralVaultCreatedEvent {
    function onTCollateralVaultCreatedEvent(EventContext memory ctx, CollateralVaultFactory$TCollateralVaultCreatedEventParams memory inputs) virtual external;

    function triggerOnTCollateralVaultCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0xd5c014427d17eead1b9e8111804901d992255c3982e066ff0b196835c2747e15),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTCollateralVaultCreatedEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTCollateralVaultInitializedEvent {
    function onTCollateralVaultInitializedEvent(EventContext memory ctx) virtual external;

    function triggerOnTCollateralVaultInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x12a9cc17c88558b7be75e6263660f7e37d1b75b5370e41a69e6c5ecde2ef510b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTCollateralVaultInitializedEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTControllerDisabledEvent {
    function onTControllerDisabledEvent(EventContext memory ctx) virtual external;

    function triggerOnTControllerDisabledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0xbe90bd3a08ade2ac97b3cf9459c45ec3cd3e2d7535525c28a9ab65055b1fcea2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTControllerDisabledEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTDepositEvent {
    function onTDepositEvent(EventContext memory ctx, CollateralVaultFactory$TDepositEventParams memory inputs) virtual external;

    function triggerOnTDepositEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x729fe3250be1fe37041d8f9ee1649d82d8578a0230154a04fc00143efcb3d0ea),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTDepositEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTDepositUnderlyingEvent {
    function onTDepositUnderlyingEvent(EventContext memory ctx, CollateralVaultFactory$TDepositUnderlyingEventParams memory inputs) virtual external;

    function triggerOnTDepositUnderlyingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x8570c637af651287ed477b5c53ba29ef8d7dbb8c10a7cc4f496d870b5bea2ea8),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTDepositUnderlyingEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTDoCallEvent {
    function onTDoCallEvent(EventContext memory ctx, CollateralVaultFactory$TDoCallEventParams memory inputs) virtual external;

    function triggerOnTDoCallEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0xaa0a31269202c4785ce0060378b0e5536b5cec6ec2d6cf3cabd5bc9462d65e0a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTDoCallEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTFactoryPauseEvent {
    function onTFactoryPauseEvent(EventContext memory ctx, CollateralVaultFactory$TFactoryPauseEventParams memory inputs) virtual external;

    function triggerOnTFactoryPauseEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x9ffbe306addc3fd62817d52bd3de9f4eaf3db2d0aaf2f742d096b9846d3dd3cc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTFactoryPauseEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTHandleExternalLiquidationEvent {
    function onTHandleExternalLiquidationEvent(EventContext memory ctx) virtual external;

    function triggerOnTHandleExternalLiquidationEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x201069227b1c078db0bf2f6c8d33cb0ae064045c18ce10c1017f360997ae8d3e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTHandleExternalLiquidationEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTRebalanceEvent {
    function onTRebalanceEvent(EventContext memory ctx) virtual external;

    function triggerOnTRebalanceEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x7f89682ae65a1f951f91061a52d68beff208a52bbbb13b88ff3045a6c6d1bf92),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRebalanceEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTRedeemUnderlyingEvent {
    function onTRedeemUnderlyingEvent(EventContext memory ctx, CollateralVaultFactory$TRedeemUnderlyingEventParams memory inputs) virtual external;

    function triggerOnTRedeemUnderlyingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x3339ef804667402c8f3f362db72e43c0db110e5350d243b388abd9c534d147bb),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRedeemUnderlyingEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTRemoveAllowedTargetVaultEvent {
    function onTRemoveAllowedTargetVaultEvent(EventContext memory ctx, CollateralVaultFactory$TRemoveAllowedTargetVaultEventParams memory inputs) virtual external;

    function triggerOnTRemoveAllowedTargetVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x8cdf0649535799d80c21537f19ba756f7469582bb84536e93c8d701f2796a6a1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRemoveAllowedTargetVaultEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTRepayEvent {
    function onTRepayEvent(EventContext memory ctx, CollateralVaultFactory$TRepayEventParams memory inputs) virtual external;

    function triggerOnTRepayEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0xda868d2eef48a736c565bda78058f72b57b928b32f991f0002678ce45172398b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRepayEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetBeaconEvent {
    function onTSetBeaconEvent(EventContext memory ctx, CollateralVaultFactory$TSetBeaconEventParams memory inputs) virtual external;

    function triggerOnTSetBeaconEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x02ef2821a980639d4751433ca0875b8cb3c10a1766df6855903ceba1ffa010ac),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetBeaconEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetCollateralVaultFactoryEvent {
    function onTSetCollateralVaultFactoryEvent(EventContext memory ctx, CollateralVaultFactory$TSetCollateralVaultFactoryEventParams memory inputs) virtual external;

    function triggerOnTSetCollateralVaultFactoryEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x6799863c8acecaec14cd4e47492ea09c5589438f0f2fff2d1d8c1655d82bb2ce),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetCollateralVaultFactoryEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetCollateralVaultLiquidatedEvent {
    function onTSetCollateralVaultLiquidatedEvent(EventContext memory ctx, CollateralVaultFactory$TSetCollateralVaultLiquidatedEventParams memory inputs) virtual external;

    function triggerOnTSetCollateralVaultLiquidatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x4cec2177390e430c1c12e2cc1e8b8739182c3d6fdf7f5e0aa45e44eb156c16e7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetCollateralVaultLiquidatedEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetExternalLiqBufferEvent {
    function onTSetExternalLiqBufferEvent(EventContext memory ctx, CollateralVaultFactory$TSetExternalLiqBufferEventParams memory inputs) virtual external;

    function triggerOnTSetExternalLiqBufferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0xd82a30016f0c547a70a7131b7b0a4812ed54aff668591763d9f605c8f8820e2e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetExternalLiqBufferEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetIntermediateVaultEvent {
    function onTSetIntermediateVaultEvent(EventContext memory ctx, CollateralVaultFactory$TSetIntermediateVaultEventParams memory inputs) virtual external;

    function triggerOnTSetIntermediateVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x22ef484689bf8f52a76523b76f3985a5e85d716b7ee5af836f2af3c250dc607c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetIntermediateVaultEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetLtvEvent {
    function onTSetLtvEvent(EventContext memory ctx, CollateralVaultFactory$TSetLtvEventParams memory inputs) virtual external;

    function triggerOnTSetLtvEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0xea5b8cb10c470c01b271642da6387adcd6027f322e322652b99e981948c90e2b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetLtvEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetMaxLiqLtvEvent {
    function onTSetMaxLiqLtvEvent(EventContext memory ctx, CollateralVaultFactory$TSetMaxLiqLtvEventParams memory inputs) virtual external;

    function triggerOnTSetMaxLiqLtvEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x29bcc99188c72336fdc1864dc85bd43266a3b893bf6e292ea7d5510e0ae248ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetMaxLiqLtvEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetOracleResolvedVaultEvent {
    function onTSetOracleResolvedVaultEvent(EventContext memory ctx, CollateralVaultFactory$TSetOracleResolvedVaultEventParams memory inputs) virtual external;

    function triggerOnTSetOracleResolvedVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x5930809fcc0838c62013ba36bd54b7cf61adebe96a8ea7c7a75f5df45b695e1d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetOracleResolvedVaultEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetOracleRouterEvent {
    function onTSetOracleRouterEvent(EventContext memory ctx, CollateralVaultFactory$TSetOracleRouterEventParams memory inputs) virtual external;

    function triggerOnTSetOracleRouterEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x9c06287931491ac1b0bf9eecb992cc716533e7c09b8e2b3fd1a112f3fb39a35d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetOracleRouterEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetTwyneLiqLtvEvent {
    function onTSetTwyneLiqLtvEvent(EventContext memory ctx, CollateralVaultFactory$TSetTwyneLiqLtvEventParams memory inputs) virtual external;

    function triggerOnTSetTwyneLiqLtvEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x4ed6247dd07fa547f2a5675b8a09ba23414bcbb7250a9de94f2a17eb8fc56040),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetTwyneLiqLtvEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTSetVaultManagerEvent {
    function onTSetVaultManagerEvent(EventContext memory ctx, CollateralVaultFactory$TSetVaultManagerEventParams memory inputs) virtual external;

    function triggerOnTSetVaultManagerEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x0b975cd083078350093c287a36366c9364e6669414749c4f8ea060b1a6207e03),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetVaultManagerEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTTeleportEvent {
    function onTTeleportEvent(EventContext memory ctx, CollateralVaultFactory$TTeleportEventParams memory inputs) virtual external;

    function triggerOnTTeleportEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x4e237f0423b2c96207fb350d6582eaaa4301aa520358058af3b5fdad69ec21bc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTTeleportEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTWithdrawEvent {
    function onTWithdrawEvent(EventContext memory ctx, CollateralVaultFactory$TWithdrawEventParams memory inputs) virtual external;

    function triggerOnTWithdrawEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x226e3a154752424088fa9e17a43d1d4eb4738179083b3e9fb71b0a14e0949dcd),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTWithdrawEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnUnpausedEvent {
    function onUnpausedEvent(EventContext memory ctx, CollateralVaultFactory$UnpausedEventParams memory inputs) virtual external;

    function triggerOnUnpausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes32(0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUnpausedEvent.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnEvcFunction {
    function onEvcFunction(FunctionContext memory ctx, CollateralVaultFactory$EvcFunctionOutputs memory outputs) virtual external;

    function triggerOnEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEvcFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreEvcFunction {
    function preEvcFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEvcFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnCollateralVaultBeaconFunction {
    function onCollateralVaultBeaconFunction(FunctionContext memory ctx, CollateralVaultFactory$CollateralVaultBeaconFunctionInputs memory inputs, CollateralVaultFactory$CollateralVaultBeaconFunctionOutputs memory outputs) virtual external;

    function triggerOnCollateralVaultBeaconFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xd6bac7f6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCollateralVaultBeaconFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreCollateralVaultBeaconFunction {
    function preCollateralVaultBeaconFunction(PreFunctionContext memory ctx, CollateralVaultFactory$CollateralVaultBeaconFunctionInputs memory inputs) virtual external;

    function triggerPreCollateralVaultBeaconFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xd6bac7f6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCollateralVaultBeaconFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnCollateralVaultsFunction {
    function onCollateralVaultsFunction(FunctionContext memory ctx, CollateralVaultFactory$CollateralVaultsFunctionInputs memory inputs, CollateralVaultFactory$CollateralVaultsFunctionOutputs memory outputs) virtual external;

    function triggerOnCollateralVaultsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x07829590),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCollateralVaultsFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreCollateralVaultsFunction {
    function preCollateralVaultsFunction(PreFunctionContext memory ctx, CollateralVaultFactory$CollateralVaultsFunctionInputs memory inputs) virtual external;

    function triggerPreCollateralVaultsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x07829590),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCollateralVaultsFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnCreateCollateralVaultFunction {
    function onCreateCollateralVaultFunction(FunctionContext memory ctx, CollateralVaultFactory$CreateCollateralVaultFunctionInputs memory inputs, CollateralVaultFactory$CreateCollateralVaultFunctionOutputs memory outputs) virtual external;

    function triggerOnCreateCollateralVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x52dea99e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreateCollateralVaultFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreCreateCollateralVaultFunction {
    function preCreateCollateralVaultFunction(PreFunctionContext memory ctx, CollateralVaultFactory$CreateCollateralVaultFunctionInputs memory inputs) virtual external;

    function triggerPreCreateCollateralVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x52dea99e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreateCollateralVaultFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnGetCollateralVaultsFunction {
    function onGetCollateralVaultsFunction(FunctionContext memory ctx, CollateralVaultFactory$GetCollateralVaultsFunctionInputs memory inputs, CollateralVaultFactory$GetCollateralVaultsFunctionOutputs memory outputs) virtual external;

    function triggerOnGetCollateralVaultsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x57a71baa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetCollateralVaultsFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreGetCollateralVaultsFunction {
    function preGetCollateralVaultsFunction(PreFunctionContext memory ctx, CollateralVaultFactory$GetCollateralVaultsFunctionInputs memory inputs) virtual external;

    function triggerPreGetCollateralVaultsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x57a71baa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetCollateralVaultsFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnIsCollateralVaultFunction {
    function onIsCollateralVaultFunction(FunctionContext memory ctx, CollateralVaultFactory$IsCollateralVaultFunctionInputs memory inputs, CollateralVaultFactory$IsCollateralVaultFunctionOutputs memory outputs) virtual external;

    function triggerOnIsCollateralVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x079086d0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsCollateralVaultFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreIsCollateralVaultFunction {
    function preIsCollateralVaultFunction(PreFunctionContext memory ctx, CollateralVaultFactory$IsCollateralVaultFunctionInputs memory inputs) virtual external;

    function triggerPreIsCollateralVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x079086d0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsCollateralVaultFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnNonceFunction {
    function onNonceFunction(FunctionContext memory ctx, CollateralVaultFactory$NonceFunctionInputs memory inputs, CollateralVaultFactory$NonceFunctionOutputs memory outputs) virtual external;

    function triggerOnNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x70ae92d2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNonceFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreNonceFunction {
    function preNonceFunction(PreFunctionContext memory ctx, CollateralVaultFactory$NonceFunctionInputs memory inputs) virtual external;

    function triggerPreNonceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x70ae92d2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNonceFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnOwnerFunction {
    function onOwnerFunction(FunctionContext memory ctx, CollateralVaultFactory$OwnerFunctionOutputs memory outputs) virtual external;

    function triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnerFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreOwnerFunction {
    function preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOwnerFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnPauseFunction {
    function onPauseFunction(FunctionContext memory ctx, CollateralVaultFactory$PauseFunctionInputs memory inputs) virtual external;

    function triggerOnPauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x02329a29),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPauseFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PrePauseFunction {
    function prePauseFunction(PreFunctionContext memory ctx, CollateralVaultFactory$PauseFunctionInputs memory inputs) virtual external;

    function triggerPrePauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x02329a29),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePauseFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnPausedFunction {
    function onPausedFunction(FunctionContext memory ctx, CollateralVaultFactory$PausedFunctionOutputs memory outputs) virtual external;

    function triggerOnPausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPausedFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PrePausedFunction {
    function prePausedFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePausedFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnRenounceOwnershipFunction {
    function onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreRenounceOwnershipFunction {
    function preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnSetBeaconFunction {
    function onSetBeaconFunction(FunctionContext memory ctx, CollateralVaultFactory$SetBeaconFunctionInputs memory inputs) virtual external;

    function triggerOnSetBeaconFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x541edbee),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetBeaconFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreSetBeaconFunction {
    function preSetBeaconFunction(PreFunctionContext memory ctx, CollateralVaultFactory$SetBeaconFunctionInputs memory inputs) virtual external;

    function triggerPreSetBeaconFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x541edbee),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetBeaconFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnSetCollateralVaultLiquidatedFunction {
    function onSetCollateralVaultLiquidatedFunction(FunctionContext memory ctx, CollateralVaultFactory$SetCollateralVaultLiquidatedFunctionInputs memory inputs) virtual external;

    function triggerOnSetCollateralVaultLiquidatedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xcf8a3222),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetCollateralVaultLiquidatedFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreSetCollateralVaultLiquidatedFunction {
    function preSetCollateralVaultLiquidatedFunction(PreFunctionContext memory ctx, CollateralVaultFactory$SetCollateralVaultLiquidatedFunctionInputs memory inputs) virtual external;

    function triggerPreSetCollateralVaultLiquidatedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xcf8a3222),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetCollateralVaultLiquidatedFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnSetVaultManagerFunction {
    function onSetVaultManagerFunction(FunctionContext memory ctx, CollateralVaultFactory$SetVaultManagerFunctionInputs memory inputs) virtual external;

    function triggerOnSetVaultManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xb543503e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetVaultManagerFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreSetVaultManagerFunction {
    function preSetVaultManagerFunction(PreFunctionContext memory ctx, CollateralVaultFactory$SetVaultManagerFunctionInputs memory inputs) virtual external;

    function triggerPreSetVaultManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xb543503e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetVaultManagerFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnTransferOwnershipFunction {
    function onTransferOwnershipFunction(FunctionContext memory ctx, CollateralVaultFactory$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferOwnershipFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreTransferOwnershipFunction {
    function preTransferOwnershipFunction(PreFunctionContext memory ctx, CollateralVaultFactory$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferOwnershipFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$OnVaultManagerFunction {
    function onVaultManagerFunction(FunctionContext memory ctx, CollateralVaultFactory$VaultManagerFunctionOutputs memory outputs) virtual external;

    function triggerOnVaultManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x8a4adf24),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVaultManagerFunction.selector
        });
    }
}

abstract contract CollateralVaultFactory$PreVaultManagerFunction {
    function preVaultManagerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreVaultManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CollateralVaultFactory",
            selector: bytes4(0x8a4adf24),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVaultManagerFunction.selector
        });
    }
}


struct CollateralVaultFactory$EmitAllEvents$OwnershipTransferred {
  address previousOwner;
  address newOwner;
}

struct CollateralVaultFactory$EmitAllEvents$Paused {
  address account;
}

struct CollateralVaultFactory$EmitAllEvents$TAddAllowedTargetVault {
  address intermediateVault;
  address targetVault;
}

struct CollateralVaultFactory$EmitAllEvents$TBorrow {
  uint256 targetAmount;
  address receiver;
}

struct CollateralVaultFactory$EmitAllEvents$TCollateralVaultCreated {
  address vault;
}

struct CollateralVaultFactory$EmitAllEvents$TDeposit {
  uint256 amount;
}

struct CollateralVaultFactory$EmitAllEvents$TDepositUnderlying {
  uint256 amount;
}

struct CollateralVaultFactory$EmitAllEvents$TDoCall {
  address to;
  uint256 value;
  bytes data;
}

struct CollateralVaultFactory$EmitAllEvents$TFactoryPause {
  bool pause;
}

struct CollateralVaultFactory$EmitAllEvents$TRedeemUnderlying {
  uint256 amount;
  address receiver;
}

struct CollateralVaultFactory$EmitAllEvents$TRemoveAllowedTargetVault {
  address intermediateVault;
  address targetVault;
  uint256 index;
}

struct CollateralVaultFactory$EmitAllEvents$TRepay {
  uint256 repayAmount;
}

struct CollateralVaultFactory$EmitAllEvents$TSetBeacon {
  address targetVault;
  address beacon;
}

struct CollateralVaultFactory$EmitAllEvents$TSetCollateralVaultFactory {
  address factory;
}

struct CollateralVaultFactory$EmitAllEvents$TSetCollateralVaultLiquidated {
  address collateralVault;
  address liquidator;
}

struct CollateralVaultFactory$EmitAllEvents$TSetExternalLiqBuffer {
  address collateralAddress;
  uint16 liqBuffer;
}

struct CollateralVaultFactory$EmitAllEvents$TSetIntermediateVault {
  address intermediateVault;
}

struct CollateralVaultFactory$EmitAllEvents$TSetLtv {
  address intermediateVault;
  address collateralVault;
  uint16 borrowLimit;
  uint16 liquidationLimit;
  uint32 rampDuration;
}

struct CollateralVaultFactory$EmitAllEvents$TSetMaxLiqLtv {
  address collateralAddress;
  uint16 ltv;
}

struct CollateralVaultFactory$EmitAllEvents$TSetOracleResolvedVault {
  address collateralAddress;
  bool allow;
}

struct CollateralVaultFactory$EmitAllEvents$TSetOracleRouter {
  address newOracleRouter;
}

struct CollateralVaultFactory$EmitAllEvents$TSetTwyneLiqLtv {
  uint256 ltv;
}

struct CollateralVaultFactory$EmitAllEvents$TSetVaultManager {
  address vaultManager;
}

struct CollateralVaultFactory$EmitAllEvents$TTeleport {
  uint256 toDeposit;
  uint256 toBorrow;
}

struct CollateralVaultFactory$EmitAllEvents$TWithdraw {
  uint256 amount;
  address receiver;
}

struct CollateralVaultFactory$EmitAllEvents$Unpaused {
  address account;
}

contract CollateralVaultFactory$EmitAllEvents is
  CollateralVaultFactory$OnOwnershipTransferredEvent,
CollateralVaultFactory$OnPausedEvent,
CollateralVaultFactory$OnTAddAllowedTargetVaultEvent,
CollateralVaultFactory$OnTBorrowEvent,
CollateralVaultFactory$OnTCollateralVaultCreatedEvent,
CollateralVaultFactory$OnTCollateralVaultInitializedEvent,
CollateralVaultFactory$OnTControllerDisabledEvent,
CollateralVaultFactory$OnTDepositEvent,
CollateralVaultFactory$OnTDepositUnderlyingEvent,
CollateralVaultFactory$OnTDoCallEvent,
CollateralVaultFactory$OnTFactoryPauseEvent,
CollateralVaultFactory$OnTHandleExternalLiquidationEvent,
CollateralVaultFactory$OnTRebalanceEvent,
CollateralVaultFactory$OnTRedeemUnderlyingEvent,
CollateralVaultFactory$OnTRemoveAllowedTargetVaultEvent,
CollateralVaultFactory$OnTRepayEvent,
CollateralVaultFactory$OnTSetBeaconEvent,
CollateralVaultFactory$OnTSetCollateralVaultFactoryEvent,
CollateralVaultFactory$OnTSetCollateralVaultLiquidatedEvent,
CollateralVaultFactory$OnTSetExternalLiqBufferEvent,
CollateralVaultFactory$OnTSetIntermediateVaultEvent,
CollateralVaultFactory$OnTSetLtvEvent,
CollateralVaultFactory$OnTSetMaxLiqLtvEvent,
CollateralVaultFactory$OnTSetOracleResolvedVaultEvent,
CollateralVaultFactory$OnTSetOracleRouterEvent,
CollateralVaultFactory$OnTSetTwyneLiqLtvEvent,
CollateralVaultFactory$OnTSetVaultManagerEvent,
CollateralVaultFactory$OnTTeleportEvent,
CollateralVaultFactory$OnTWithdrawEvent,
CollateralVaultFactory$OnUnpausedEvent
{
  event OwnershipTransferred(CollateralVaultFactory$EmitAllEvents$OwnershipTransferred);
  event Paused(CollateralVaultFactory$EmitAllEvents$Paused);
  event TAddAllowedTargetVault(CollateralVaultFactory$EmitAllEvents$TAddAllowedTargetVault);
  event TBorrow(CollateralVaultFactory$EmitAllEvents$TBorrow);
  event TCollateralVaultCreated(CollateralVaultFactory$EmitAllEvents$TCollateralVaultCreated);
  event TCollateralVaultInitialized();
  event TControllerDisabled();
  event TDeposit(CollateralVaultFactory$EmitAllEvents$TDeposit);
  event TDepositUnderlying(CollateralVaultFactory$EmitAllEvents$TDepositUnderlying);
  event TDoCall(CollateralVaultFactory$EmitAllEvents$TDoCall);
  event TFactoryPause(CollateralVaultFactory$EmitAllEvents$TFactoryPause);
  event THandleExternalLiquidation();
  event TRebalance();
  event TRedeemUnderlying(CollateralVaultFactory$EmitAllEvents$TRedeemUnderlying);
  event TRemoveAllowedTargetVault(CollateralVaultFactory$EmitAllEvents$TRemoveAllowedTargetVault);
  event TRepay(CollateralVaultFactory$EmitAllEvents$TRepay);
  event TSetBeacon(CollateralVaultFactory$EmitAllEvents$TSetBeacon);
  event TSetCollateralVaultFactory(CollateralVaultFactory$EmitAllEvents$TSetCollateralVaultFactory);
  event TSetCollateralVaultLiquidated(CollateralVaultFactory$EmitAllEvents$TSetCollateralVaultLiquidated);
  event TSetExternalLiqBuffer(CollateralVaultFactory$EmitAllEvents$TSetExternalLiqBuffer);
  event TSetIntermediateVault(CollateralVaultFactory$EmitAllEvents$TSetIntermediateVault);
  event TSetLtv(CollateralVaultFactory$EmitAllEvents$TSetLtv);
  event TSetMaxLiqLtv(CollateralVaultFactory$EmitAllEvents$TSetMaxLiqLtv);
  event TSetOracleResolvedVault(CollateralVaultFactory$EmitAllEvents$TSetOracleResolvedVault);
  event TSetOracleRouter(CollateralVaultFactory$EmitAllEvents$TSetOracleRouter);
  event TSetTwyneLiqLtv(CollateralVaultFactory$EmitAllEvents$TSetTwyneLiqLtv);
  event TSetVaultManager(CollateralVaultFactory$EmitAllEvents$TSetVaultManager);
  event TTeleport(CollateralVaultFactory$EmitAllEvents$TTeleport);
  event TWithdraw(CollateralVaultFactory$EmitAllEvents$TWithdraw);
  event Unpaused(CollateralVaultFactory$EmitAllEvents$Unpaused);

  function onOwnershipTransferredEvent(EventContext memory ctx, CollateralVaultFactory$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(CollateralVaultFactory$EmitAllEvents$OwnershipTransferred(inputs.previousOwner, inputs.newOwner));
  }
function onPausedEvent(EventContext memory ctx, CollateralVaultFactory$PausedEventParams memory inputs) virtual external override {
    emit Paused(CollateralVaultFactory$EmitAllEvents$Paused(inputs.account));
  }
function onTAddAllowedTargetVaultEvent(EventContext memory ctx, CollateralVaultFactory$TAddAllowedTargetVaultEventParams memory inputs) virtual external override {
    emit TAddAllowedTargetVault(CollateralVaultFactory$EmitAllEvents$TAddAllowedTargetVault(inputs.intermediateVault, inputs.targetVault));
  }
function onTBorrowEvent(EventContext memory ctx, CollateralVaultFactory$TBorrowEventParams memory inputs) virtual external override {
    emit TBorrow(CollateralVaultFactory$EmitAllEvents$TBorrow(inputs.targetAmount, inputs.receiver));
  }
function onTCollateralVaultCreatedEvent(EventContext memory ctx, CollateralVaultFactory$TCollateralVaultCreatedEventParams memory inputs) virtual external override {
    emit TCollateralVaultCreated(CollateralVaultFactory$EmitAllEvents$TCollateralVaultCreated(inputs.vault));
  }
function onTCollateralVaultInitializedEvent(EventContext memory ctx) virtual external override {
    emit TCollateralVaultInitialized();
  }
function onTControllerDisabledEvent(EventContext memory ctx) virtual external override {
    emit TControllerDisabled();
  }
function onTDepositEvent(EventContext memory ctx, CollateralVaultFactory$TDepositEventParams memory inputs) virtual external override {
    emit TDeposit(CollateralVaultFactory$EmitAllEvents$TDeposit(inputs.amount));
  }
function onTDepositUnderlyingEvent(EventContext memory ctx, CollateralVaultFactory$TDepositUnderlyingEventParams memory inputs) virtual external override {
    emit TDepositUnderlying(CollateralVaultFactory$EmitAllEvents$TDepositUnderlying(inputs.amount));
  }
function onTDoCallEvent(EventContext memory ctx, CollateralVaultFactory$TDoCallEventParams memory inputs) virtual external override {
    emit TDoCall(CollateralVaultFactory$EmitAllEvents$TDoCall(inputs.to, inputs.value, inputs.data));
  }
function onTFactoryPauseEvent(EventContext memory ctx, CollateralVaultFactory$TFactoryPauseEventParams memory inputs) virtual external override {
    emit TFactoryPause(CollateralVaultFactory$EmitAllEvents$TFactoryPause(inputs.pause));
  }
function onTHandleExternalLiquidationEvent(EventContext memory ctx) virtual external override {
    emit THandleExternalLiquidation();
  }
function onTRebalanceEvent(EventContext memory ctx) virtual external override {
    emit TRebalance();
  }
function onTRedeemUnderlyingEvent(EventContext memory ctx, CollateralVaultFactory$TRedeemUnderlyingEventParams memory inputs) virtual external override {
    emit TRedeemUnderlying(CollateralVaultFactory$EmitAllEvents$TRedeemUnderlying(inputs.amount, inputs.receiver));
  }
function onTRemoveAllowedTargetVaultEvent(EventContext memory ctx, CollateralVaultFactory$TRemoveAllowedTargetVaultEventParams memory inputs) virtual external override {
    emit TRemoveAllowedTargetVault(CollateralVaultFactory$EmitAllEvents$TRemoveAllowedTargetVault(inputs.intermediateVault, inputs.targetVault, inputs.index));
  }
function onTRepayEvent(EventContext memory ctx, CollateralVaultFactory$TRepayEventParams memory inputs) virtual external override {
    emit TRepay(CollateralVaultFactory$EmitAllEvents$TRepay(inputs.repayAmount));
  }
function onTSetBeaconEvent(EventContext memory ctx, CollateralVaultFactory$TSetBeaconEventParams memory inputs) virtual external override {
    emit TSetBeacon(CollateralVaultFactory$EmitAllEvents$TSetBeacon(inputs.targetVault, inputs.beacon));
  }
function onTSetCollateralVaultFactoryEvent(EventContext memory ctx, CollateralVaultFactory$TSetCollateralVaultFactoryEventParams memory inputs) virtual external override {
    emit TSetCollateralVaultFactory(CollateralVaultFactory$EmitAllEvents$TSetCollateralVaultFactory(inputs.factory));
  }
function onTSetCollateralVaultLiquidatedEvent(EventContext memory ctx, CollateralVaultFactory$TSetCollateralVaultLiquidatedEventParams memory inputs) virtual external override {
    emit TSetCollateralVaultLiquidated(CollateralVaultFactory$EmitAllEvents$TSetCollateralVaultLiquidated(inputs.collateralVault, inputs.liquidator));
  }
function onTSetExternalLiqBufferEvent(EventContext memory ctx, CollateralVaultFactory$TSetExternalLiqBufferEventParams memory inputs) virtual external override {
    emit TSetExternalLiqBuffer(CollateralVaultFactory$EmitAllEvents$TSetExternalLiqBuffer(inputs.collateralAddress, inputs.liqBuffer));
  }
function onTSetIntermediateVaultEvent(EventContext memory ctx, CollateralVaultFactory$TSetIntermediateVaultEventParams memory inputs) virtual external override {
    emit TSetIntermediateVault(CollateralVaultFactory$EmitAllEvents$TSetIntermediateVault(inputs.intermediateVault));
  }
function onTSetLtvEvent(EventContext memory ctx, CollateralVaultFactory$TSetLtvEventParams memory inputs) virtual external override {
    emit TSetLtv(CollateralVaultFactory$EmitAllEvents$TSetLtv(inputs.intermediateVault, inputs.collateralVault, inputs.borrowLimit, inputs.liquidationLimit, inputs.rampDuration));
  }
function onTSetMaxLiqLtvEvent(EventContext memory ctx, CollateralVaultFactory$TSetMaxLiqLtvEventParams memory inputs) virtual external override {
    emit TSetMaxLiqLtv(CollateralVaultFactory$EmitAllEvents$TSetMaxLiqLtv(inputs.collateralAddress, inputs.ltv));
  }
function onTSetOracleResolvedVaultEvent(EventContext memory ctx, CollateralVaultFactory$TSetOracleResolvedVaultEventParams memory inputs) virtual external override {
    emit TSetOracleResolvedVault(CollateralVaultFactory$EmitAllEvents$TSetOracleResolvedVault(inputs.collateralAddress, inputs.allow));
  }
function onTSetOracleRouterEvent(EventContext memory ctx, CollateralVaultFactory$TSetOracleRouterEventParams memory inputs) virtual external override {
    emit TSetOracleRouter(CollateralVaultFactory$EmitAllEvents$TSetOracleRouter(inputs.newOracleRouter));
  }
function onTSetTwyneLiqLtvEvent(EventContext memory ctx, CollateralVaultFactory$TSetTwyneLiqLtvEventParams memory inputs) virtual external override {
    emit TSetTwyneLiqLtv(CollateralVaultFactory$EmitAllEvents$TSetTwyneLiqLtv(inputs.ltv));
  }
function onTSetVaultManagerEvent(EventContext memory ctx, CollateralVaultFactory$TSetVaultManagerEventParams memory inputs) virtual external override {
    emit TSetVaultManager(CollateralVaultFactory$EmitAllEvents$TSetVaultManager(inputs.vaultManager));
  }
function onTTeleportEvent(EventContext memory ctx, CollateralVaultFactory$TTeleportEventParams memory inputs) virtual external override {
    emit TTeleport(CollateralVaultFactory$EmitAllEvents$TTeleport(inputs.toDeposit, inputs.toBorrow));
  }
function onTWithdrawEvent(EventContext memory ctx, CollateralVaultFactory$TWithdrawEventParams memory inputs) virtual external override {
    emit TWithdraw(CollateralVaultFactory$EmitAllEvents$TWithdraw(inputs.amount, inputs.receiver));
  }
function onUnpausedEvent(EventContext memory ctx, CollateralVaultFactory$UnpausedEventParams memory inputs) virtual external override {
    emit Unpaused(CollateralVaultFactory$EmitAllEvents$Unpaused(inputs.account));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](30);
    triggers[0] = this.triggerOnOwnershipTransferredEvent();
    triggers[1] = this.triggerOnPausedEvent();
    triggers[2] = this.triggerOnTAddAllowedTargetVaultEvent();
    triggers[3] = this.triggerOnTBorrowEvent();
    triggers[4] = this.triggerOnTCollateralVaultCreatedEvent();
    triggers[5] = this.triggerOnTCollateralVaultInitializedEvent();
    triggers[6] = this.triggerOnTControllerDisabledEvent();
    triggers[7] = this.triggerOnTDepositEvent();
    triggers[8] = this.triggerOnTDepositUnderlyingEvent();
    triggers[9] = this.triggerOnTDoCallEvent();
    triggers[10] = this.triggerOnTFactoryPauseEvent();
    triggers[11] = this.triggerOnTHandleExternalLiquidationEvent();
    triggers[12] = this.triggerOnTRebalanceEvent();
    triggers[13] = this.triggerOnTRedeemUnderlyingEvent();
    triggers[14] = this.triggerOnTRemoveAllowedTargetVaultEvent();
    triggers[15] = this.triggerOnTRepayEvent();
    triggers[16] = this.triggerOnTSetBeaconEvent();
    triggers[17] = this.triggerOnTSetCollateralVaultFactoryEvent();
    triggers[18] = this.triggerOnTSetCollateralVaultLiquidatedEvent();
    triggers[19] = this.triggerOnTSetExternalLiqBufferEvent();
    triggers[20] = this.triggerOnTSetIntermediateVaultEvent();
    triggers[21] = this.triggerOnTSetLtvEvent();
    triggers[22] = this.triggerOnTSetMaxLiqLtvEvent();
    triggers[23] = this.triggerOnTSetOracleResolvedVaultEvent();
    triggers[24] = this.triggerOnTSetOracleRouterEvent();
    triggers[25] = this.triggerOnTSetTwyneLiqLtvEvent();
    triggers[26] = this.triggerOnTSetVaultManagerEvent();
    triggers[27] = this.triggerOnTTeleportEvent();
    triggers[28] = this.triggerOnTWithdrawEvent();
    triggers[29] = this.triggerOnUnpausedEvent();
    return triggers;
  }
}