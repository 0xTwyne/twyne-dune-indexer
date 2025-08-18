// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../../sim-idx-sol/src/Triggers.sol";
import "../../sim-idx-sol/src/Context.sol";

function EVault$Abi() pure returns (Abi memory) {
    return Abi("EVault");
}
struct EVault$EvcFunctionOutputs {
    address outArg0;
}

struct EVault$LtvBorrowFunctionInputs {
    address collateral;
}

struct EVault$LtvBorrowFunctionOutputs {
    uint16 outArg0;
}

struct EVault$LtvFullFunctionInputs {
    address collateral;
}

struct EVault$LtvFullFunctionOutputs {
    uint16 borrowLTV;
    uint16 liquidationLTV;
    uint16 initialLiquidationLTV;
    uint48 targetTimestamp;
    uint32 rampDuration;
}

struct EVault$LtvLiquidationFunctionInputs {
    address collateral;
}

struct EVault$LtvLiquidationFunctionOutputs {
    uint16 outArg0;
}

struct EVault$LtvListFunctionOutputs {
    address[] outArg0;
}

struct EVault$ModuleBalanceForwarderFunctionOutputs {
    address outArg0;
}

struct EVault$ModuleBorrowingFunctionOutputs {
    address outArg0;
}

struct EVault$ModuleGovernanceFunctionOutputs {
    address outArg0;
}

struct EVault$ModuleInitializeFunctionOutputs {
    address outArg0;
}

struct EVault$ModuleLiquidationFunctionOutputs {
    address outArg0;
}

struct EVault$ModuleRiskmanagerFunctionOutputs {
    address outArg0;
}

struct EVault$ModuleTokenFunctionOutputs {
    address outArg0;
}

struct EVault$ModuleVaultFunctionOutputs {
    address outArg0;
}

struct EVault$AccountLiquidityFunctionInputs {
    address account;
    bool liquidation;
}

struct EVault$AccountLiquidityFunctionOutputs {
    uint256 collateralValue;
    uint256 liabilityValue;
}

struct EVault$AccountLiquidityFullFunctionInputs {
    address account;
    bool liquidation;
}

struct EVault$AccountLiquidityFullFunctionOutputs {
    address[] collaterals;
    uint256[] collateralValues;
    uint256 liabilityValue;
}

struct EVault$AccumulatedFeesFunctionOutputs {
    uint256 outArg0;
}

struct EVault$AccumulatedFeesAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EVault$AllowanceFunctionInputs {
    address holder;
    address spender;
}

struct EVault$AllowanceFunctionOutputs {
    uint256 outArg0;
}

struct EVault$ApproveFunctionInputs {
    address spender;
    uint256 amount;
}

struct EVault$ApproveFunctionOutputs {
    bool outArg0;
}

struct EVault$AssetFunctionOutputs {
    address outArg0;
}

struct EVault$BalanceForwarderEnabledFunctionInputs {
    address account;
}

struct EVault$BalanceForwarderEnabledFunctionOutputs {
    bool outArg0;
}

struct EVault$BalanceOfFunctionInputs {
    address account;
}

struct EVault$BalanceOfFunctionOutputs {
    uint256 outArg0;
}

struct EVault$BalanceTrackerAddressFunctionOutputs {
    address outArg0;
}

struct EVault$BorrowFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault$BorrowFunctionOutputs {
    uint256 outArg0;
}

struct EVault$CapsFunctionOutputs {
    uint16 supplyCap;
    uint16 borrowCap;
}

struct EVault$CashFunctionOutputs {
    uint256 outArg0;
}

struct EVault$CheckAccountStatusFunctionInputs {
    address account;
    address[] collaterals;
}

struct EVault$CheckAccountStatusFunctionOutputs {
    bytes4 outArg0;
}

struct EVault$CheckLiquidationFunctionInputs {
    address liquidator;
    address violator;
    address collateral;
}

struct EVault$CheckLiquidationFunctionOutputs {
    uint256 maxRepay;
    uint256 maxYield;
}

struct EVault$CheckVaultStatusFunctionOutputs {
    bytes4 outArg0;
}

struct EVault$ConfigFlagsFunctionOutputs {
    uint32 outArg0;
}

struct EVault$ConvertToAssetsFunctionInputs {
    uint256 shares;
}

struct EVault$ConvertToAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EVault$ConvertToSharesFunctionInputs {
    uint256 assets;
}

struct EVault$ConvertToSharesFunctionOutputs {
    uint256 outArg0;
}

struct EVault$CreatorFunctionOutputs {
    address outArg0;
}

struct EVault$DTokenFunctionOutputs {
    address outArg0;
}

struct EVault$DebtOfFunctionInputs {
    address account;
}

struct EVault$DebtOfFunctionOutputs {
    uint256 outArg0;
}

struct EVault$DebtOfExactFunctionInputs {
    address account;
}

struct EVault$DebtOfExactFunctionOutputs {
    uint256 outArg0;
}

struct EVault$DecimalsFunctionOutputs {
    uint8 outArg0;
}

struct EVault$DepositFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault$DepositFunctionOutputs {
    uint256 outArg0;
}

struct EVault$FeeReceiverFunctionOutputs {
    address outArg0;
}

struct EVault$FlashLoanFunctionInputs {
    uint256 amount;
    bytes data;
}

struct EVault$GovernorAdminFunctionOutputs {
    address outArg0;
}

struct EVault$HookConfigFunctionOutputs {
    address outArg0;
    uint32 outArg1;
}

struct EVault$InitializeFunctionInputs {
    address proxyCreator;
}

struct EVault$InterestAccumulatorFunctionOutputs {
    uint256 outArg0;
}

struct EVault$InterestFeeFunctionOutputs {
    uint16 outArg0;
}

struct EVault$InterestRateFunctionOutputs {
    uint256 outArg0;
}

struct EVault$InterestRateModelFunctionOutputs {
    address outArg0;
}

struct EVault$LiquidateFunctionInputs {
    address violator;
    address collateral;
    uint256 repayAssets;
    uint256 minYieldBalance;
}

struct EVault$LiquidationCoolOffTimeFunctionOutputs {
    uint16 outArg0;
}

struct EVault$MaxDepositFunctionInputs {
    address account;
}

struct EVault$MaxDepositFunctionOutputs {
    uint256 outArg0;
}

struct EVault$MaxLiquidationDiscountFunctionOutputs {
    uint16 outArg0;
}

struct EVault$MaxMintFunctionInputs {
    address account;
}

struct EVault$MaxMintFunctionOutputs {
    uint256 outArg0;
}

struct EVault$MaxRedeemFunctionInputs {
    address owner;
}

struct EVault$MaxRedeemFunctionOutputs {
    uint256 outArg0;
}

struct EVault$MaxWithdrawFunctionInputs {
    address owner;
}

struct EVault$MaxWithdrawFunctionOutputs {
    uint256 outArg0;
}

struct EVault$MintFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault$MintFunctionOutputs {
    uint256 outArg0;
}

struct EVault$NameFunctionOutputs {
    string outArg0;
}

struct EVault$OracleFunctionOutputs {
    address outArg0;
}

struct EVault$Permit2AddressFunctionOutputs {
    address outArg0;
}

struct EVault$PreviewDepositFunctionInputs {
    uint256 assets;
}

struct EVault$PreviewDepositFunctionOutputs {
    uint256 outArg0;
}

struct EVault$PreviewMintFunctionInputs {
    uint256 shares;
}

struct EVault$PreviewMintFunctionOutputs {
    uint256 outArg0;
}

struct EVault$PreviewRedeemFunctionInputs {
    uint256 shares;
}

struct EVault$PreviewRedeemFunctionOutputs {
    uint256 outArg0;
}

struct EVault$PreviewWithdrawFunctionInputs {
    uint256 assets;
}

struct EVault$PreviewWithdrawFunctionOutputs {
    uint256 outArg0;
}

struct EVault$ProtocolConfigAddressFunctionOutputs {
    address outArg0;
}

struct EVault$ProtocolFeeReceiverFunctionOutputs {
    address outArg0;
}

struct EVault$ProtocolFeeShareFunctionOutputs {
    uint256 outArg0;
}

struct EVault$PullDebtFunctionInputs {
    uint256 amount;
    address from;
}

struct EVault$RedeemFunctionInputs {
    uint256 amount;
    address receiver;
    address owner;
}

struct EVault$RedeemFunctionOutputs {
    uint256 outArg0;
}

struct EVault$RepayFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault$RepayFunctionOutputs {
    uint256 outArg0;
}

struct EVault$RepayWithSharesFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault$RepayWithSharesFunctionOutputs {
    uint256 shares;
    uint256 debt;
}

struct EVault$SetCapsFunctionInputs {
    uint16 supplyCap;
    uint16 borrowCap;
}

struct EVault$SetConfigFlagsFunctionInputs {
    uint32 newConfigFlags;
}

struct EVault$SetFeeReceiverFunctionInputs {
    address newFeeReceiver;
}

struct EVault$SetGovernorAdminFunctionInputs {
    address newGovernorAdmin;
}

struct EVault$SetHookConfigFunctionInputs {
    address newHookTarget;
    uint32 newHookedOps;
}

struct EVault$SetInterestFeeFunctionInputs {
    uint16 newFee;
}

struct EVault$SetInterestRateModelFunctionInputs {
    address newModel;
}

struct EVault$SetLtvFunctionInputs {
    address collateral;
    uint16 borrowLTV;
    uint16 liquidationLTV;
    uint32 rampDuration;
}

struct EVault$SetLiquidationCoolOffTimeFunctionInputs {
    uint16 newCoolOffTime;
}

struct EVault$SetMaxLiquidationDiscountFunctionInputs {
    uint16 newDiscount;
}

struct EVault$SkimFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault$SkimFunctionOutputs {
    uint256 outArg0;
}

struct EVault$SymbolFunctionOutputs {
    string outArg0;
}

struct EVault$TotalAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EVault$TotalBorrowsFunctionOutputs {
    uint256 outArg0;
}

struct EVault$TotalBorrowsExactFunctionOutputs {
    uint256 outArg0;
}

struct EVault$TotalSupplyFunctionOutputs {
    uint256 outArg0;
}

struct EVault$TransferFunctionInputs {
    address to;
    uint256 amount;
}

struct EVault$TransferFunctionOutputs {
    bool outArg0;
}

