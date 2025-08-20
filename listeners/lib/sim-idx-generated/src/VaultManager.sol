// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function VaultManager$Abi() pure returns (Abi memory) {
    return Abi("VaultManager");
}
struct VaultManager$AllowedTargetVaultListFunctionInputs {
    address intermediateVault;
    uint256 outArg1;
}

struct VaultManager$AllowedTargetVaultListFunctionOutputs {
    address targetVaults;
}

struct VaultManager$CheckLiqLtvFunctionInputs {
    uint256 _liqLTV;
    address _targetVault;
    address _collateralAddress;
}

struct VaultManager$CollateralVaultFactoryFunctionOutputs {
    address outArg0;
}

struct VaultManager$DoCallFunctionInputs {
    address to;
    uint256 value;
    bytes data;
}

struct VaultManager$ExternalLiqBuffersFunctionInputs {
    address collateralAddress;
}

struct VaultManager$ExternalLiqBuffersFunctionOutputs {
    uint16 externalLiqBuffer;
}

struct VaultManager$GetIntermediateVaultFunctionInputs {
    address _collateralAddress;
}

struct VaultManager$GetIntermediateVaultFunctionOutputs {
    address vault;
}

struct VaultManager$IsAllowedTargetVaultFunctionInputs {
    address intermediateVault;
    address targetVault;
}

struct VaultManager$IsAllowedTargetVaultFunctionOutputs {
    bool allowed;
}

struct VaultManager$MaxTwyneLtVsFunctionInputs {
    address collateralAddress;
}

struct VaultManager$MaxTwyneLtVsFunctionOutputs {
    uint16 maxTwyneLiqLTV;
}

struct VaultManager$OracleRouterFunctionOutputs {
    address outArg0;
}

struct VaultManager$OwnerFunctionOutputs {
    address outArg0;
}

struct VaultManager$RemoveAllowedTargetVaultFunctionInputs {
    address _intermediateVault;
    address _targetVault;
    uint256 _index;
}

struct VaultManager$SetAllowedTargetVaultFunctionInputs {
    address _intermediateVault;
    address _targetVault;
}

struct VaultManager$SetCollateralVaultFactoryFunctionInputs {
    address _factory;
}

struct VaultManager$SetExternalLiqBufferFunctionInputs {
    address _collateralAddress;
    uint16 _liqBuffer;
}

struct VaultManager$SetIntermediateVaultFunctionInputs {
    address _intermediateVault;
}

struct VaultManager$SetLtvFunctionInputs {
    address _intermediateVault;
    address _collateralVault;
    uint16 _borrowLimit;
    uint16 _liquidationLimit;
    uint32 _rampDuration;
}

struct VaultManager$SetMaxLiquidationLtvFunctionInputs {
    address _collateralAddress;
    uint16 _ltv;
}

struct VaultManager$SetOracleResolvedVaultFunctionInputs {
    address _vault;
    bool _allow;
}

struct VaultManager$SetOracleRouterFunctionInputs {
    address _oracle;
}

struct VaultManager$TargetVaultLengthFunctionInputs {
    address _intermediateVault;
}

struct VaultManager$TargetVaultLengthFunctionOutputs {
    uint256 outArg0;
}

struct VaultManager$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct VaultManager$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct VaultManager$TAddAllowedTargetVaultEventParams {
    address intermediateVault;
    address targetVault;
}

struct VaultManager$TBorrowEventParams {
    uint256 targetAmount;
    address receiver;
}

struct VaultManager$TCollateralVaultCreatedEventParams {
    address vault;
}

struct VaultManager$TDepositEventParams {
    uint256 amount;
}

struct VaultManager$TDepositUnderlyingEventParams {
    uint256 amount;
}

struct VaultManager$TDoCallEventParams {
    address to;
    uint256 value;
    bytes data;
}

struct VaultManager$TFactoryPauseEventParams {
    bool pause;
}

struct VaultManager$TRedeemUnderlyingEventParams {
    uint256 amount;
    address receiver;
}

struct VaultManager$TRemoveAllowedTargetVaultEventParams {
    address intermediateVault;
    address targetVault;
    uint256 index;
}

struct VaultManager$TRepayEventParams {
    uint256 repayAmount;
}

struct VaultManager$TSetBeaconEventParams {
    address targetVault;
    address beacon;
}

struct VaultManager$TSetCollateralVaultFactoryEventParams {
    address factory;
}

struct VaultManager$TSetCollateralVaultLiquidatedEventParams {
    address collateralVault;
    address liquidator;
}

struct VaultManager$TSetExternalLiqBufferEventParams {
    address collateralAddress;
    uint16 liqBuffer;
}

struct VaultManager$TSetIntermediateVaultEventParams {
    address intermediateVault;
}

struct VaultManager$TSetLtvEventParams {
    address intermediateVault;
    address collateralVault;
    uint16 borrowLimit;
    uint16 liquidationLimit;
    uint32 rampDuration;
}

struct VaultManager$TSetMaxLiqLtvEventParams {
    address collateralAddress;
    uint16 ltv;
}

struct VaultManager$TSetOracleResolvedVaultEventParams {
    address collateralAddress;
    bool allow;
}

struct VaultManager$TSetOracleRouterEventParams {
    address newOracleRouter;
}

struct VaultManager$TSetTwyneLiqLtvEventParams {
    uint256 ltv;
}

struct VaultManager$TSetVaultManagerEventParams {
    address vaultManager;
}

struct VaultManager$TSkimEventParams {
    uint256 amount;
}

struct VaultManager$TTeleportEventParams {
    uint256 toDeposit;
    uint256 toBorrow;
}

struct VaultManager$TWithdrawEventParams {
    uint256 amount;
    address receiver;
}

abstract contract VaultManager$OnOwnershipTransferredEvent {
    function onOwnershipTransferredEvent(EventContext memory ctx, VaultManager$OwnershipTransferredEventParams memory inputs) virtual external;

    function triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract VaultManager$OnTAddAllowedTargetVaultEvent {
    function onTAddAllowedTargetVaultEvent(EventContext memory ctx, VaultManager$TAddAllowedTargetVaultEventParams memory inputs) virtual external;

    function triggerOnTAddAllowedTargetVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x50edacaf4177a0a51a3003c8c50d39a4e5929720e5b68cf56888decd5691dd12),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTAddAllowedTargetVaultEvent.selector
        });
    }
}

abstract contract VaultManager$OnTBorrowEvent {
    function onTBorrowEvent(EventContext memory ctx, VaultManager$TBorrowEventParams memory inputs) virtual external;

    function triggerOnTBorrowEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0xde4f42b1727454f62e0f8b803f786bdf0c725998ffe2608545decdaad324b670),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTBorrowEvent.selector
        });
    }
}

abstract contract VaultManager$OnTCollateralVaultCreatedEvent {
    function onTCollateralVaultCreatedEvent(EventContext memory ctx, VaultManager$TCollateralVaultCreatedEventParams memory inputs) virtual external;

    function triggerOnTCollateralVaultCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0xd5c014427d17eead1b9e8111804901d992255c3982e066ff0b196835c2747e15),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTCollateralVaultCreatedEvent.selector
        });
    }
}

abstract contract VaultManager$OnTCollateralVaultInitializedEvent {
    function onTCollateralVaultInitializedEvent(EventContext memory ctx) virtual external;

    function triggerOnTCollateralVaultInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x12a9cc17c88558b7be75e6263660f7e37d1b75b5370e41a69e6c5ecde2ef510b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTCollateralVaultInitializedEvent.selector
        });
    }
}

abstract contract VaultManager$OnTControllerDisabledEvent {
    function onTControllerDisabledEvent(EventContext memory ctx) virtual external;

    function triggerOnTControllerDisabledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0xbe90bd3a08ade2ac97b3cf9459c45ec3cd3e2d7535525c28a9ab65055b1fcea2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTControllerDisabledEvent.selector
        });
    }
}

abstract contract VaultManager$OnTDepositEvent {
    function onTDepositEvent(EventContext memory ctx, VaultManager$TDepositEventParams memory inputs) virtual external;

    function triggerOnTDepositEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x729fe3250be1fe37041d8f9ee1649d82d8578a0230154a04fc00143efcb3d0ea),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTDepositEvent.selector
        });
    }
}

abstract contract VaultManager$OnTDepositUnderlyingEvent {
    function onTDepositUnderlyingEvent(EventContext memory ctx, VaultManager$TDepositUnderlyingEventParams memory inputs) virtual external;

    function triggerOnTDepositUnderlyingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x8570c637af651287ed477b5c53ba29ef8d7dbb8c10a7cc4f496d870b5bea2ea8),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTDepositUnderlyingEvent.selector
        });
    }
}

abstract contract VaultManager$OnTDoCallEvent {
    function onTDoCallEvent(EventContext memory ctx, VaultManager$TDoCallEventParams memory inputs) virtual external;

    function triggerOnTDoCallEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0xaa0a31269202c4785ce0060378b0e5536b5cec6ec2d6cf3cabd5bc9462d65e0a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTDoCallEvent.selector
        });
    }
}

abstract contract VaultManager$OnTFactoryPauseEvent {
    function onTFactoryPauseEvent(EventContext memory ctx, VaultManager$TFactoryPauseEventParams memory inputs) virtual external;

    function triggerOnTFactoryPauseEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x9ffbe306addc3fd62817d52bd3de9f4eaf3db2d0aaf2f742d096b9846d3dd3cc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTFactoryPauseEvent.selector
        });
    }
}

abstract contract VaultManager$OnTHandleExternalLiquidationEvent {
    function onTHandleExternalLiquidationEvent(EventContext memory ctx) virtual external;

    function triggerOnTHandleExternalLiquidationEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x201069227b1c078db0bf2f6c8d33cb0ae064045c18ce10c1017f360997ae8d3e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTHandleExternalLiquidationEvent.selector
        });
    }
}

abstract contract VaultManager$OnTRebalanceEvent {
    function onTRebalanceEvent(EventContext memory ctx) virtual external;

    function triggerOnTRebalanceEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x7f89682ae65a1f951f91061a52d68beff208a52bbbb13b88ff3045a6c6d1bf92),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRebalanceEvent.selector
        });
    }
}

abstract contract VaultManager$OnTRedeemUnderlyingEvent {
    function onTRedeemUnderlyingEvent(EventContext memory ctx, VaultManager$TRedeemUnderlyingEventParams memory inputs) virtual external;

    function triggerOnTRedeemUnderlyingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x3339ef804667402c8f3f362db72e43c0db110e5350d243b388abd9c534d147bb),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRedeemUnderlyingEvent.selector
        });
    }
}

abstract contract VaultManager$OnTRemoveAllowedTargetVaultEvent {
    function onTRemoveAllowedTargetVaultEvent(EventContext memory ctx, VaultManager$TRemoveAllowedTargetVaultEventParams memory inputs) virtual external;

    function triggerOnTRemoveAllowedTargetVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x8cdf0649535799d80c21537f19ba756f7469582bb84536e93c8d701f2796a6a1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRemoveAllowedTargetVaultEvent.selector
        });
    }
}