struct EVault$TransferFromFunctionInputs {
    address from;
    address to;
    uint256 amount;
}

struct EVault$TransferFromFunctionOutputs {
    bool outArg0;
}

struct EVault$TransferFromMaxFunctionInputs {
    address from;
    address to;
}

struct EVault$TransferFromMaxFunctionOutputs {
    bool outArg0;
}

struct EVault$UnitOfAccountFunctionOutputs {
    address outArg0;
}

struct EVault$WithdrawFunctionInputs {
    uint256 amount;
    address receiver;
    address owner;
}

struct EVault$WithdrawFunctionOutputs {
    uint256 outArg0;
}

struct EVault$ApprovalEventParams {
    address owner;
    address spender;
    uint256 value;
}

struct EVault$BalanceForwarderStatusEventParams {
    address account;
    bool status;
}

struct EVault$BorrowEventParams {
    address account;
    uint256 assets;
}

struct EVault$ConvertFeesEventParams {
    address sender;
    address protocolReceiver;
    address governorReceiver;
    uint256 protocolShares;
    uint256 governorShares;
}

struct EVault$DebtSocializedEventParams {
    address account;
    uint256 assets;
}

struct EVault$DepositEventParams {
    address sender;
    address owner;
    uint256 assets;
    uint256 shares;
}

struct EVault$EVaultCreatedEventParams {
    address creator;
    address asset;
    address dToken;
}

struct EVault$GovSetCapsEventParams {
    uint16 newSupplyCap;
    uint16 newBorrowCap;
}

struct EVault$GovSetConfigFlagsEventParams {
    uint32 newConfigFlags;
}

struct EVault$GovSetFeeReceiverEventParams {
    address newFeeReceiver;
}

struct EVault$GovSetGovernorAdminEventParams {
    address newGovernorAdmin;
}

struct EVault$GovSetHookConfigEventParams {
    address newHookTarget;
    uint32 newHookedOps;
}

struct EVault$GovSetInterestFeeEventParams {
    uint16 newFee;
}

struct EVault$GovSetInterestRateModelEventParams {
    address newInterestRateModel;
}

struct EVault$GovSetLtvEventParams {
    address collateral;
    uint16 borrowLTV;
    uint16 liquidationLTV;
    uint16 initialLiquidationLTV;
    uint48 targetTimestamp;
    uint32 rampDuration;
}

struct EVault$GovSetLiquidationCoolOffTimeEventParams {
    uint16 newCoolOffTime;
}

struct EVault$GovSetMaxLiquidationDiscountEventParams {
    uint16 newDiscount;
}

struct EVault$InterestAccruedEventParams {
    address account;
    uint256 assets;
}

struct EVault$LiquidateEventParams {
    address liquidator;
    address violator;
    address collateral;
    uint256 repayAssets;
    uint256 yieldBalance;
}

struct EVault$PullDebtEventParams {
    address from;
    address to;
    uint256 assets;
}

struct EVault$RepayEventParams {
    address account;
    uint256 assets;
}

struct EVault$TransferEventParams {
    address from;
    address to;
    uint256 value;
}

struct EVault$VaultStatusEventParams {
    uint256 totalShares;
    uint256 totalBorrows;
    uint256 accumulatedFees;
    uint256 cash;
    uint256 interestAccumulator;
    uint256 interestRate;
    uint256 timestamp;
}

struct EVault$WithdrawEventParams {
    address sender;
    address receiver;
    address owner;
    uint256 assets;
    uint256 shares;
}

abstract contract EVault$OnApprovalEvent {
    function onApprovalEvent(EventContext memory ctx, EVault$ApprovalEventParams memory inputs) virtual external;

    function triggerOnApprovalEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApprovalEvent.selector
        });
    }
}

abstract contract EVault$OnBalanceForwarderStatusEvent {
    function onBalanceForwarderStatusEvent(EventContext memory ctx, EVault$BalanceForwarderStatusEventParams memory inputs) virtual external;

    function triggerOnBalanceForwarderStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xc3e011ddce6181dafb5798a536341c7c601913626c31d31744f91b77b7e2412d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceForwarderStatusEvent.selector
        });
    }
}

abstract contract EVault$OnBorrowEvent {
    function onBorrowEvent(EventContext memory ctx, EVault$BorrowEventParams memory inputs) virtual external;

    function triggerOnBorrowEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xcbc04eca7e9da35cb1393a6135a199ca52e450d5e9251cbd99f7847d33a36750),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBorrowEvent.selector
        });
    }
}

abstract contract EVault$OnConvertFeesEvent {
    function onConvertFeesEvent(EventContext memory ctx, EVault$ConvertFeesEventParams memory inputs) virtual external;

    function triggerOnConvertFeesEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x4e16b07cac5fe5604af487e07b1b62efc8bd47477b18839f4688d2cae957f965),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertFeesEvent.selector
        });
    }
}

abstract contract EVault$OnDebtSocializedEvent {
    function onDebtSocializedEvent(EventContext memory ctx, EVault$DebtSocializedEventParams memory inputs) virtual external;

    function triggerOnDebtSocializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xe786d0bc2e83bf230ed9895a9c4d7756ab0c6e22eb8a4ff69c161ece76bd36df),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDebtSocializedEvent.selector
        });
    }
}

abstract contract EVault$OnDepositEvent {
    function onDepositEvent(EventContext memory ctx, EVault$DepositEventParams memory inputs) virtual external;

    function triggerOnDepositEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xdcbc1c05240f31ff3ad067ef1ee35ce4997762752e3a095284754544f4c709d7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositEvent.selector
        });
    }
}

abstract contract EVault$OnEVaultCreatedEvent {
    function onEVaultCreatedEvent(EventContext memory ctx, EVault$EVaultCreatedEventParams memory inputs) virtual external;

    function triggerOnEVaultCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x0cd345140b9008a43f99a999a328ece572a0193e8c8bf5f5755585e6f293b85e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEVaultCreatedEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetCapsEvent {
    function onGovSetCapsEvent(EventContext memory ctx, EVault$GovSetCapsEventParams memory inputs) virtual external;

    function triggerOnGovSetCapsEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xadbdcd178dfddc478805a3703b6cf3b72ca5e78ecebacffe1aad03188cc1cbf4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetCapsEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetConfigFlagsEvent {
    function onGovSetConfigFlagsEvent(EventContext memory ctx, EVault$GovSetConfigFlagsEventParams memory inputs) virtual external;

    function triggerOnGovSetConfigFlagsEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xe7f84c52c0ef295afe77de8cb30516d6f28d50306f979b45776dd1b619ae5ffc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetConfigFlagsEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetFeeReceiverEvent {
    function onGovSetFeeReceiverEvent(EventContext memory ctx, EVault$GovSetFeeReceiverEventParams memory inputs) virtual external;

    function triggerOnGovSetFeeReceiverEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x836a1afef2bc89de2cb4713cc8d312fccf2ff835230721c5f41f13374707413a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetFeeReceiverEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetGovernorAdminEvent {
    function onGovSetGovernorAdminEvent(EventContext memory ctx, EVault$GovSetGovernorAdminEventParams memory inputs) virtual external;

    function triggerOnGovSetGovernorAdminEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x1c145a4cd16d4148579b0f2296884ac4aa47536e4ef10a32e1cdc0dc3dd20ea4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetGovernorAdminEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetHookConfigEvent {
    function onGovSetHookConfigEvent(EventContext memory ctx, EVault$GovSetHookConfigEventParams memory inputs) virtual external;

    function triggerOnGovSetHookConfigEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xabadffb695acdb6863cd1324a91e5c359712b9110a55f9103774e2fb67dedb6a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetHookConfigEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetInterestFeeEvent {
    function onGovSetInterestFeeEvent(EventContext memory ctx, EVault$GovSetInterestFeeEventParams memory inputs) virtual external;

    function triggerOnGovSetInterestFeeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x634a58674e370383703eff32d9d4e4b3d1add94d50e8bcb631b04995d8e47341),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetInterestFeeEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetInterestRateModelEvent {
    function onGovSetInterestRateModelEvent(EventContext memory ctx, EVault$GovSetInterestRateModelEventParams memory inputs) virtual external;

    function triggerOnGovSetInterestRateModelEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xe5f2a795fc5f8baf1b05659293834c88859298226d87422c88624b4c9f4d3a43),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetInterestRateModelEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetLtvEvent {
    function onGovSetLtvEvent(EventContext memory ctx, EVault$GovSetLtvEventParams memory inputs) virtual external;

    function triggerOnGovSetLtvEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xc69392046c26324e9eee913208811542aabcbde6a41ce9ee3b45473b18eb3c76),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetLtvEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetLiquidationCoolOffTimeEvent {
    function onGovSetLiquidationCoolOffTimeEvent(EventContext memory ctx, EVault$GovSetLiquidationCoolOffTimeEventParams memory inputs) virtual external;

    function triggerOnGovSetLiquidationCoolOffTimeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xdf4edc1d288e7b3306b287d03fd77b2070b8b308c702bf7297f72d928175dfa5),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetLiquidationCoolOffTimeEvent.selector
        });
    }
}

abstract contract EVault$OnGovSetMaxLiquidationDiscountEvent {
    function onGovSetMaxLiquidationDiscountEvent(EventContext memory ctx, EVault$GovSetMaxLiquidationDiscountEventParams memory inputs) virtual external;

    function triggerOnGovSetMaxLiquidationDiscountEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x558a63d245d08220a137de3573129d3921e70e806adccf3a068c4723b9b3322d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetMaxLiquidationDiscountEvent.selector
        });
    }
}

abstract contract EVault$OnInterestAccruedEvent {
    function onInterestAccruedEvent(EventContext memory ctx, EVault$InterestAccruedEventParams memory inputs) virtual external;

    function triggerOnInterestAccruedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x5e804d42ae3b860f881d11cb44a4bb1f2f0d5b3d081f5539a32d6f97b629d978),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestAccruedEvent.selector
        });
    }
}

abstract contract EVault$OnLiquidateEvent {
    function onLiquidateEvent(EventContext memory ctx, EVault$LiquidateEventParams memory inputs) virtual external;

    function triggerOnLiquidateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x8246cc71ab01533b5bebc672a636df812f10637ad720797319d5741d5ebb3962),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateEvent.selector
        });
    }
}