abstract contract VaultManager$OnTRepayEvent {
    function onTRepayEvent(EventContext memory ctx, VaultManager$TRepayEventParams memory inputs) virtual external;

    function triggerOnTRepayEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0xda868d2eef48a736c565bda78058f72b57b928b32f991f0002678ce45172398b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTRepayEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetBeaconEvent {
    function onTSetBeaconEvent(EventContext memory ctx, VaultManager$TSetBeaconEventParams memory inputs) virtual external;

    function triggerOnTSetBeaconEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x02ef2821a980639d4751433ca0875b8cb3c10a1766df6855903ceba1ffa010ac),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetBeaconEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetCollateralVaultFactoryEvent {
    function onTSetCollateralVaultFactoryEvent(EventContext memory ctx, VaultManager$TSetCollateralVaultFactoryEventParams memory inputs) virtual external;

    function triggerOnTSetCollateralVaultFactoryEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x6799863c8acecaec14cd4e47492ea09c5589438f0f2fff2d1d8c1655d82bb2ce),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetCollateralVaultFactoryEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetCollateralVaultLiquidatedEvent {
    function onTSetCollateralVaultLiquidatedEvent(EventContext memory ctx, VaultManager$TSetCollateralVaultLiquidatedEventParams memory inputs) virtual external;

    function triggerOnTSetCollateralVaultLiquidatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x4cec2177390e430c1c12e2cc1e8b8739182c3d6fdf7f5e0aa45e44eb156c16e7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetCollateralVaultLiquidatedEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetExternalLiqBufferEvent {
    function onTSetExternalLiqBufferEvent(EventContext memory ctx, VaultManager$TSetExternalLiqBufferEventParams memory inputs) virtual external;

    function triggerOnTSetExternalLiqBufferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0xd82a30016f0c547a70a7131b7b0a4812ed54aff668591763d9f605c8f8820e2e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetExternalLiqBufferEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetIntermediateVaultEvent {
    function onTSetIntermediateVaultEvent(EventContext memory ctx, VaultManager$TSetIntermediateVaultEventParams memory inputs) virtual external;

    function triggerOnTSetIntermediateVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x22ef484689bf8f52a76523b76f3985a5e85d716b7ee5af836f2af3c250dc607c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetIntermediateVaultEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetLtvEvent {
    function onTSetLtvEvent(EventContext memory ctx, VaultManager$TSetLtvEventParams memory inputs) virtual external;

    function triggerOnTSetLtvEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0xea5b8cb10c470c01b271642da6387adcd6027f322e322652b99e981948c90e2b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetLtvEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetMaxLiqLtvEvent {
    function onTSetMaxLiqLtvEvent(EventContext memory ctx, VaultManager$TSetMaxLiqLtvEventParams memory inputs) virtual external;

    function triggerOnTSetMaxLiqLtvEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x29bcc99188c72336fdc1864dc85bd43266a3b893bf6e292ea7d5510e0ae248ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetMaxLiqLtvEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetOracleResolvedVaultEvent {
    function onTSetOracleResolvedVaultEvent(EventContext memory ctx, VaultManager$TSetOracleResolvedVaultEventParams memory inputs) virtual external;

    function triggerOnTSetOracleResolvedVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x5930809fcc0838c62013ba36bd54b7cf61adebe96a8ea7c7a75f5df45b695e1d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetOracleResolvedVaultEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetOracleRouterEvent {
    function onTSetOracleRouterEvent(EventContext memory ctx, VaultManager$TSetOracleRouterEventParams memory inputs) virtual external;

    function triggerOnTSetOracleRouterEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x9c06287931491ac1b0bf9eecb992cc716533e7c09b8e2b3fd1a112f3fb39a35d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetOracleRouterEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetTwyneLiqLtvEvent {
    function onTSetTwyneLiqLtvEvent(EventContext memory ctx, VaultManager$TSetTwyneLiqLtvEventParams memory inputs) virtual external;

    function triggerOnTSetTwyneLiqLtvEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x4ed6247dd07fa547f2a5675b8a09ba23414bcbb7250a9de94f2a17eb8fc56040),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetTwyneLiqLtvEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSetVaultManagerEvent {
    function onTSetVaultManagerEvent(EventContext memory ctx, VaultManager$TSetVaultManagerEventParams memory inputs) virtual external;

    function triggerOnTSetVaultManagerEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x0b975cd083078350093c287a36366c9364e6669414749c4f8ea060b1a6207e03),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSetVaultManagerEvent.selector
        });
    }
}

abstract contract VaultManager$OnTSkimEvent {
    function onTSkimEvent(EventContext memory ctx, VaultManager$TSkimEventParams memory inputs) virtual external;

    function triggerOnTSkimEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0xbf070d83d8b5b8f55a9661ab7e6003ff366d49ace118b225d25a86194f4004d1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTSkimEvent.selector
        });
    }
}

abstract contract VaultManager$OnTTeleportEvent {
    function onTTeleportEvent(EventContext memory ctx, VaultManager$TTeleportEventParams memory inputs) virtual external;

    function triggerOnTTeleportEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x4e237f0423b2c96207fb350d6582eaaa4301aa520358058af3b5fdad69ec21bc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTTeleportEvent.selector
        });
    }
}

abstract contract VaultManager$OnTWithdrawEvent {
    function onTWithdrawEvent(EventContext memory ctx, VaultManager$TWithdrawEventParams memory inputs) virtual external;

    function triggerOnTWithdrawEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes32(0x226e3a154752424088fa9e17a43d1d4eb4738179083b3e9fb71b0a14e0949dcd),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTWithdrawEvent.selector
        });
    }
}

abstract contract VaultManager$OnAllowedTargetVaultListFunction {
    function onAllowedTargetVaultListFunction(FunctionContext memory ctx, VaultManager$AllowedTargetVaultListFunctionInputs memory inputs, VaultManager$AllowedTargetVaultListFunctionOutputs memory outputs) virtual external;

    function triggerOnAllowedTargetVaultListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x62844a1d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAllowedTargetVaultListFunction.selector
        });
    }
}

abstract contract VaultManager$PreAllowedTargetVaultListFunction {
    function preAllowedTargetVaultListFunction(PreFunctionContext memory ctx, VaultManager$AllowedTargetVaultListFunctionInputs memory inputs) virtual external;

    function triggerPreAllowedTargetVaultListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x62844a1d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAllowedTargetVaultListFunction.selector
        });
    }
}

abstract contract VaultManager$OnCheckLiqLtvFunction {
    function onCheckLiqLtvFunction(FunctionContext memory ctx, VaultManager$CheckLiqLtvFunctionInputs memory inputs) virtual external;

    function triggerOnCheckLiqLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x7fcc23f0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckLiqLtvFunction.selector
        });
    }
}