abstract contract EVault$OnPullDebtEvent {
    function onPullDebtEvent(EventContext memory ctx, EVault$PullDebtEventParams memory inputs) virtual external;

    function triggerOnPullDebtEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xe6d0bfd9025bf59969101a13cf02e3ba2811b533816c47d7155546c7c8a1048f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPullDebtEvent.selector
        });
    }
}

abstract contract EVault$OnRepayEvent {
    function onRepayEvent(EventContext memory ctx, EVault$RepayEventParams memory inputs) virtual external;

    function triggerOnRepayEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x5c16de4f8b59bd9caf0f49a545f25819a895ed223294290b408242e72a594231),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayEvent.selector
        });
    }
}

abstract contract EVault$OnTransferEvent {
    function onTransferEvent(EventContext memory ctx, EVault$TransferEventParams memory inputs) virtual external;

    function triggerOnTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferEvent.selector
        });
    }
}

abstract contract EVault$OnVaultStatusEvent {
    function onVaultStatusEvent(EventContext memory ctx, EVault$VaultStatusEventParams memory inputs) virtual external;

    function triggerOnVaultStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0x80b61abbfc5f73cfe5cf93cec97a69ed20643dc6c6f1833b05a1560aa164e24c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVaultStatusEvent.selector
        });
    }
}

abstract contract EVault$OnWithdrawEvent {
    function onWithdrawEvent(EventContext memory ctx, EVault$WithdrawEventParams memory inputs) virtual external;

    function triggerOnWithdrawEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes32(0xfbde797d201c681b91056529119e0b02407c7bb96a4a2c75c01fc9667232c8db),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawEvent.selector
        });
    }
}

abstract contract EVault$OnEvcFunction {
    function onEvcFunction(FunctionContext memory ctx, EVault$EvcFunctionOutputs memory outputs) virtual external;

    function triggerOnEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEvcFunction.selector
        });
    }
}

abstract contract EVault$PreEvcFunction {
    function preEvcFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEvcFunction.selector
        });
    }
}

abstract contract EVault$OnLtvBorrowFunction {
    function onLtvBorrowFunction(FunctionContext memory ctx, EVault$LtvBorrowFunctionInputs memory inputs, EVault$LtvBorrowFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xbf58094d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvBorrowFunction.selector
        });
    }
}

abstract contract EVault$PreLtvBorrowFunction {
    function preLtvBorrowFunction(PreFunctionContext memory ctx, EVault$LtvBorrowFunctionInputs memory inputs) virtual external;

    function triggerPreLtvBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xbf58094d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvBorrowFunction.selector
        });
    }
}

abstract contract EVault$OnLtvFullFunction {
    function onLtvFullFunction(FunctionContext memory ctx, EVault$LtvFullFunctionInputs memory inputs, EVault$LtvFullFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x33708d0c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvFullFunction.selector
        });
    }
}

abstract contract EVault$PreLtvFullFunction {
    function preLtvFullFunction(PreFunctionContext memory ctx, EVault$LtvFullFunctionInputs memory inputs) virtual external;

    function triggerPreLtvFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x33708d0c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvFullFunction.selector
        });
    }
}

abstract contract EVault$OnLtvLiquidationFunction {
    function onLtvLiquidationFunction(FunctionContext memory ctx, EVault$LtvLiquidationFunctionInputs memory inputs, EVault$LtvLiquidationFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xaf5aaeeb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvLiquidationFunction.selector
        });
    }
}

abstract contract EVault$PreLtvLiquidationFunction {
    function preLtvLiquidationFunction(PreFunctionContext memory ctx, EVault$LtvLiquidationFunctionInputs memory inputs) virtual external;

    function triggerPreLtvLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xaf5aaeeb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvLiquidationFunction.selector
        });
    }
}

abstract contract EVault$OnLtvListFunction {
    function onLtvListFunction(FunctionContext memory ctx, EVault$LtvListFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x6a16ef84),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvListFunction.selector
        });
    }
}

abstract contract EVault$PreLtvListFunction {
    function preLtvListFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLtvListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x6a16ef84),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvListFunction.selector
        });
    }
}

abstract contract EVault$OnModuleBalanceForwarderFunction {
    function onModuleBalanceForwarderFunction(FunctionContext memory ctx, EVault$ModuleBalanceForwarderFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x883e3875),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault$PreModuleBalanceForwarderFunction {
    function preModuleBalanceForwarderFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x883e3875),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault$OnModuleBorrowingFunction {
    function onModuleBorrowingFunction(FunctionContext memory ctx, EVault$ModuleBorrowingFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleBorrowingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x14c054bc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleBorrowingFunction.selector
        });
    }
}

abstract contract EVault$PreModuleBorrowingFunction {
    function preModuleBorrowingFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleBorrowingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x14c054bc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleBorrowingFunction.selector
        });
    }
}

abstract contract EVault$OnModuleGovernanceFunction {
    function onModuleGovernanceFunction(FunctionContext memory ctx, EVault$ModuleGovernanceFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleGovernanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb4cd541b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleGovernanceFunction.selector
        });
    }
}

abstract contract EVault$PreModuleGovernanceFunction {
    function preModuleGovernanceFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleGovernanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb4cd541b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleGovernanceFunction.selector
        });
    }
}

abstract contract EVault$OnModuleInitializeFunction {
    function onModuleInitializeFunction(FunctionContext memory ctx, EVault$ModuleInitializeFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xad80ad0b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleInitializeFunction.selector
        });
    }
}

abstract contract EVault$PreModuleInitializeFunction {
    function preModuleInitializeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xad80ad0b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleInitializeFunction.selector
        });
    }
}

abstract contract EVault$OnModuleLiquidationFunction {
    function onModuleLiquidationFunction(FunctionContext memory ctx, EVault$ModuleLiquidationFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x42895567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleLiquidationFunction.selector
        });
    }
}

abstract contract EVault$PreModuleLiquidationFunction {
    function preModuleLiquidationFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x42895567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleLiquidationFunction.selector
        });
    }
}

abstract contract EVault$OnModuleRiskmanagerFunction {
    function onModuleRiskmanagerFunction(FunctionContext memory ctx, EVault$ModuleRiskmanagerFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleRiskmanagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x7d5f2e4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleRiskmanagerFunction.selector
        });
    }
}

abstract contract EVault$PreModuleRiskmanagerFunction {
    function preModuleRiskmanagerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleRiskmanagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x7d5f2e4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleRiskmanagerFunction.selector
        });
    }
}

abstract contract EVault$OnModuleTokenFunction {
    function onModuleTokenFunction(FunctionContext memory ctx, EVault$ModuleTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x5fa23055),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleTokenFunction.selector
        });
    }
}

abstract contract EVault$PreModuleTokenFunction {
    function preModuleTokenFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x5fa23055),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleTokenFunction.selector
        });
    }
}

abstract contract EVault$OnModuleVaultFunction {
    function onModuleVaultFunction(FunctionContext memory ctx, EVault$ModuleVaultFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xe2f206e5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleVaultFunction.selector
        });
    }
}

abstract contract EVault$PreModuleVaultFunction {
    function preModuleVaultFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xe2f206e5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleVaultFunction.selector
        });
    }
}

abstract contract EVault$OnAccountLiquidityFunction {
    function onAccountLiquidityFunction(FunctionContext memory ctx, EVault$AccountLiquidityFunctionInputs memory inputs, EVault$AccountLiquidityFunctionOutputs memory outputs) virtual external;

    function triggerOnAccountLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa824bf67),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccountLiquidityFunction.selector
        });
    }
}

abstract contract EVault$PreAccountLiquidityFunction {
    function preAccountLiquidityFunction(PreFunctionContext memory ctx, EVault$AccountLiquidityFunctionInputs memory inputs) virtual external;

    function triggerPreAccountLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa824bf67),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccountLiquidityFunction.selector
        });
    }
}

abstract contract EVault$OnAccountLiquidityFullFunction {
    function onAccountLiquidityFullFunction(FunctionContext memory ctx, EVault$AccountLiquidityFullFunctionInputs memory inputs, EVault$AccountLiquidityFullFunctionOutputs memory outputs) virtual external;

    function triggerOnAccountLiquidityFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc7b0e3a3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccountLiquidityFullFunction.selector
        });
    }
}

abstract contract EVault$PreAccountLiquidityFullFunction {
    function preAccountLiquidityFullFunction(PreFunctionContext memory ctx, EVault$AccountLiquidityFullFunctionInputs memory inputs) virtual external;

    function triggerPreAccountLiquidityFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc7b0e3a3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccountLiquidityFullFunction.selector
        });
    }
}

abstract contract EVault$OnAccumulatedFeesFunction {
    function onAccumulatedFeesFunction(FunctionContext memory ctx, EVault$AccumulatedFeesFunctionOutputs memory outputs) virtual external;

    function triggerOnAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x587f5ed7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccumulatedFeesFunction.selector
        });
    }
}

abstract contract EVault$PreAccumulatedFeesFunction {
    function preAccumulatedFeesFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x587f5ed7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccumulatedFeesFunction.selector
        });
    }
}

abstract contract EVault$OnAccumulatedFeesAssetsFunction {
    function onAccumulatedFeesAssetsFunction(FunctionContext memory ctx, EVault$AccumulatedFeesAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnAccumulatedFeesAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xf6e50f58),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccumulatedFeesAssetsFunction.selector
        });
    }
}

abstract contract EVault$PreAccumulatedFeesAssetsFunction {
    function preAccumulatedFeesAssetsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAccumulatedFeesAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xf6e50f58),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccumulatedFeesAssetsFunction.selector
        });
    }
}

abstract contract EVault$OnAllowanceFunction {
    function onAllowanceFunction(FunctionContext memory ctx, EVault$AllowanceFunctionInputs memory inputs, EVault$AllowanceFunctionOutputs memory outputs) virtual external;

    function triggerOnAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAllowanceFunction.selector
        });
    }
}

abstract contract EVault$PreAllowanceFunction {
    function preAllowanceFunction(PreFunctionContext memory ctx, EVault$AllowanceFunctionInputs memory inputs) virtual external;

    function triggerPreAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAllowanceFunction.selector
        });
    }
}

abstract contract EVault$OnApproveFunction {
    function onApproveFunction(FunctionContext memory ctx, EVault$ApproveFunctionInputs memory inputs, EVault$ApproveFunctionOutputs memory outputs) virtual external;

    function triggerOnApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApproveFunction.selector
        });
    }
}

abstract contract EVault$PreApproveFunction {
    function preApproveFunction(PreFunctionContext memory ctx, EVault$ApproveFunctionInputs memory inputs) virtual external;

    function triggerPreApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preApproveFunction.selector
        });
    }
}

abstract contract EVault$OnAssetFunction {
    function onAssetFunction(FunctionContext memory ctx, EVault$AssetFunctionOutputs memory outputs) virtual external;

    function triggerOnAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x38d52e0f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAssetFunction.selector
        });
    }
}

abstract contract EVault$PreAssetFunction {
    function preAssetFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x38d52e0f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAssetFunction.selector
        });
    }
}

abstract contract EVault$OnBalanceForwarderEnabledFunction {
    function onBalanceForwarderEnabledFunction(FunctionContext memory ctx, EVault$BalanceForwarderEnabledFunctionInputs memory inputs, EVault$BalanceForwarderEnabledFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceForwarderEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xe15c82ec),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceForwarderEnabledFunction.selector
        });
    }
}

abstract contract EVault$PreBalanceForwarderEnabledFunction {
    function preBalanceForwarderEnabledFunction(PreFunctionContext memory ctx, EVault$BalanceForwarderEnabledFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceForwarderEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xe15c82ec),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceForwarderEnabledFunction.selector
        });
    }
}

abstract contract EVault$OnBalanceOfFunction {
    function onBalanceOfFunction(FunctionContext memory ctx, EVault$BalanceOfFunctionInputs memory inputs, EVault$BalanceOfFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceOfFunction.selector
        });
    }
}

abstract contract EVault$PreBalanceOfFunction {
    function preBalanceOfFunction(PreFunctionContext memory ctx, EVault$BalanceOfFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceOfFunction.selector
        });
    }
}

abstract contract EVault$OnBalanceTrackerAddressFunction {
    function onBalanceTrackerAddressFunction(FunctionContext memory ctx, EVault$BalanceTrackerAddressFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceTrackerAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xece6a7fa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceTrackerAddressFunction.selector
        });
    }
}

abstract contract EVault$PreBalanceTrackerAddressFunction {
    function preBalanceTrackerAddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreBalanceTrackerAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xece6a7fa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceTrackerAddressFunction.selector
        });
    }
}

abstract contract EVault$OnBorrowFunction {
    function onBorrowFunction(FunctionContext memory ctx, EVault$BorrowFunctionInputs memory inputs, EVault$BorrowFunctionOutputs memory outputs) virtual external;

    function triggerOnBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4b3fd148),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBorrowFunction.selector
        });
    }
}

abstract contract EVault$PreBorrowFunction {
    function preBorrowFunction(PreFunctionContext memory ctx, EVault$BorrowFunctionInputs memory inputs) virtual external;

    function triggerPreBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4b3fd148),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBorrowFunction.selector
        });
    }
}

abstract contract EVault$OnCapsFunction {
    function onCapsFunction(FunctionContext memory ctx, EVault$CapsFunctionOutputs memory outputs) virtual external;

    function triggerOnCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x18e22d98),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCapsFunction.selector
        });
    }
}

abstract contract EVault$PreCapsFunction {
    function preCapsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x18e22d98),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCapsFunction.selector
        });
    }
}

abstract contract EVault$OnCashFunction {
    function onCashFunction(FunctionContext memory ctx, EVault$CashFunctionOutputs memory outputs) virtual external;

    function triggerOnCashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x961be391),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCashFunction.selector
        });
    }
}

abstract contract EVault$PreCashFunction {
    function preCashFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x961be391),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCashFunction.selector
        });
    }
}

abstract contract EVault$OnCheckAccountStatusFunction {
    function onCheckAccountStatusFunction(FunctionContext memory ctx, EVault$CheckAccountStatusFunctionInputs memory inputs, EVault$CheckAccountStatusFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckAccountStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb168c58f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckAccountStatusFunction.selector
        });
    }
}

abstract contract EVault$PreCheckAccountStatusFunction {
    function preCheckAccountStatusFunction(PreFunctionContext memory ctx, EVault$CheckAccountStatusFunctionInputs memory inputs) virtual external;

    function triggerPreCheckAccountStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb168c58f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckAccountStatusFunction.selector
        });
    }
}

abstract contract EVault$OnCheckLiquidationFunction {
    function onCheckLiquidationFunction(FunctionContext memory ctx, EVault$CheckLiquidationFunctionInputs memory inputs, EVault$CheckLiquidationFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x88aa6f12),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckLiquidationFunction.selector
        });
    }
}

abstract contract EVault$PreCheckLiquidationFunction {
    function preCheckLiquidationFunction(PreFunctionContext memory ctx, EVault$CheckLiquidationFunctionInputs memory inputs) virtual external;

    function triggerPreCheckLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x88aa6f12),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckLiquidationFunction.selector
        });
    }
}

abstract contract EVault$OnCheckVaultStatusFunction {
    function onCheckVaultStatusFunction(FunctionContext memory ctx, EVault$CheckVaultStatusFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckVaultStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4b3d1223),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckVaultStatusFunction.selector
        });
    }
}

abstract contract EVault$PreCheckVaultStatusFunction {
    function preCheckVaultStatusFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCheckVaultStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4b3d1223),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckVaultStatusFunction.selector
        });
    }
}

abstract contract EVault$OnConfigFlagsFunction {
    function onConfigFlagsFunction(FunctionContext memory ctx, EVault$ConfigFlagsFunctionOutputs memory outputs) virtual external;

    function triggerOnConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x2b38a367),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConfigFlagsFunction.selector
        });
    }
}

abstract contract EVault$PreConfigFlagsFunction {
    function preConfigFlagsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x2b38a367),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConfigFlagsFunction.selector
        });
    }
}

abstract contract EVault$OnConvertFeesFunction {
    function onConvertFeesFunction(FunctionContext memory ctx) virtual external;

    function triggerOnConvertFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x2b5335c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertFeesFunction.selector
        });
    }
}

abstract contract EVault$PreConvertFeesFunction {
    function preConvertFeesFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreConvertFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x2b5335c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertFeesFunction.selector
        });
    }
}

abstract contract EVault$OnConvertToAssetsFunction {
    function onConvertToAssetsFunction(FunctionContext memory ctx, EVault$ConvertToAssetsFunctionInputs memory inputs, EVault$ConvertToAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnConvertToAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x07a2d13a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertToAssetsFunction.selector
        });
    }
}

abstract contract EVault$PreConvertToAssetsFunction {
    function preConvertToAssetsFunction(PreFunctionContext memory ctx, EVault$ConvertToAssetsFunctionInputs memory inputs) virtual external;

    function triggerPreConvertToAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x07a2d13a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertToAssetsFunction.selector
        });
    }
}

abstract contract EVault$OnConvertToSharesFunction {
    function onConvertToSharesFunction(FunctionContext memory ctx, EVault$ConvertToSharesFunctionInputs memory inputs, EVault$ConvertToSharesFunctionOutputs memory outputs) virtual external;

    function triggerOnConvertToSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc6e6f592),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertToSharesFunction.selector
        });
    }
}

abstract contract EVault$PreConvertToSharesFunction {
    function preConvertToSharesFunction(PreFunctionContext memory ctx, EVault$ConvertToSharesFunctionInputs memory inputs) virtual external;

    function triggerPreConvertToSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc6e6f592),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertToSharesFunction.selector
        });
    }
}

abstract contract EVault$OnCreatorFunction {
    function onCreatorFunction(FunctionContext memory ctx, EVault$CreatorFunctionOutputs memory outputs) virtual external;

    function triggerOnCreatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x02d05d3f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatorFunction.selector
        });
    }
}

abstract contract EVault$PreCreatorFunction {
    function preCreatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCreatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x02d05d3f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreatorFunction.selector
        });
    }
}

abstract contract EVault$OnDTokenFunction {
    function onDTokenFunction(FunctionContext memory ctx, EVault$DTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnDTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd9d7858a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDTokenFunction.selector
        });
    }
}

abstract contract EVault$PreDTokenFunction {
    function preDTokenFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd9d7858a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDTokenFunction.selector
        });
    }
}

abstract contract EVault$OnDebtOfFunction {
    function onDebtOfFunction(FunctionContext memory ctx, EVault$DebtOfFunctionInputs memory inputs, EVault$DebtOfFunctionOutputs memory outputs) virtual external;

    function triggerOnDebtOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd283e75f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDebtOfFunction.selector
        });
    }
}

abstract contract EVault$PreDebtOfFunction {
    function preDebtOfFunction(PreFunctionContext memory ctx, EVault$DebtOfFunctionInputs memory inputs) virtual external;

    function triggerPreDebtOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd283e75f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDebtOfFunction.selector
        });
    }
}

abstract contract EVault$OnDebtOfExactFunction {
    function onDebtOfExactFunction(FunctionContext memory ctx, EVault$DebtOfExactFunctionInputs memory inputs, EVault$DebtOfExactFunctionOutputs memory outputs) virtual external;

    function triggerOnDebtOfExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xab49b7f1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDebtOfExactFunction.selector
        });
    }
}

abstract contract EVault$PreDebtOfExactFunction {
    function preDebtOfExactFunction(PreFunctionContext memory ctx, EVault$DebtOfExactFunctionInputs memory inputs) virtual external;

    function triggerPreDebtOfExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xab49b7f1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDebtOfExactFunction.selector
        });
    }
}

abstract contract EVault$OnDecimalsFunction {
    function onDecimalsFunction(FunctionContext memory ctx, EVault$DecimalsFunctionOutputs memory outputs) virtual external;

    function triggerOnDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDecimalsFunction.selector
        });
    }
}

abstract contract EVault$PreDecimalsFunction {
    function preDecimalsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDecimalsFunction.selector
        });
    }
}

abstract contract EVault$OnDepositFunction {
    function onDepositFunction(FunctionContext memory ctx, EVault$DepositFunctionInputs memory inputs, EVault$DepositFunctionOutputs memory outputs) virtual external;

    function triggerOnDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x6e553f65),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositFunction.selector
        });
    }
}

abstract contract EVault$PreDepositFunction {
    function preDepositFunction(PreFunctionContext memory ctx, EVault$DepositFunctionInputs memory inputs) virtual external;

    function triggerPreDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x6e553f65),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositFunction.selector
        });
    }
}