abstract contract VaultManager$PreCheckLiqLtvFunction {
    function preCheckLiqLtvFunction(PreFunctionContext memory ctx, VaultManager$CheckLiqLtvFunctionInputs memory inputs) virtual external;

    function triggerPreCheckLiqLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x7fcc23f0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckLiqLtvFunction.selector
        });
    }
}

abstract contract VaultManager$OnCollateralVaultFactoryFunction {
    function onCollateralVaultFactoryFunction(FunctionContext memory ctx, VaultManager$CollateralVaultFactoryFunctionOutputs memory outputs) virtual external;

    function triggerOnCollateralVaultFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x5297ffbb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCollateralVaultFactoryFunction.selector
        });
    }
}

abstract contract VaultManager$PreCollateralVaultFactoryFunction {
    function preCollateralVaultFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCollateralVaultFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x5297ffbb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCollateralVaultFactoryFunction.selector
        });
    }
}

abstract contract VaultManager$OnDoCallFunction {
    function onDoCallFunction(FunctionContext memory ctx, VaultManager$DoCallFunctionInputs memory inputs) virtual external;

    function triggerOnDoCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x1abdc35a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDoCallFunction.selector
        });
    }
}

abstract contract VaultManager$PreDoCallFunction {
    function preDoCallFunction(PreFunctionContext memory ctx, VaultManager$DoCallFunctionInputs memory inputs) virtual external;

    function triggerPreDoCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x1abdc35a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDoCallFunction.selector
        });
    }
}

abstract contract VaultManager$OnExternalLiqBuffersFunction {
    function onExternalLiqBuffersFunction(FunctionContext memory ctx, VaultManager$ExternalLiqBuffersFunctionInputs memory inputs, VaultManager$ExternalLiqBuffersFunctionOutputs memory outputs) virtual external;

    function triggerOnExternalLiqBuffersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x01d488eb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onExternalLiqBuffersFunction.selector
        });
    }
}

abstract contract VaultManager$PreExternalLiqBuffersFunction {
    function preExternalLiqBuffersFunction(PreFunctionContext memory ctx, VaultManager$ExternalLiqBuffersFunctionInputs memory inputs) virtual external;

    function triggerPreExternalLiqBuffersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x01d488eb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preExternalLiqBuffersFunction.selector
        });
    }
}

abstract contract VaultManager$OnGetIntermediateVaultFunction {
    function onGetIntermediateVaultFunction(FunctionContext memory ctx, VaultManager$GetIntermediateVaultFunctionInputs memory inputs, VaultManager$GetIntermediateVaultFunctionOutputs memory outputs) virtual external;

    function triggerOnGetIntermediateVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xce504bf5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetIntermediateVaultFunction.selector
        });
    }
}

abstract contract VaultManager$PreGetIntermediateVaultFunction {
    function preGetIntermediateVaultFunction(PreFunctionContext memory ctx, VaultManager$GetIntermediateVaultFunctionInputs memory inputs) virtual external;

    function triggerPreGetIntermediateVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xce504bf5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetIntermediateVaultFunction.selector
        });
    }
}

abstract contract VaultManager$OnIsAllowedTargetVaultFunction {
    function onIsAllowedTargetVaultFunction(FunctionContext memory ctx, VaultManager$IsAllowedTargetVaultFunctionInputs memory inputs, VaultManager$IsAllowedTargetVaultFunctionOutputs memory outputs) virtual external;

    function triggerOnIsAllowedTargetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xec97b18c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsAllowedTargetVaultFunction.selector
        });
    }
}

abstract contract VaultManager$PreIsAllowedTargetVaultFunction {
    function preIsAllowedTargetVaultFunction(PreFunctionContext memory ctx, VaultManager$IsAllowedTargetVaultFunctionInputs memory inputs) virtual external;

    function triggerPreIsAllowedTargetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xec97b18c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsAllowedTargetVaultFunction.selector
        });
    }
}

abstract contract VaultManager$OnMaxTwyneLtVsFunction {
    function onMaxTwyneLtVsFunction(FunctionContext memory ctx, VaultManager$MaxTwyneLtVsFunctionInputs memory inputs, VaultManager$MaxTwyneLtVsFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxTwyneLtVsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x7b6b8447),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxTwyneLtVsFunction.selector
        });
    }
}

abstract contract VaultManager$PreMaxTwyneLtVsFunction {
    function preMaxTwyneLtVsFunction(PreFunctionContext memory ctx, VaultManager$MaxTwyneLtVsFunctionInputs memory inputs) virtual external;

    function triggerPreMaxTwyneLtVsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x7b6b8447),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxTwyneLtVsFunction.selector
        });
    }
}

abstract contract VaultManager$OnOracleRouterFunction {
    function onOracleRouterFunction(FunctionContext memory ctx, VaultManager$OracleRouterFunctionOutputs memory outputs) virtual external;

    function triggerOnOracleRouterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x55a29e91),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOracleRouterFunction.selector
        });
    }
}

abstract contract VaultManager$PreOracleRouterFunction {
    function preOracleRouterFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOracleRouterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x55a29e91),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOracleRouterFunction.selector
        });
    }
}

abstract contract VaultManager$OnOwnerFunction {
    function onOwnerFunction(FunctionContext memory ctx, VaultManager$OwnerFunctionOutputs memory outputs) virtual external;

    function triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnerFunction.selector
        });
    }
}

abstract contract VaultManager$PreOwnerFunction {
    function preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOwnerFunction.selector
        });
    }
}

abstract contract VaultManager$OnRemoveAllowedTargetVaultFunction {
    function onRemoveAllowedTargetVaultFunction(FunctionContext memory ctx, VaultManager$RemoveAllowedTargetVaultFunctionInputs memory inputs) virtual external;

    function triggerOnRemoveAllowedTargetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xbff63c67),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRemoveAllowedTargetVaultFunction.selector
        });
    }
}

abstract contract VaultManager$PreRemoveAllowedTargetVaultFunction {
    function preRemoveAllowedTargetVaultFunction(PreFunctionContext memory ctx, VaultManager$RemoveAllowedTargetVaultFunctionInputs memory inputs) virtual external;

    function triggerPreRemoveAllowedTargetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xbff63c67),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRemoveAllowedTargetVaultFunction.selector
        });
    }
}