abstract contract EVault$OnDisableBalanceForwarderFunction {
    function onDisableBalanceForwarderFunction(FunctionContext memory ctx) virtual external;

    function triggerOnDisableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x41233a98),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDisableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault$PreDisableBalanceForwarderFunction {
    function preDisableBalanceForwarderFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDisableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x41233a98),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDisableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault$OnDisableControllerFunction {
    function onDisableControllerFunction(FunctionContext memory ctx) virtual external;

    function triggerOnDisableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x869e50c7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDisableControllerFunction.selector
        });
    }
}

abstract contract EVault$PreDisableControllerFunction {
    function preDisableControllerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDisableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x869e50c7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDisableControllerFunction.selector
        });
    }
}

abstract contract EVault$OnEnableBalanceForwarderFunction {
    function onEnableBalanceForwarderFunction(FunctionContext memory ctx) virtual external;

    function triggerOnEnableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x64b1cdd6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEnableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault$PreEnableBalanceForwarderFunction {
    function preEnableBalanceForwarderFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEnableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x64b1cdd6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEnableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault$OnFeeReceiverFunction {
    function onFeeReceiverFunction(FunctionContext memory ctx, EVault$FeeReceiverFunctionOutputs memory outputs) virtual external;

    function triggerOnFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb3f00674),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault$PreFeeReceiverFunction {
    function preFeeReceiverFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb3f00674),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault$OnFlashLoanFunction {
    function onFlashLoanFunction(FunctionContext memory ctx, EVault$FlashLoanFunctionInputs memory inputs) virtual external;

    function triggerOnFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x5296a431),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFlashLoanFunction.selector
        });
    }
}

abstract contract EVault$PreFlashLoanFunction {
    function preFlashLoanFunction(PreFunctionContext memory ctx, EVault$FlashLoanFunctionInputs memory inputs) virtual external;

    function triggerPreFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x5296a431),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFlashLoanFunction.selector
        });
    }
}

abstract contract EVault$OnGovernorAdminFunction {
    function onGovernorAdminFunction(FunctionContext memory ctx, EVault$GovernorAdminFunctionOutputs memory outputs) virtual external;

    function triggerOnGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x6ce98c29),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovernorAdminFunction.selector
        });
    }
}

abstract contract EVault$PreGovernorAdminFunction {
    function preGovernorAdminFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x6ce98c29),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGovernorAdminFunction.selector
        });
    }
}

abstract contract EVault$OnHookConfigFunction {
    function onHookConfigFunction(FunctionContext memory ctx, EVault$HookConfigFunctionOutputs memory outputs) virtual external;

    function triggerOnHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xcf349b7d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onHookConfigFunction.selector
        });
    }
}

abstract contract EVault$PreHookConfigFunction {
    function preHookConfigFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xcf349b7d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preHookConfigFunction.selector
        });
    }
}

abstract contract EVault$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, EVault$InitializeFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc4d66de8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract EVault$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, EVault$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc4d66de8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract EVault$OnInterestAccumulatorFunction {
    function onInterestAccumulatorFunction(FunctionContext memory ctx, EVault$InterestAccumulatorFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestAccumulatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x087a6007),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestAccumulatorFunction.selector
        });
    }
}

abstract contract EVault$PreInterestAccumulatorFunction {
    function preInterestAccumulatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestAccumulatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x087a6007),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestAccumulatorFunction.selector
        });
    }
}

abstract contract EVault$OnInterestFeeFunction {
    function onInterestFeeFunction(FunctionContext memory ctx, EVault$InterestFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa75df498),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestFeeFunction.selector
        });
    }
}

abstract contract EVault$PreInterestFeeFunction {
    function preInterestFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa75df498),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestFeeFunction.selector
        });
    }
}

abstract contract EVault$OnInterestRateFunction {
    function onInterestRateFunction(FunctionContext memory ctx, EVault$InterestRateFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x7c3a00fd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestRateFunction.selector
        });
    }
}

abstract contract EVault$PreInterestRateFunction {
    function preInterestRateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x7c3a00fd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestRateFunction.selector
        });
    }
}

abstract contract EVault$OnInterestRateModelFunction {
    function onInterestRateModelFunction(FunctionContext memory ctx, EVault$InterestRateModelFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xf3fdb15a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestRateModelFunction.selector
        });
    }
}

abstract contract EVault$PreInterestRateModelFunction {
    function preInterestRateModelFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xf3fdb15a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestRateModelFunction.selector
        });
    }
}

abstract contract EVault$OnLiquidateFunction {
    function onLiquidateFunction(FunctionContext memory ctx, EVault$LiquidateFunctionInputs memory inputs) virtual external;

    function triggerOnLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc1342574),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateFunction.selector
        });
    }
}

abstract contract EVault$PreLiquidateFunction {
    function preLiquidateFunction(PreFunctionContext memory ctx, EVault$LiquidateFunctionInputs memory inputs) virtual external;

    function triggerPreLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc1342574),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLiquidateFunction.selector
        });
    }
}

abstract contract EVault$OnLiquidationCoolOffTimeFunction {
    function onLiquidationCoolOffTimeFunction(FunctionContext memory ctx, EVault$LiquidationCoolOffTimeFunctionOutputs memory outputs) virtual external;

    function triggerOnLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4abdb959),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVault$PreLiquidationCoolOffTimeFunction {
    function preLiquidationCoolOffTimeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4abdb959),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVault$OnMaxDepositFunction {
    function onMaxDepositFunction(FunctionContext memory ctx, EVault$MaxDepositFunctionInputs memory inputs, EVault$MaxDepositFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x402d267d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxDepositFunction.selector
        });
    }
}

abstract contract EVault$PreMaxDepositFunction {
    function preMaxDepositFunction(PreFunctionContext memory ctx, EVault$MaxDepositFunctionInputs memory inputs) virtual external;

    function triggerPreMaxDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x402d267d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxDepositFunction.selector
        });
    }
}

abstract contract EVault$OnMaxLiquidationDiscountFunction {
    function onMaxLiquidationDiscountFunction(FunctionContext memory ctx, EVault$MaxLiquidationDiscountFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4f7e43df),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVault$PreMaxLiquidationDiscountFunction {
    function preMaxLiquidationDiscountFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4f7e43df),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVault$OnMaxMintFunction {
    function onMaxMintFunction(FunctionContext memory ctx, EVault$MaxMintFunctionInputs memory inputs, EVault$MaxMintFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc63d75b6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxMintFunction.selector
        });
    }
}

abstract contract EVault$PreMaxMintFunction {
    function preMaxMintFunction(PreFunctionContext memory ctx, EVault$MaxMintFunctionInputs memory inputs) virtual external;

    function triggerPreMaxMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc63d75b6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxMintFunction.selector
        });
    }
}

abstract contract EVault$OnMaxRedeemFunction {
    function onMaxRedeemFunction(FunctionContext memory ctx, EVault$MaxRedeemFunctionInputs memory inputs, EVault$MaxRedeemFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd905777e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxRedeemFunction.selector
        });
    }
}

abstract contract EVault$PreMaxRedeemFunction {
    function preMaxRedeemFunction(PreFunctionContext memory ctx, EVault$MaxRedeemFunctionInputs memory inputs) virtual external;

    function triggerPreMaxRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd905777e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxRedeemFunction.selector
        });
    }
}

abstract contract EVault$OnMaxWithdrawFunction {
    function onMaxWithdrawFunction(FunctionContext memory ctx, EVault$MaxWithdrawFunctionInputs memory inputs, EVault$MaxWithdrawFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xce96cb77),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxWithdrawFunction.selector
        });
    }
}

abstract contract EVault$PreMaxWithdrawFunction {
    function preMaxWithdrawFunction(PreFunctionContext memory ctx, EVault$MaxWithdrawFunctionInputs memory inputs) virtual external;

    function triggerPreMaxWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xce96cb77),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxWithdrawFunction.selector
        });
    }
}

abstract contract EVault$OnMintFunction {
    function onMintFunction(FunctionContext memory ctx, EVault$MintFunctionInputs memory inputs, EVault$MintFunctionOutputs memory outputs) virtual external;

    function triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x94bf804d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMintFunction.selector
        });
    }
}

abstract contract EVault$PreMintFunction {
    function preMintFunction(PreFunctionContext memory ctx, EVault$MintFunctionInputs memory inputs) virtual external;

    function triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x94bf804d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMintFunction.selector
        });
    }
}

abstract contract EVault$OnNameFunction {
    function onNameFunction(FunctionContext memory ctx, EVault$NameFunctionOutputs memory outputs) virtual external;

    function triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNameFunction.selector
        });
    }
}

abstract contract EVault$PreNameFunction {
    function preNameFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNameFunction.selector
        });
    }
}

abstract contract EVault$OnOracleFunction {
    function onOracleFunction(FunctionContext memory ctx, EVault$OracleFunctionOutputs memory outputs) virtual external;

    function triggerOnOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x7dc0d1d0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOracleFunction.selector
        });
    }
}

abstract contract EVault$PreOracleFunction {
    function preOracleFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x7dc0d1d0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOracleFunction.selector
        });
    }
}

abstract contract EVault$OnPermit2AddressFunction {
    function onPermit2AddressFunction(FunctionContext memory ctx, EVault$Permit2AddressFunctionOutputs memory outputs) virtual external;

    function triggerOnPermit2AddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc5224983),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPermit2AddressFunction.selector
        });
    }
}

abstract contract EVault$PrePermit2AddressFunction {
    function prePermit2AddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePermit2AddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xc5224983),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePermit2AddressFunction.selector
        });
    }
}

abstract contract EVault$OnPreviewDepositFunction {
    function onPreviewDepositFunction(FunctionContext memory ctx, EVault$PreviewDepositFunctionInputs memory inputs, EVault$PreviewDepositFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xef8b30f7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewDepositFunction.selector
        });
    }
}

abstract contract EVault$PrePreviewDepositFunction {
    function prePreviewDepositFunction(PreFunctionContext memory ctx, EVault$PreviewDepositFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xef8b30f7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewDepositFunction.selector
        });
    }
}

abstract contract EVault$OnPreviewMintFunction {
    function onPreviewMintFunction(FunctionContext memory ctx, EVault$PreviewMintFunctionInputs memory inputs, EVault$PreviewMintFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb3d7f6b9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewMintFunction.selector
        });
    }
}

abstract contract EVault$PrePreviewMintFunction {
    function prePreviewMintFunction(PreFunctionContext memory ctx, EVault$PreviewMintFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb3d7f6b9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewMintFunction.selector
        });
    }
}

abstract contract EVault$OnPreviewRedeemFunction {
    function onPreviewRedeemFunction(FunctionContext memory ctx, EVault$PreviewRedeemFunctionInputs memory inputs, EVault$PreviewRedeemFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4cdad506),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewRedeemFunction.selector
        });
    }
}

abstract contract EVault$PrePreviewRedeemFunction {
    function prePreviewRedeemFunction(PreFunctionContext memory ctx, EVault$PreviewRedeemFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4cdad506),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewRedeemFunction.selector
        });
    }
}

abstract contract EVault$OnPreviewWithdrawFunction {
    function onPreviewWithdrawFunction(FunctionContext memory ctx, EVault$PreviewWithdrawFunctionInputs memory inputs, EVault$PreviewWithdrawFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x0a28a477),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewWithdrawFunction.selector
        });
    }
}

abstract contract EVault$PrePreviewWithdrawFunction {
    function prePreviewWithdrawFunction(PreFunctionContext memory ctx, EVault$PreviewWithdrawFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x0a28a477),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewWithdrawFunction.selector
        });
    }
}

abstract contract EVault$OnProtocolConfigAddressFunction {
    function onProtocolConfigAddressFunction(FunctionContext memory ctx, EVault$ProtocolConfigAddressFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolConfigAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x539bd5bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolConfigAddressFunction.selector
        });
    }
}

abstract contract EVault$PreProtocolConfigAddressFunction {
    function preProtocolConfigAddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolConfigAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x539bd5bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolConfigAddressFunction.selector
        });
    }
}

abstract contract EVault$OnProtocolFeeReceiverFunction {
    function onProtocolFeeReceiverFunction(FunctionContext memory ctx, EVault$ProtocolFeeReceiverFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x39a51be5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault$PreProtocolFeeReceiverFunction {
    function preProtocolFeeReceiverFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x39a51be5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault$OnProtocolFeeShareFunction {
    function onProtocolFeeShareFunction(FunctionContext memory ctx, EVault$ProtocolFeeShareFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolFeeShareFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x960b26a2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeeShareFunction.selector
        });
    }
}

abstract contract EVault$PreProtocolFeeShareFunction {
    function preProtocolFeeShareFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolFeeShareFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x960b26a2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolFeeShareFunction.selector
        });
    }
}

abstract contract EVault$OnPullDebtFunction {
    function onPullDebtFunction(FunctionContext memory ctx, EVault$PullDebtFunctionInputs memory inputs) virtual external;

    function triggerOnPullDebtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xaebde56b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPullDebtFunction.selector
        });
    }
}

abstract contract EVault$PrePullDebtFunction {
    function prePullDebtFunction(PreFunctionContext memory ctx, EVault$PullDebtFunctionInputs memory inputs) virtual external;

    function triggerPrePullDebtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xaebde56b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePullDebtFunction.selector
        });
    }
}

abstract contract EVault$OnRedeemFunction {
    function onRedeemFunction(FunctionContext memory ctx, EVault$RedeemFunctionInputs memory inputs, EVault$RedeemFunctionOutputs memory outputs) virtual external;

    function triggerOnRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xba087652),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRedeemFunction.selector
        });
    }
}

abstract contract EVault$PreRedeemFunction {
    function preRedeemFunction(PreFunctionContext memory ctx, EVault$RedeemFunctionInputs memory inputs) virtual external;

    function triggerPreRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xba087652),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRedeemFunction.selector
        });
    }
}

abstract contract EVault$OnRepayFunction {
    function onRepayFunction(FunctionContext memory ctx, EVault$RepayFunctionInputs memory inputs, EVault$RepayFunctionOutputs memory outputs) virtual external;

    function triggerOnRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xacb70815),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayFunction.selector
        });
    }
}

abstract contract EVault$PreRepayFunction {
    function preRepayFunction(PreFunctionContext memory ctx, EVault$RepayFunctionInputs memory inputs) virtual external;

    function triggerPreRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xacb70815),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRepayFunction.selector
        });
    }
}

abstract contract EVault$OnRepayWithSharesFunction {
    function onRepayWithSharesFunction(FunctionContext memory ctx, EVault$RepayWithSharesFunctionInputs memory inputs, EVault$RepayWithSharesFunctionOutputs memory outputs) virtual external;

    function triggerOnRepayWithSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa9c8eb7e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayWithSharesFunction.selector
        });
    }
}

abstract contract EVault$PreRepayWithSharesFunction {
    function preRepayWithSharesFunction(PreFunctionContext memory ctx, EVault$RepayWithSharesFunctionInputs memory inputs) virtual external;

    function triggerPreRepayWithSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa9c8eb7e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRepayWithSharesFunction.selector
        });
    }
}

abstract contract EVault$OnSetCapsFunction {
    function onSetCapsFunction(FunctionContext memory ctx, EVault$SetCapsFunctionInputs memory inputs) virtual external;

    function triggerOnSetCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd87f780f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetCapsFunction.selector
        });
    }
}

abstract contract EVault$PreSetCapsFunction {
    function preSetCapsFunction(PreFunctionContext memory ctx, EVault$SetCapsFunctionInputs memory inputs) virtual external;

    function triggerPreSetCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd87f780f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetCapsFunction.selector
        });
    }
}

abstract contract EVault$OnSetConfigFlagsFunction {
    function onSetConfigFlagsFunction(FunctionContext memory ctx, EVault$SetConfigFlagsFunctionInputs memory inputs) virtual external;

    function triggerOnSetConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xada3d56f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetConfigFlagsFunction.selector
        });
    }
}

abstract contract EVault$PreSetConfigFlagsFunction {
    function preSetConfigFlagsFunction(PreFunctionContext memory ctx, EVault$SetConfigFlagsFunctionInputs memory inputs) virtual external;

    function triggerPreSetConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xada3d56f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetConfigFlagsFunction.selector
        });
    }
}

abstract contract EVault$OnSetFeeReceiverFunction {
    function onSetFeeReceiverFunction(FunctionContext memory ctx, EVault$SetFeeReceiverFunctionInputs memory inputs) virtual external;

    function triggerOnSetFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xefdcd974),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault$PreSetFeeReceiverFunction {
    function preSetFeeReceiverFunction(PreFunctionContext memory ctx, EVault$SetFeeReceiverFunctionInputs memory inputs) virtual external;

    function triggerPreSetFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xefdcd974),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault$OnSetGovernorAdminFunction {
    function onSetGovernorAdminFunction(FunctionContext memory ctx, EVault$SetGovernorAdminFunctionInputs memory inputs) virtual external;

    function triggerOnSetGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x82ebd674),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetGovernorAdminFunction.selector
        });
    }
}

abstract contract EVault$PreSetGovernorAdminFunction {
    function preSetGovernorAdminFunction(PreFunctionContext memory ctx, EVault$SetGovernorAdminFunctionInputs memory inputs) virtual external;

    function triggerPreSetGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x82ebd674),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetGovernorAdminFunction.selector
        });
    }
}

abstract contract EVault$OnSetHookConfigFunction {
    function onSetHookConfigFunction(FunctionContext memory ctx, EVault$SetHookConfigFunctionInputs memory inputs) virtual external;

    function triggerOnSetHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd1a3a308),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetHookConfigFunction.selector
        });
    }
}

abstract contract EVault$PreSetHookConfigFunction {
    function preSetHookConfigFunction(PreFunctionContext memory ctx, EVault$SetHookConfigFunctionInputs memory inputs) virtual external;

    function triggerPreSetHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xd1a3a308),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetHookConfigFunction.selector
        });
    }
}

abstract contract EVault$OnSetInterestFeeFunction {
    function onSetInterestFeeFunction(FunctionContext memory ctx, EVault$SetInterestFeeFunctionInputs memory inputs) virtual external;

    function triggerOnSetInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x60cb90ef),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetInterestFeeFunction.selector
        });
    }
}

abstract contract EVault$PreSetInterestFeeFunction {
    function preSetInterestFeeFunction(PreFunctionContext memory ctx, EVault$SetInterestFeeFunctionInputs memory inputs) virtual external;

    function triggerPreSetInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x60cb90ef),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetInterestFeeFunction.selector
        });
    }
}

abstract contract EVault$OnSetInterestRateModelFunction {
    function onSetInterestRateModelFunction(FunctionContext memory ctx, EVault$SetInterestRateModelFunctionInputs memory inputs) virtual external;

    function triggerOnSetInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x8bcd4016),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetInterestRateModelFunction.selector
        });
    }
}

abstract contract EVault$PreSetInterestRateModelFunction {
    function preSetInterestRateModelFunction(PreFunctionContext memory ctx, EVault$SetInterestRateModelFunctionInputs memory inputs) virtual external;

    function triggerPreSetInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x8bcd4016),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetInterestRateModelFunction.selector
        });
    }
}

abstract contract EVault$OnSetLtvFunction {
    function onSetLtvFunction(FunctionContext memory ctx, EVault$SetLtvFunctionInputs memory inputs) virtual external;

    function triggerOnSetLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4bca3d5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetLtvFunction.selector
        });
    }
}

abstract contract EVault$PreSetLtvFunction {
    function preSetLtvFunction(PreFunctionContext memory ctx, EVault$SetLtvFunctionInputs memory inputs) virtual external;

    function triggerPreSetLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x4bca3d5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetLtvFunction.selector
        });
    }
}

abstract contract EVault$OnSetLiquidationCoolOffTimeFunction {
    function onSetLiquidationCoolOffTimeFunction(FunctionContext memory ctx, EVault$SetLiquidationCoolOffTimeFunctionInputs memory inputs) virtual external;

    function triggerOnSetLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xaf06d3cf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVault$PreSetLiquidationCoolOffTimeFunction {
    function preSetLiquidationCoolOffTimeFunction(PreFunctionContext memory ctx, EVault$SetLiquidationCoolOffTimeFunctionInputs memory inputs) virtual external;

    function triggerPreSetLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xaf06d3cf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVault$OnSetMaxLiquidationDiscountFunction {
    function onSetMaxLiquidationDiscountFunction(FunctionContext memory ctx, EVault$SetMaxLiquidationDiscountFunctionInputs memory inputs) virtual external;

    function triggerOnSetMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb4113ba7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVault$PreSetMaxLiquidationDiscountFunction {
    function preSetMaxLiquidationDiscountFunction(PreFunctionContext memory ctx, EVault$SetMaxLiquidationDiscountFunctionInputs memory inputs) virtual external;

    function triggerPreSetMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb4113ba7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVault$OnSkimFunction {
    function onSkimFunction(FunctionContext memory ctx, EVault$SkimFunctionInputs memory inputs, EVault$SkimFunctionOutputs memory outputs) virtual external;

    function triggerOnSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x8d56c639),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSkimFunction.selector
        });
    }
}