abstract contract VaultManager$OnRenounceOwnershipFunction {
    function onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract VaultManager$PreRenounceOwnershipFunction {
    function preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract VaultManager$OnSetAllowedTargetVaultFunction {
    function onSetAllowedTargetVaultFunction(FunctionContext memory ctx, VaultManager$SetAllowedTargetVaultFunctionInputs memory inputs) virtual external;

    function triggerOnSetAllowedTargetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xc0bcfa92),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetAllowedTargetVaultFunction.selector
        });
    }
}

abstract contract VaultManager$PreSetAllowedTargetVaultFunction {
    function preSetAllowedTargetVaultFunction(PreFunctionContext memory ctx, VaultManager$SetAllowedTargetVaultFunctionInputs memory inputs) virtual external;

    function triggerPreSetAllowedTargetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xc0bcfa92),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetAllowedTargetVaultFunction.selector
        });
    }
}

abstract contract VaultManager$OnSetCollateralVaultFactoryFunction {
    function onSetCollateralVaultFactoryFunction(FunctionContext memory ctx, VaultManager$SetCollateralVaultFactoryFunctionInputs memory inputs) virtual external;

    function triggerOnSetCollateralVaultFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x54dfcf4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetCollateralVaultFactoryFunction.selector
        });
    }
}

abstract contract VaultManager$PreSetCollateralVaultFactoryFunction {
    function preSetCollateralVaultFactoryFunction(PreFunctionContext memory ctx, VaultManager$SetCollateralVaultFactoryFunctionInputs memory inputs) virtual external;

    function triggerPreSetCollateralVaultFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x54dfcf4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetCollateralVaultFactoryFunction.selector
        });
    }
}

abstract contract VaultManager$OnSetExternalLiqBufferFunction {
    function onSetExternalLiqBufferFunction(FunctionContext memory ctx, VaultManager$SetExternalLiqBufferFunctionInputs memory inputs) virtual external;

    function triggerOnSetExternalLiqBufferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xda7f7f80),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetExternalLiqBufferFunction.selector
        });
    }
}

abstract contract VaultManager$PreSetExternalLiqBufferFunction {
    function preSetExternalLiqBufferFunction(PreFunctionContext memory ctx, VaultManager$SetExternalLiqBufferFunctionInputs memory inputs) virtual external;

    function triggerPreSetExternalLiqBufferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xda7f7f80),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetExternalLiqBufferFunction.selector
        });
    }
}

abstract contract VaultManager$OnSetIntermediateVaultFunction {
    function onSetIntermediateVaultFunction(FunctionContext memory ctx, VaultManager$SetIntermediateVaultFunctionInputs memory inputs) virtual external;

    function triggerOnSetIntermediateVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x0d453737),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetIntermediateVaultFunction.selector
        });
    }
}

abstract contract VaultManager$PreSetIntermediateVaultFunction {
    function preSetIntermediateVaultFunction(PreFunctionContext memory ctx, VaultManager$SetIntermediateVaultFunctionInputs memory inputs) virtual external;

    function triggerPreSetIntermediateVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x0d453737),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetIntermediateVaultFunction.selector
        });
    }
}

abstract contract VaultManager$OnSetLtvFunction {
    function onSetLtvFunction(FunctionContext memory ctx, VaultManager$SetLtvFunctionInputs memory inputs) virtual external;

    function triggerOnSetLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x8b9925e8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetLtvFunction.selector
        });
    }
}

abstract contract VaultManager$PreSetLtvFunction {
    function preSetLtvFunction(PreFunctionContext memory ctx, VaultManager$SetLtvFunctionInputs memory inputs) virtual external;

    function triggerPreSetLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x8b9925e8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetLtvFunction.selector
        });
    }
}

abstract contract VaultManager$OnSetMaxLiquidationLtvFunction {
    function onSetMaxLiquidationLtvFunction(FunctionContext memory ctx, VaultManager$SetMaxLiquidationLtvFunctionInputs memory inputs) virtual external;

    function triggerOnSetMaxLiquidationLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x950bc62a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetMaxLiquidationLtvFunction.selector
        });
    }
}

abstract contract VaultManager$PreSetMaxLiquidationLtvFunction {
    function preSetMaxLiquidationLtvFunction(PreFunctionContext memory ctx, VaultManager$SetMaxLiquidationLtvFunctionInputs memory inputs) virtual external;

    function triggerPreSetMaxLiquidationLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x950bc62a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetMaxLiquidationLtvFunction.selector
        });
    }
}

abstract contract VaultManager$OnSetOracleResolvedVaultFunction {
    function onSetOracleResolvedVaultFunction(FunctionContext memory ctx, VaultManager$SetOracleResolvedVaultFunctionInputs memory inputs) virtual external;

    function triggerOnSetOracleResolvedVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x21f9dd48),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetOracleResolvedVaultFunction.selector
        });
    }
}

abstract contract VaultManager$PreSetOracleResolvedVaultFunction {
    function preSetOracleResolvedVaultFunction(PreFunctionContext memory ctx, VaultManager$SetOracleResolvedVaultFunctionInputs memory inputs) virtual external;

    function triggerPreSetOracleResolvedVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x21f9dd48),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetOracleResolvedVaultFunction.selector
        });
    }
}

abstract contract VaultManager$OnSetOracleRouterFunction {
    function onSetOracleRouterFunction(FunctionContext memory ctx, VaultManager$SetOracleRouterFunctionInputs memory inputs) virtual external;

    function triggerOnSetOracleRouterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x4d69ee0e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetOracleRouterFunction.selector
        });
    }
}

abstract contract VaultManager$PreSetOracleRouterFunction {
    function preSetOracleRouterFunction(PreFunctionContext memory ctx, VaultManager$SetOracleRouterFunctionInputs memory inputs) virtual external;

    function triggerPreSetOracleRouterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x4d69ee0e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetOracleRouterFunction.selector
        });
    }
}