abstract contract EVault$PreSkimFunction {
    function preSkimFunction(PreFunctionContext memory ctx, EVault$SkimFunctionInputs memory inputs) virtual external;

    function triggerPreSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x8d56c639),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSkimFunction.selector
        });
    }
}

abstract contract EVault$OnSymbolFunction {
    function onSymbolFunction(FunctionContext memory ctx, EVault$SymbolFunctionOutputs memory outputs) virtual external;

    function triggerOnSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSymbolFunction.selector
        });
    }
}

abstract contract EVault$PreSymbolFunction {
    function preSymbolFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSymbolFunction.selector
        });
    }
}

abstract contract EVault$OnTotalAssetsFunction {
    function onTotalAssetsFunction(FunctionContext memory ctx, EVault$TotalAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x01e1d114),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalAssetsFunction.selector
        });
    }
}

abstract contract EVault$PreTotalAssetsFunction {
    function preTotalAssetsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x01e1d114),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalAssetsFunction.selector
        });
    }
}

abstract contract EVault$OnTotalBorrowsFunction {
    function onTotalBorrowsFunction(FunctionContext memory ctx, EVault$TotalBorrowsFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalBorrowsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x47bd3718),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalBorrowsFunction.selector
        });
    }
}

abstract contract EVault$PreTotalBorrowsFunction {
    function preTotalBorrowsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalBorrowsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x47bd3718),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalBorrowsFunction.selector
        });
    }
}

abstract contract EVault$OnTotalBorrowsExactFunction {
    function onTotalBorrowsExactFunction(FunctionContext memory ctx, EVault$TotalBorrowsExactFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalBorrowsExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xe388be7b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalBorrowsExactFunction.selector
        });
    }
}

abstract contract EVault$PreTotalBorrowsExactFunction {
    function preTotalBorrowsExactFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalBorrowsExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xe388be7b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalBorrowsExactFunction.selector
        });
    }
}

abstract contract EVault$OnTotalSupplyFunction {
    function onTotalSupplyFunction(FunctionContext memory ctx, EVault$TotalSupplyFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalSupplyFunction.selector
        });
    }
}

abstract contract EVault$PreTotalSupplyFunction {
    function preTotalSupplyFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalSupplyFunction.selector
        });
    }
}

abstract contract EVault$OnTouchFunction {
    function onTouchFunction(FunctionContext memory ctx) virtual external;

    function triggerOnTouchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa55526db),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTouchFunction.selector
        });
    }
}

abstract contract EVault$PreTouchFunction {
    function preTouchFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTouchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa55526db),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTouchFunction.selector
        });
    }
}

abstract contract EVault$OnTransferFunction {
    function onTransferFunction(FunctionContext memory ctx, EVault$TransferFunctionInputs memory inputs, EVault$TransferFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFunction.selector
        });
    }
}

abstract contract EVault$PreTransferFunction {
    function preTransferFunction(PreFunctionContext memory ctx, EVault$TransferFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFunction.selector
        });
    }
}

abstract contract EVault$OnTransferFromFunction {
    function onTransferFromFunction(FunctionContext memory ctx, EVault$TransferFromFunctionInputs memory inputs, EVault$TransferFromFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFromFunction.selector
        });
    }
}

abstract contract EVault$PreTransferFromFunction {
    function preTransferFromFunction(PreFunctionContext memory ctx, EVault$TransferFromFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFromFunction.selector
        });
    }
}

abstract contract EVault$OnTransferFromMaxFunction {
    function onTransferFromMaxFunction(FunctionContext memory ctx, EVault$TransferFromMaxFunctionInputs memory inputs, EVault$TransferFromMaxFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFromMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xcbfdd7e1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFromMaxFunction.selector
        });
    }
}

abstract contract EVault$PreTransferFromMaxFunction {
    function preTransferFromMaxFunction(PreFunctionContext memory ctx, EVault$TransferFromMaxFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFromMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xcbfdd7e1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFromMaxFunction.selector
        });
    }
}

abstract contract EVault$OnUnitOfAccountFunction {
    function onUnitOfAccountFunction(FunctionContext memory ctx, EVault$UnitOfAccountFunctionOutputs memory outputs) virtual external;

    function triggerOnUnitOfAccountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x3e833364),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUnitOfAccountFunction.selector
        });
    }
}

abstract contract EVault$PreUnitOfAccountFunction {
    function preUnitOfAccountFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUnitOfAccountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x3e833364),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUnitOfAccountFunction.selector
        });
    }
}

abstract contract EVault$OnViewDelegateFunction {
    function onViewDelegateFunction(FunctionContext memory ctx) virtual external;

    function triggerOnViewDelegateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x1fe8b953),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onViewDelegateFunction.selector
        });
    }
}

abstract contract EVault$PreViewDelegateFunction {
    function preViewDelegateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreViewDelegateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0x1fe8b953),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preViewDelegateFunction.selector
        });
    }
}

abstract contract EVault$OnWithdrawFunction {
    function onWithdrawFunction(FunctionContext memory ctx, EVault$WithdrawFunctionInputs memory inputs, EVault$WithdrawFunctionOutputs memory outputs) virtual external;

    function triggerOnWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb460af94),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawFunction.selector
        });
    }
}

abstract contract EVault$PreWithdrawFunction {
    function preWithdrawFunction(PreFunctionContext memory ctx, EVault$WithdrawFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault",
            selector: bytes4(0xb460af94),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawFunction.selector
        });
    }
}


struct EVault$EmitAllEvents$Approval {
  address owner;
  address spender;
  uint256 value;
}

struct EVault$EmitAllEvents$BalanceForwarderStatus {
  address account;
  bool status;
}

struct EVault$EmitAllEvents$Borrow {
  address account;
  uint256 assets;
}

struct EVault$EmitAllEvents$ConvertFees {
  address sender;
  address protocolReceiver;
  address governorReceiver;
  uint256 protocolShares;
  uint256 governorShares;
}

struct EVault$EmitAllEvents$DebtSocialized {
  address account;
  uint256 assets;
}

struct EVault$EmitAllEvents$Deposit {
  address sender;
  address owner;
  uint256 assets;
  uint256 shares;
}

struct EVault$EmitAllEvents$EVaultCreated {
  address creator;
  address asset;
  address dToken;
}

struct EVault$EmitAllEvents$GovSetCaps {
  uint16 newSupplyCap;
  uint16 newBorrowCap;
}

struct EVault$EmitAllEvents$GovSetConfigFlags {
  uint32 newConfigFlags;
}

struct EVault$EmitAllEvents$GovSetFeeReceiver {
  address newFeeReceiver;
}

struct EVault$EmitAllEvents$GovSetGovernorAdmin {
  address newGovernorAdmin;
}

struct EVault$EmitAllEvents$GovSetHookConfig {
  address newHookTarget;
  uint32 newHookedOps;
}

struct EVault$EmitAllEvents$GovSetInterestFee {
  uint16 newFee;
}

struct EVault$EmitAllEvents$GovSetInterestRateModel {
  address newInterestRateModel;
}

struct EVault$EmitAllEvents$GovSetLtv {
  address collateral;
  uint16 borrowLTV;
  uint16 liquidationLTV;
  uint16 initialLiquidationLTV;
  uint48 targetTimestamp;
  uint32 rampDuration;
}

struct EVault$EmitAllEvents$GovSetLiquidationCoolOffTime {
  uint16 newCoolOffTime;
}

struct EVault$EmitAllEvents$GovSetMaxLiquidationDiscount {
  uint16 newDiscount;
}

struct EVault$EmitAllEvents$InterestAccrued {
  address account;
  uint256 assets;
}

struct EVault$EmitAllEvents$Liquidate {
  address liquidator;
  address violator;
  address collateral;
  uint256 repayAssets;
  uint256 yieldBalance;
}

struct EVault$EmitAllEvents$PullDebt {
  address from;
  address to;
  uint256 assets;
}

struct EVault$EmitAllEvents$Repay {
  address account;
  uint256 assets;
}

struct EVault$EmitAllEvents$Transfer {
  address from;
  address to;
  uint256 value;
}

struct EVault$EmitAllEvents$VaultStatus {
  uint256 totalShares;
  uint256 totalBorrows;
  uint256 accumulatedFees;
  uint256 cash;
  uint256 interestAccumulator;
  uint256 interestRate;
  uint256 timestamp;
}

struct EVault$EmitAllEvents$Withdraw {
  address sender;
  address receiver;
  address owner;
  uint256 assets;
  uint256 shares;
}

contract EVault$EmitAllEvents is
  EVault$OnApprovalEvent,