abstract contract VaultManager$OnTargetVaultLengthFunction {
    function onTargetVaultLengthFunction(FunctionContext memory ctx, VaultManager$TargetVaultLengthFunctionInputs memory inputs, VaultManager$TargetVaultLengthFunctionOutputs memory outputs) virtual external;

    function triggerOnTargetVaultLengthFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x74ad9dfa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTargetVaultLengthFunction.selector
        });
    }
}

abstract contract VaultManager$PreTargetVaultLengthFunction {
    function preTargetVaultLengthFunction(PreFunctionContext memory ctx, VaultManager$TargetVaultLengthFunctionInputs memory inputs) virtual external;

    function triggerPreTargetVaultLengthFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0x74ad9dfa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTargetVaultLengthFunction.selector
        });
    }
}

abstract contract VaultManager$OnTransferOwnershipFunction {
    function onTransferOwnershipFunction(FunctionContext memory ctx, VaultManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferOwnershipFunction.selector
        });
    }
}

abstract contract VaultManager$PreTransferOwnershipFunction {
    function preTransferOwnershipFunction(PreFunctionContext memory ctx, VaultManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "VaultManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferOwnershipFunction.selector
        });
    }
}


struct VaultManager$EmitAllEvents$OwnershipTransferred {
  address previousOwner;
  address newOwner;
}

struct VaultManager$EmitAllEvents$TAddAllowedTargetVault {
  address intermediateVault;
  address targetVault;
}

struct VaultManager$EmitAllEvents$TBorrow {
  uint256 targetAmount;
  address receiver;
}

struct VaultManager$EmitAllEvents$TCollateralVaultCreated {
  address vault;
}

struct VaultManager$EmitAllEvents$TDeposit {
  uint256 amount;
}

struct VaultManager$EmitAllEvents$TDepositUnderlying {
  uint256 amount;
}

struct VaultManager$EmitAllEvents$TDoCall {
  address to;
  uint256 value;
  bytes data;
}

struct VaultManager$EmitAllEvents$TFactoryPause {
  bool pause;
}

struct VaultManager$EmitAllEvents$TRedeemUnderlying {
  uint256 amount;
  address receiver;
}

struct VaultManager$EmitAllEvents$TRemoveAllowedTargetVault {
  address intermediateVault;
  address targetVault;
  uint256 index;
}

struct VaultManager$EmitAllEvents$TRepay {
  uint256 repayAmount;
}

struct VaultManager$EmitAllEvents$TSetBeacon {
  address targetVault;
  address beacon;
}

struct VaultManager$EmitAllEvents$TSetCollateralVaultFactory {
  address factory;
}

struct VaultManager$EmitAllEvents$TSetCollateralVaultLiquidated {
  address collateralVault;
  address liquidator;
}

struct VaultManager$EmitAllEvents$TSetExternalLiqBuffer {
  address collateralAddress;
  uint16 liqBuffer;
}

struct VaultManager$EmitAllEvents$TSetIntermediateVault {
  address intermediateVault;
}

struct VaultManager$EmitAllEvents$TSetLtv {
  address intermediateVault;
  address collateralVault;
  uint16 borrowLimit;
  uint16 liquidationLimit;
  uint32 rampDuration;
}

struct VaultManager$EmitAllEvents$TSetMaxLiqLtv {
  address collateralAddress;
  uint16 ltv;
}

struct VaultManager$EmitAllEvents$TSetOracleResolvedVault {
  address collateralAddress;
  bool allow;
}

struct VaultManager$EmitAllEvents$TSetOracleRouter {
  address newOracleRouter;
}

struct VaultManager$EmitAllEvents$TSetTwyneLiqLtv {
  uint256 ltv;
}

struct VaultManager$EmitAllEvents$TSetVaultManager {
  address vaultManager;
}

struct VaultManager$EmitAllEvents$TSkim {
  uint256 amount;
}

struct VaultManager$EmitAllEvents$TTeleport {
  uint256 toDeposit;
  uint256 toBorrow;
}

struct VaultManager$EmitAllEvents$TWithdraw {
  uint256 amount;
  address receiver;
}

contract VaultManager$EmitAllEvents is
  VaultManager$OnOwnershipTransferredEvent,