EVault$OnBalanceForwarderStatusEvent,
EVault$OnBorrowEvent,
EVault$OnConvertFeesEvent,
EVault$OnDebtSocializedEvent,
EVault$OnDepositEvent,
EVault$OnEVaultCreatedEvent,
EVault$OnGovSetCapsEvent,
EVault$OnGovSetConfigFlagsEvent,
EVault$OnGovSetFeeReceiverEvent,
EVault$OnGovSetGovernorAdminEvent,
EVault$OnGovSetHookConfigEvent,
EVault$OnGovSetInterestFeeEvent,
EVault$OnGovSetInterestRateModelEvent,
EVault$OnGovSetLtvEvent,
EVault$OnGovSetLiquidationCoolOffTimeEvent,
EVault$OnGovSetMaxLiquidationDiscountEvent,
EVault$OnInterestAccruedEvent,
EVault$OnLiquidateEvent,
EVault$OnPullDebtEvent,
EVault$OnRepayEvent,
EVault$OnTransferEvent,
EVault$OnVaultStatusEvent,
EVault$OnWithdrawEvent
{
  event Approval(EVault$EmitAllEvents$Approval);
  event BalanceForwarderStatus(EVault$EmitAllEvents$BalanceForwarderStatus);
  event Borrow(EVault$EmitAllEvents$Borrow);
  event ConvertFees(EVault$EmitAllEvents$ConvertFees);
  event DebtSocialized(EVault$EmitAllEvents$DebtSocialized);
  event Deposit(EVault$EmitAllEvents$Deposit);
  event EVaultCreated(EVault$EmitAllEvents$EVaultCreated);
  event GovSetCaps(EVault$EmitAllEvents$GovSetCaps);
  event GovSetConfigFlags(EVault$EmitAllEvents$GovSetConfigFlags);
  event GovSetFeeReceiver(EVault$EmitAllEvents$GovSetFeeReceiver);
  event GovSetGovernorAdmin(EVault$EmitAllEvents$GovSetGovernorAdmin);
  event GovSetHookConfig(EVault$EmitAllEvents$GovSetHookConfig);
  event GovSetInterestFee(EVault$EmitAllEvents$GovSetInterestFee);
  event GovSetInterestRateModel(EVault$EmitAllEvents$GovSetInterestRateModel);
  event GovSetLtv(EVault$EmitAllEvents$GovSetLtv);
  event GovSetLiquidationCoolOffTime(EVault$EmitAllEvents$GovSetLiquidationCoolOffTime);
  event GovSetMaxLiquidationDiscount(EVault$EmitAllEvents$GovSetMaxLiquidationDiscount);
  event InterestAccrued(EVault$EmitAllEvents$InterestAccrued);
  event Liquidate(EVault$EmitAllEvents$Liquidate);
  event PullDebt(EVault$EmitAllEvents$PullDebt);
  event Repay(EVault$EmitAllEvents$Repay);
  event Transfer(EVault$EmitAllEvents$Transfer);
  event VaultStatus(EVault$EmitAllEvents$VaultStatus);
  event Withdraw(EVault$EmitAllEvents$Withdraw);

  function onApprovalEvent(EventContext memory ctx, EVault$ApprovalEventParams memory inputs) virtual external override {
    emit Approval(EVault$EmitAllEvents$Approval(inputs.owner, inputs.spender, inputs.value));
  }
function onBalanceForwarderStatusEvent(EventContext memory ctx, EVault$BalanceForwarderStatusEventParams memory inputs) virtual external override {
    emit BalanceForwarderStatus(EVault$EmitAllEvents$BalanceForwarderStatus(inputs.account, inputs.status));
  }
function onBorrowEvent(EventContext memory ctx, EVault$BorrowEventParams memory inputs) virtual external override {
    emit Borrow(EVault$EmitAllEvents$Borrow(inputs.account, inputs.assets));
  }
function onConvertFeesEvent(EventContext memory ctx, EVault$ConvertFeesEventParams memory inputs) virtual external override {
    emit ConvertFees(EVault$EmitAllEvents$ConvertFees(inputs.sender, inputs.protocolReceiver, inputs.governorReceiver, inputs.protocolShares, inputs.governorShares));
  }
function onDebtSocializedEvent(EventContext memory ctx, EVault$DebtSocializedEventParams memory inputs) virtual external override {
    emit DebtSocialized(EVault$EmitAllEvents$DebtSocialized(inputs.account, inputs.assets));
  }
function onDepositEvent(EventContext memory ctx, EVault$DepositEventParams memory inputs) virtual external override {
    emit Deposit(EVault$EmitAllEvents$Deposit(inputs.sender, inputs.owner, inputs.assets, inputs.shares));
  }
function onEVaultCreatedEvent(EventContext memory ctx, EVault$EVaultCreatedEventParams memory inputs) virtual external override {
    emit EVaultCreated(EVault$EmitAllEvents$EVaultCreated(inputs.creator, inputs.asset, inputs.dToken));
  }
function onGovSetCapsEvent(EventContext memory ctx, EVault$GovSetCapsEventParams memory inputs) virtual external override {
    emit GovSetCaps(EVault$EmitAllEvents$GovSetCaps(inputs.newSupplyCap, inputs.newBorrowCap));
  }
function onGovSetConfigFlagsEvent(EventContext memory ctx, EVault$GovSetConfigFlagsEventParams memory inputs) virtual external override {
    emit GovSetConfigFlags(EVault$EmitAllEvents$GovSetConfigFlags(inputs.newConfigFlags));
  }
function onGovSetFeeReceiverEvent(EventContext memory ctx, EVault$GovSetFeeReceiverEventParams memory inputs) virtual external override {
    emit GovSetFeeReceiver(EVault$EmitAllEvents$GovSetFeeReceiver(inputs.newFeeReceiver));
  }
function onGovSetGovernorAdminEvent(EventContext memory ctx, EVault$GovSetGovernorAdminEventParams memory inputs) virtual external override {
    emit GovSetGovernorAdmin(EVault$EmitAllEvents$GovSetGovernorAdmin(inputs.newGovernorAdmin));
  }
function onGovSetHookConfigEvent(EventContext memory ctx, EVault$GovSetHookConfigEventParams memory inputs) virtual external override {
    emit GovSetHookConfig(EVault$EmitAllEvents$GovSetHookConfig(inputs.newHookTarget, inputs.newHookedOps));
  }
function onGovSetInterestFeeEvent(EventContext memory ctx, EVault$GovSetInterestFeeEventParams memory inputs) virtual external override {
    emit GovSetInterestFee(EVault$EmitAllEvents$GovSetInterestFee(inputs.newFee));
  }
function onGovSetInterestRateModelEvent(EventContext memory ctx, EVault$GovSetInterestRateModelEventParams memory inputs) virtual external override {
    emit GovSetInterestRateModel(EVault$EmitAllEvents$GovSetInterestRateModel(inputs.newInterestRateModel));
  }
function onGovSetLtvEvent(EventContext memory ctx, EVault$GovSetLtvEventParams memory inputs) virtual external override {
    emit GovSetLtv(EVault$EmitAllEvents$GovSetLtv(inputs.collateral, inputs.borrowLTV, inputs.liquidationLTV, inputs.initialLiquidationLTV, inputs.targetTimestamp, inputs.rampDuration));
  }
function onGovSetLiquidationCoolOffTimeEvent(EventContext memory ctx, EVault$GovSetLiquidationCoolOffTimeEventParams memory inputs) virtual external override {
    emit GovSetLiquidationCoolOffTime(EVault$EmitAllEvents$GovSetLiquidationCoolOffTime(inputs.newCoolOffTime));
  }
function onGovSetMaxLiquidationDiscountEvent(EventContext memory ctx, EVault$GovSetMaxLiquidationDiscountEventParams memory inputs) virtual external override {
    emit GovSetMaxLiquidationDiscount(EVault$EmitAllEvents$GovSetMaxLiquidationDiscount(inputs.newDiscount));
  }
function onInterestAccruedEvent(EventContext memory ctx, EVault$InterestAccruedEventParams memory inputs) virtual external override {
    emit InterestAccrued(EVault$EmitAllEvents$InterestAccrued(inputs.account, inputs.assets));
  }
function onLiquidateEvent(EventContext memory ctx, EVault$LiquidateEventParams memory inputs) virtual external override {
    emit Liquidate(EVault$EmitAllEvents$Liquidate(inputs.liquidator, inputs.violator, inputs.collateral, inputs.repayAssets, inputs.yieldBalance));
  }
function onPullDebtEvent(EventContext memory ctx, EVault$PullDebtEventParams memory inputs) virtual external override {
    emit PullDebt(EVault$EmitAllEvents$PullDebt(inputs.from, inputs.to, inputs.assets));
  }
function onRepayEvent(EventContext memory ctx, EVault$RepayEventParams memory inputs) virtual external override {
    emit Repay(EVault$EmitAllEvents$Repay(inputs.account, inputs.assets));
  }
function onTransferEvent(EventContext memory ctx, EVault$TransferEventParams memory inputs) virtual external override {
    emit Transfer(EVault$EmitAllEvents$Transfer(inputs.from, inputs.to, inputs.value));
  }
function onVaultStatusEvent(EventContext memory ctx, EVault$VaultStatusEventParams memory inputs) virtual external override {
    emit VaultStatus(EVault$EmitAllEvents$VaultStatus(inputs.totalShares, inputs.totalBorrows, inputs.accumulatedFees, inputs.cash, inputs.interestAccumulator, inputs.interestRate, inputs.timestamp));
  }
function onWithdrawEvent(EventContext memory ctx, EVault$WithdrawEventParams memory inputs) virtual external override {
    emit Withdraw(EVault$EmitAllEvents$Withdraw(inputs.sender, inputs.receiver, inputs.owner, inputs.assets, inputs.shares));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](24);
    triggers[0] = this.triggerOnApprovalEvent();
    triggers[1] = this.triggerOnBalanceForwarderStatusEvent();
    triggers[2] = this.triggerOnBorrowEvent();
    triggers[3] = this.triggerOnConvertFeesEvent();
    triggers[4] = this.triggerOnDebtSocializedEvent();
    triggers[5] = this.triggerOnDepositEvent();
    triggers[6] = this.triggerOnEVaultCreatedEvent();
    triggers[7] = this.triggerOnGovSetCapsEvent();
    triggers[8] = this.triggerOnGovSetConfigFlagsEvent();
    triggers[9] = this.triggerOnGovSetFeeReceiverEvent();
    triggers[10] = this.triggerOnGovSetGovernorAdminEvent();
    triggers[11] = this.triggerOnGovSetHookConfigEvent();
    triggers[12] = this.triggerOnGovSetInterestFeeEvent();
    triggers[13] = this.triggerOnGovSetInterestRateModelEvent();
    triggers[14] = this.triggerOnGovSetLtvEvent();
    triggers[15] = this.triggerOnGovSetLiquidationCoolOffTimeEvent();
    triggers[16] = this.triggerOnGovSetMaxLiquidationDiscountEvent();
    triggers[17] = this.triggerOnInterestAccruedEvent();
    triggers[18] = this.triggerOnLiquidateEvent();
    triggers[19] = this.triggerOnPullDebtEvent();
    triggers[20] = this.triggerOnRepayEvent();
    triggers[21] = this.triggerOnTransferEvent();
    triggers[22] = this.triggerOnVaultStatusEvent();
    triggers[23] = this.triggerOnWithdrawEvent();
    return triggers;
  }
}