VaultManager$OnTAddAllowedTargetVaultEvent,
VaultManager$OnTBorrowEvent,
VaultManager$OnTCollateralVaultCreatedEvent,
VaultManager$OnTCollateralVaultInitializedEvent,
VaultManager$OnTControllerDisabledEvent,
VaultManager$OnTDepositEvent,
VaultManager$OnTDepositUnderlyingEvent,
VaultManager$OnTDoCallEvent,
VaultManager$OnTFactoryPauseEvent,
VaultManager$OnTHandleExternalLiquidationEvent,
VaultManager$OnTRebalanceEvent,
VaultManager$OnTRedeemUnderlyingEvent,
VaultManager$OnTRemoveAllowedTargetVaultEvent,
VaultManager$OnTRepayEvent,
VaultManager$OnTSetBeaconEvent,
VaultManager$OnTSetCollateralVaultFactoryEvent,
VaultManager$OnTSetCollateralVaultLiquidatedEvent,
VaultManager$OnTSetExternalLiqBufferEvent,
VaultManager$OnTSetIntermediateVaultEvent,
VaultManager$OnTSetLtvEvent,
VaultManager$OnTSetMaxLiqLtvEvent,
VaultManager$OnTSetOracleResolvedVaultEvent,
VaultManager$OnTSetOracleRouterEvent,
VaultManager$OnTSetTwyneLiqLtvEvent,
VaultManager$OnTSetVaultManagerEvent,
VaultManager$OnTSkimEvent,
VaultManager$OnTTeleportEvent,
VaultManager$OnTWithdrawEvent
{
  event OwnershipTransferred(VaultManager$EmitAllEvents$OwnershipTransferred);
  event TAddAllowedTargetVault(VaultManager$EmitAllEvents$TAddAllowedTargetVault);
  event TBorrow(VaultManager$EmitAllEvents$TBorrow);
  event TCollateralVaultCreated(VaultManager$EmitAllEvents$TCollateralVaultCreated);
  event TCollateralVaultInitialized();
  event TControllerDisabled();
  event TDeposit(VaultManager$EmitAllEvents$TDeposit);
  event TDepositUnderlying(VaultManager$EmitAllEvents$TDepositUnderlying);
  event TDoCall(VaultManager$EmitAllEvents$TDoCall);
  event TFactoryPause(VaultManager$EmitAllEvents$TFactoryPause);
  event THandleExternalLiquidation();
  event TRebalance();
  event TRedeemUnderlying(VaultManager$EmitAllEvents$TRedeemUnderlying);
  event TRemoveAllowedTargetVault(VaultManager$EmitAllEvents$TRemoveAllowedTargetVault);
  event TRepay(VaultManager$EmitAllEvents$TRepay);
  event TSetBeacon(VaultManager$EmitAllEvents$TSetBeacon);
  event TSetCollateralVaultFactory(VaultManager$EmitAllEvents$TSetCollateralVaultFactory);
  event TSetCollateralVaultLiquidated(VaultManager$EmitAllEvents$TSetCollateralVaultLiquidated);
  event TSetExternalLiqBuffer(VaultManager$EmitAllEvents$TSetExternalLiqBuffer);
  event TSetIntermediateVault(VaultManager$EmitAllEvents$TSetIntermediateVault);
  event TSetLtv(VaultManager$EmitAllEvents$TSetLtv);
  event TSetMaxLiqLtv(VaultManager$EmitAllEvents$TSetMaxLiqLtv);
  event TSetOracleResolvedVault(VaultManager$EmitAllEvents$TSetOracleResolvedVault);
  event TSetOracleRouter(VaultManager$EmitAllEvents$TSetOracleRouter);
  event TSetTwyneLiqLtv(VaultManager$EmitAllEvents$TSetTwyneLiqLtv);
  event TSetVaultManager(VaultManager$EmitAllEvents$TSetVaultManager);
  event TSkim(VaultManager$EmitAllEvents$TSkim);
  event TTeleport(VaultManager$EmitAllEvents$TTeleport);
  event TWithdraw(VaultManager$EmitAllEvents$TWithdraw);

  function onOwnershipTransferredEvent(EventContext memory ctx, VaultManager$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(VaultManager$EmitAllEvents$OwnershipTransferred(inputs.previousOwner, inputs.newOwner));
  }
function onTAddAllowedTargetVaultEvent(EventContext memory ctx, VaultManager$TAddAllowedTargetVaultEventParams memory inputs) virtual external override {
    emit TAddAllowedTargetVault(VaultManager$EmitAllEvents$TAddAllowedTargetVault(inputs.intermediateVault, inputs.targetVault));
  }
function onTBorrowEvent(EventContext memory ctx, VaultManager$TBorrowEventParams memory inputs) virtual external override {
    emit TBorrow(VaultManager$EmitAllEvents$TBorrow(inputs.targetAmount, inputs.receiver));
  }
function onTCollateralVaultCreatedEvent(EventContext memory ctx, VaultManager$TCollateralVaultCreatedEventParams memory inputs) virtual external override {
    emit TCollateralVaultCreated(VaultManager$EmitAllEvents$TCollateralVaultCreated(inputs.vault));
  }
function onTCollateralVaultInitializedEvent(EventContext memory ctx) virtual external override {
    emit TCollateralVaultInitialized();
  }
function onTControllerDisabledEvent(EventContext memory ctx) virtual external override {
    emit TControllerDisabled();
  }
function onTDepositEvent(EventContext memory ctx, VaultManager$TDepositEventParams memory inputs) virtual external override {
    emit TDeposit(VaultManager$EmitAllEvents$TDeposit(inputs.amount));
  }
function onTDepositUnderlyingEvent(EventContext memory ctx, VaultManager$TDepositUnderlyingEventParams memory inputs) virtual external override {
    emit TDepositUnderlying(VaultManager$EmitAllEvents$TDepositUnderlying(inputs.amount));
  }
function onTDoCallEvent(EventContext memory ctx, VaultManager$TDoCallEventParams memory inputs) virtual external override {
    emit TDoCall(VaultManager$EmitAllEvents$TDoCall(inputs.to, inputs.value, inputs.data));
  }
function onTFactoryPauseEvent(EventContext memory ctx, VaultManager$TFactoryPauseEventParams memory inputs) virtual external override {
    emit TFactoryPause(VaultManager$EmitAllEvents$TFactoryPause(inputs.pause));
  }
function onTHandleExternalLiquidationEvent(EventContext memory ctx) virtual external override {
    emit THandleExternalLiquidation();
  }
function onTRebalanceEvent(EventContext memory ctx) virtual external override {
    emit TRebalance();
  }
function onTRedeemUnderlyingEvent(EventContext memory ctx, VaultManager$TRedeemUnderlyingEventParams memory inputs) virtual external override {
    emit TRedeemUnderlying(VaultManager$EmitAllEvents$TRedeemUnderlying(inputs.amount, inputs.receiver));
  }
function onTRemoveAllowedTargetVaultEvent(EventContext memory ctx, VaultManager$TRemoveAllowedTargetVaultEventParams memory inputs) virtual external override {
    emit TRemoveAllowedTargetVault(VaultManager$EmitAllEvents$TRemoveAllowedTargetVault(inputs.intermediateVault, inputs.targetVault, inputs.index));
  }
function onTRepayEvent(EventContext memory ctx, VaultManager$TRepayEventParams memory inputs) virtual external override {
    emit TRepay(VaultManager$EmitAllEvents$TRepay(inputs.repayAmount));
  }
function onTSetBeaconEvent(EventContext memory ctx, VaultManager$TSetBeaconEventParams memory inputs) virtual external override {
    emit TSetBeacon(VaultManager$EmitAllEvents$TSetBeacon(inputs.targetVault, inputs.beacon));
  }
function onTSetCollateralVaultFactoryEvent(EventContext memory ctx, VaultManager$TSetCollateralVaultFactoryEventParams memory inputs) virtual external override {
    emit TSetCollateralVaultFactory(VaultManager$EmitAllEvents$TSetCollateralVaultFactory(inputs.factory));
  }
function onTSetCollateralVaultLiquidatedEvent(EventContext memory ctx, VaultManager$TSetCollateralVaultLiquidatedEventParams memory inputs) virtual external override {
    emit TSetCollateralVaultLiquidated(VaultManager$EmitAllEvents$TSetCollateralVaultLiquidated(inputs.collateralVault, inputs.liquidator));
  }
function onTSetExternalLiqBufferEvent(EventContext memory ctx, VaultManager$TSetExternalLiqBufferEventParams memory inputs) virtual external override {
    emit TSetExternalLiqBuffer(VaultManager$EmitAllEvents$TSetExternalLiqBuffer(inputs.collateralAddress, inputs.liqBuffer));
  }
function onTSetIntermediateVaultEvent(EventContext memory ctx, VaultManager$TSetIntermediateVaultEventParams memory inputs) virtual external override {
    emit TSetIntermediateVault(VaultManager$EmitAllEvents$TSetIntermediateVault(inputs.intermediateVault));
  }
function onTSetLtvEvent(EventContext memory ctx, VaultManager$TSetLtvEventParams memory inputs) virtual external override {
    emit TSetLtv(VaultManager$EmitAllEvents$TSetLtv(inputs.intermediateVault, inputs.collateralVault, inputs.borrowLimit, inputs.liquidationLimit, inputs.rampDuration));
  }
function onTSetMaxLiqLtvEvent(EventContext memory ctx, VaultManager$TSetMaxLiqLtvEventParams memory inputs) virtual external override {
    emit TSetMaxLiqLtv(VaultManager$EmitAllEvents$TSetMaxLiqLtv(inputs.collateralAddress, inputs.ltv));
  }
function onTSetOracleResolvedVaultEvent(EventContext memory ctx, VaultManager$TSetOracleResolvedVaultEventParams memory inputs) virtual external override {
    emit TSetOracleResolvedVault(VaultManager$EmitAllEvents$TSetOracleResolvedVault(inputs.collateralAddress, inputs.allow));
  }
function onTSetOracleRouterEvent(EventContext memory ctx, VaultManager$TSetOracleRouterEventParams memory inputs) virtual external override {
    emit TSetOracleRouter(VaultManager$EmitAllEvents$TSetOracleRouter(inputs.newOracleRouter));
  }
function onTSetTwyneLiqLtvEvent(EventContext memory ctx, VaultManager$TSetTwyneLiqLtvEventParams memory inputs) virtual external override {
    emit TSetTwyneLiqLtv(VaultManager$EmitAllEvents$TSetTwyneLiqLtv(inputs.ltv));
  }
function onTSetVaultManagerEvent(EventContext memory ctx, VaultManager$TSetVaultManagerEventParams memory inputs) virtual external override {
    emit TSetVaultManager(VaultManager$EmitAllEvents$TSetVaultManager(inputs.vaultManager));
  }
function onTSkimEvent(EventContext memory ctx, VaultManager$TSkimEventParams memory inputs) virtual external override {
    emit TSkim(VaultManager$EmitAllEvents$TSkim(inputs.amount));
  }
function onTTeleportEvent(EventContext memory ctx, VaultManager$TTeleportEventParams memory inputs) virtual external override {
    emit TTeleport(VaultManager$EmitAllEvents$TTeleport(inputs.toDeposit, inputs.toBorrow));
  }
function onTWithdrawEvent(EventContext memory ctx, VaultManager$TWithdrawEventParams memory inputs) virtual external override {
    emit TWithdraw(VaultManager$EmitAllEvents$TWithdraw(inputs.amount, inputs.receiver));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](29);
    triggers[0] = this.triggerOnOwnershipTransferredEvent();
    triggers[1] = this.triggerOnTAddAllowedTargetVaultEvent();
    triggers[2] = this.triggerOnTBorrowEvent();
    triggers[3] = this.triggerOnTCollateralVaultCreatedEvent();
    triggers[4] = this.triggerOnTCollateralVaultInitializedEvent();
    triggers[5] = this.triggerOnTControllerDisabledEvent();
    triggers[6] = this.triggerOnTDepositEvent();
    triggers[7] = this.triggerOnTDepositUnderlyingEvent();
    triggers[8] = this.triggerOnTDoCallEvent();
    triggers[9] = this.triggerOnTFactoryPauseEvent();
    triggers[10] = this.triggerOnTHandleExternalLiquidationEvent();
    triggers[11] = this.triggerOnTRebalanceEvent();
    triggers[12] = this.triggerOnTRedeemUnderlyingEvent();
    triggers[13] = this.triggerOnTRemoveAllowedTargetVaultEvent();
    triggers[14] = this.triggerOnTRepayEvent();
    triggers[15] = this.triggerOnTSetBeaconEvent();
    triggers[16] = this.triggerOnTSetCollateralVaultFactoryEvent();
    triggers[17] = this.triggerOnTSetCollateralVaultLiquidatedEvent();
    triggers[18] = this.triggerOnTSetExternalLiqBufferEvent();
    triggers[19] = this.triggerOnTSetIntermediateVaultEvent();
    triggers[20] = this.triggerOnTSetLtvEvent();
    triggers[21] = this.triggerOnTSetMaxLiqLtvEvent();
    triggers[22] = this.triggerOnTSetOracleResolvedVaultEvent();
    triggers[23] = this.triggerOnTSetOracleRouterEvent();
    triggers[24] = this.triggerOnTSetTwyneLiqLtvEvent();
    triggers[25] = this.triggerOnTSetVaultManagerEvent();
    triggers[26] = this.triggerOnTSkimEvent();
    triggers[27] = this.triggerOnTTeleportEvent();
    triggers[28] = this.triggerOnTWithdrawEvent();
    return triggers;
  }
}