// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function EVault_old$Abi() pure returns (Abi memory) {
    return Abi("EVault_old");
}
struct EVault_old$EvcFunctionOutputs {
    address outArg0;
}

struct EVault_old$LtvBorrowFunctionInputs {
    address collateral;
}

struct EVault_old$LtvBorrowFunctionOutputs {
    uint16 outArg0;
}

struct EVault_old$LtvFullFunctionInputs {
    address collateral;
}

struct EVault_old$LtvFullFunctionOutputs {
    uint16 borrowLTV;
    uint16 liquidationLTV;
    uint16 initialLiquidationLTV;
    uint48 targetTimestamp;
    uint32 rampDuration;
}

struct EVault_old$LtvLiquidationFunctionInputs {
    address collateral;
}

struct EVault_old$LtvLiquidationFunctionOutputs {
    uint16 outArg0;
}

struct EVault_old$LtvListFunctionOutputs {
    address[] outArg0;
}

struct EVault_old$ModuleBalanceForwarderFunctionOutputs {
    address outArg0;
}

struct EVault_old$ModuleBorrowingFunctionOutputs {
    address outArg0;
}

struct EVault_old$ModuleGovernanceFunctionOutputs {
    address outArg0;
}

struct EVault_old$ModuleInitializeFunctionOutputs {
    address outArg0;
}

struct EVault_old$ModuleLiquidationFunctionOutputs {
    address outArg0;
}

struct EVault_old$ModuleRiskmanagerFunctionOutputs {
    address outArg0;
}

struct EVault_old$ModuleTokenFunctionOutputs {
    address outArg0;
}

struct EVault_old$ModuleVaultFunctionOutputs {
    address outArg0;
}

struct EVault_old$AccountLiquidityFunctionInputs {
    address account;
    bool liquidation;
}

struct EVault_old$AccountLiquidityFunctionOutputs {
    uint256 collateralValue;
    uint256 liabilityValue;
}

struct EVault_old$AccountLiquidityFullFunctionInputs {
    address account;
    bool liquidation;
}

struct EVault_old$AccountLiquidityFullFunctionOutputs {
    address[] collaterals;
    uint256[] collateralValues;
    uint256 liabilityValue;
}

struct EVault_old$AccumulatedFeesFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$AccumulatedFeesAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$AllowanceFunctionInputs {
    address holder;
    address spender;
}

struct EVault_old$AllowanceFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$ApproveFunctionInputs {
    address spender;
    uint256 amount;
}

struct EVault_old$ApproveFunctionOutputs {
    bool outArg0;
}

struct EVault_old$AssetFunctionOutputs {
    address outArg0;
}

struct EVault_old$BalanceForwarderEnabledFunctionInputs {
    address account;
}

struct EVault_old$BalanceForwarderEnabledFunctionOutputs {
    bool outArg0;
}

struct EVault_old$BalanceOfFunctionInputs {
    address account;
}

struct EVault_old$BalanceOfFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$BalanceTrackerAddressFunctionOutputs {
    address outArg0;
}

struct EVault_old$BorrowFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault_old$BorrowFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$CapsFunctionOutputs {
    uint16 supplyCap;
    uint16 borrowCap;
}

struct EVault_old$CashFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$CheckAccountStatusFunctionInputs {
    address account;
    address[] collaterals;
}

struct EVault_old$CheckAccountStatusFunctionOutputs {
    bytes4 outArg0;
}

struct EVault_old$CheckLiquidationFunctionInputs {
    address liquidator;
    address violator;
    address collateral;
}

struct EVault_old$CheckLiquidationFunctionOutputs {
    uint256 maxRepay;
    uint256 maxYield;
}

struct EVault_old$CheckVaultStatusFunctionOutputs {
    bytes4 outArg0;
}

struct EVault_old$ConfigFlagsFunctionOutputs {
    uint32 outArg0;
}

struct EVault_old$ConvertToAssetsFunctionInputs {
    uint256 shares;
}

struct EVault_old$ConvertToAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$ConvertToSharesFunctionInputs {
    uint256 assets;
}

struct EVault_old$ConvertToSharesFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$CreatorFunctionOutputs {
    address outArg0;
}

struct EVault_old$DTokenFunctionOutputs {
    address outArg0;
}

struct EVault_old$DebtOfFunctionInputs {
    address account;
}

struct EVault_old$DebtOfFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$DebtOfExactFunctionInputs {
    address account;
}

struct EVault_old$DebtOfExactFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$DecimalsFunctionOutputs {
    uint8 outArg0;
}

struct EVault_old$DepositFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault_old$DepositFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$FeeReceiverFunctionOutputs {
    address outArg0;
}

struct EVault_old$FlashLoanFunctionInputs {
    uint256 amount;
    bytes data;
}

struct EVault_old$GovernorAdminFunctionOutputs {
    address outArg0;
}

struct EVault_old$HookConfigFunctionOutputs {
    address outArg0;
    uint32 outArg1;
}

struct EVault_old$InitializeFunctionInputs {
    address proxyCreator;
}

struct EVault_old$InterestAccumulatorFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$InterestFeeFunctionOutputs {
    uint16 outArg0;
}

struct EVault_old$InterestRateFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$InterestRateModelFunctionOutputs {
    address outArg0;
}

struct EVault_old$LiquidateFunctionInputs {
    address violator;
    address collateral;
    uint256 repayAssets;
    uint256 minYieldBalance;
}

struct EVault_old$LiquidationCoolOffTimeFunctionOutputs {
    uint16 outArg0;
}

struct EVault_old$MaxDepositFunctionInputs {
    address account;
}

struct EVault_old$MaxDepositFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$MaxLiquidationDiscountFunctionOutputs {
    uint16 outArg0;
}

struct EVault_old$MaxMintFunctionInputs {
    address account;
}

struct EVault_old$MaxMintFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$MaxRedeemFunctionInputs {
    address owner;
}

struct EVault_old$MaxRedeemFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$MaxWithdrawFunctionInputs {
    address owner;
}

struct EVault_old$MaxWithdrawFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$MintFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault_old$MintFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$NameFunctionOutputs {
    string outArg0;
}

struct EVault_old$OracleFunctionOutputs {
    address outArg0;
}

struct EVault_old$Permit2AddressFunctionOutputs {
    address outArg0;
}

struct EVault_old$PreviewDepositFunctionInputs {
    uint256 assets;
}

struct EVault_old$PreviewDepositFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$PreviewMintFunctionInputs {
    uint256 shares;
}

struct EVault_old$PreviewMintFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$PreviewRedeemFunctionInputs {
    uint256 shares;
}

struct EVault_old$PreviewRedeemFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$PreviewWithdrawFunctionInputs {
    uint256 assets;
}

struct EVault_old$PreviewWithdrawFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$ProtocolConfigAddressFunctionOutputs {
    address outArg0;
}

struct EVault_old$ProtocolFeeReceiverFunctionOutputs {
    address outArg0;
}

struct EVault_old$ProtocolFeeShareFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$PullDebtFunctionInputs {
    uint256 amount;
    address from;
}

struct EVault_old$RedeemFunctionInputs {
    uint256 amount;
    address receiver;
    address owner;
}

struct EVault_old$RedeemFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$RepayFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault_old$RepayFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$RepayWithSharesFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault_old$RepayWithSharesFunctionOutputs {
    uint256 shares;
    uint256 debt;
}

struct EVault_old$SetCapsFunctionInputs {
    uint16 supplyCap;
    uint16 borrowCap;
}

struct EVault_old$SetConfigFlagsFunctionInputs {
    uint32 newConfigFlags;
}

struct EVault_old$SetFeeReceiverFunctionInputs {
    address newFeeReceiver;
}

struct EVault_old$SetGovernorAdminFunctionInputs {
    address newGovernorAdmin;
}

struct EVault_old$SetHookConfigFunctionInputs {
    address newHookTarget;
    uint32 newHookedOps;
}

struct EVault_old$SetInterestFeeFunctionInputs {
    uint16 newFee;
}

struct EVault_old$SetInterestRateModelFunctionInputs {
    address newModel;
}

struct EVault_old$SetLtvFunctionInputs {
    address collateral;
    uint16 borrowLTV;
    uint16 liquidationLTV;
    uint32 rampDuration;
}

struct EVault_old$SetLiquidationCoolOffTimeFunctionInputs {
    uint16 newCoolOffTime;
}

struct EVault_old$SetMaxLiquidationDiscountFunctionInputs {
    uint16 newDiscount;
}

struct EVault_old$SkimFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVault_old$SkimFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$SymbolFunctionOutputs {
    string outArg0;
}

struct EVault_old$TotalAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$TotalBorrowsFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$TotalBorrowsExactFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$TotalSupplyFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$TransferFunctionInputs {
    address to;
    uint256 amount;
}

struct EVault_old$TransferFunctionOutputs {
    bool outArg0;
}

struct EVault_old$TransferFromFunctionInputs {
    address from;
    address to;
    uint256 amount;
}

struct EVault_old$TransferFromFunctionOutputs {
    bool outArg0;
}

struct EVault_old$TransferFromMaxFunctionInputs {
    address from;
    address to;
}

struct EVault_old$TransferFromMaxFunctionOutputs {
    bool outArg0;
}

struct EVault_old$UnitOfAccountFunctionOutputs {
    address outArg0;
}

struct EVault_old$WithdrawFunctionInputs {
    uint256 amount;
    address receiver;
    address owner;
}

struct EVault_old$WithdrawFunctionOutputs {
    uint256 outArg0;
}

struct EVault_old$ApprovalEventParams {
    address owner;
    address spender;
    uint256 value;
}

struct EVault_old$BalanceForwarderStatusEventParams {
    address account;
    bool status;
}

struct EVault_old$BorrowEventParams {
    address account;
    uint256 assets;
}

struct EVault_old$ConvertFeesEventParams {
    address sender;
    address protocolReceiver;
    address governorReceiver;
    uint256 protocolShares;
    uint256 governorShares;
}

struct EVault_old$DebtSocializedEventParams {
    address account;
    uint256 assets;
}

struct EVault_old$DepositEventParams {
    address sender;
    address owner;
    uint256 assets;
    uint256 shares;
}

struct EVault_old$EVaultCreatedEventParams {
    address creator;
    address asset;
    address dToken;
}

struct EVault_old$GovSetCapsEventParams {
    uint16 newSupplyCap;
    uint16 newBorrowCap;
}

struct EVault_old$GovSetConfigFlagsEventParams {
    uint32 newConfigFlags;
}

struct EVault_old$GovSetFeeReceiverEventParams {
    address newFeeReceiver;
}

struct EVault_old$GovSetGovernorAdminEventParams {
    address newGovernorAdmin;
}

struct EVault_old$GovSetHookConfigEventParams {
    address newHookTarget;
    uint32 newHookedOps;
}

struct EVault_old$GovSetInterestFeeEventParams {
    uint16 newFee;
}

struct EVault_old$GovSetInterestRateModelEventParams {
    address newInterestRateModel;
}

struct EVault_old$GovSetLtvEventParams {
    address collateral;
    uint16 borrowLTV;
    uint16 liquidationLTV;
    uint16 initialLiquidationLTV;
    uint48 targetTimestamp;
    uint32 rampDuration;
}

struct EVault_old$GovSetLiquidationCoolOffTimeEventParams {
    uint16 newCoolOffTime;
}

struct EVault_old$GovSetMaxLiquidationDiscountEventParams {
    uint16 newDiscount;
}

struct EVault_old$InterestAccruedEventParams {
    address account;
    uint256 assets;
}

struct EVault_old$LiquidateEventParams {
    address liquidator;
    address violator;
    address collateral;
    uint256 repayAssets;
    uint256 yieldBalance;
}

struct EVault_old$PullDebtEventParams {
    address from;
    address to;
    uint256 assets;
}

struct EVault_old$RepayEventParams {
    address account;
    uint256 assets;
}

struct EVault_old$TransferEventParams {
    address from;
    address to;
    uint256 value;
}

struct EVault_old$VaultStatusEventParams {
    uint256 totalShares;
    uint256 totalBorrows;
    uint256 accumulatedFees;
    uint256 cash;
    uint256 interestAccumulator;
    uint256 interestRate;
    uint256 timestamp;
}

struct EVault_old$WithdrawEventParams {
    address sender;
    address receiver;
    address owner;
    uint256 assets;
    uint256 shares;
}

abstract contract EVault_old$OnApprovalEvent {
    function onApprovalEvent(EventContext memory ctx, EVault_old$ApprovalEventParams memory inputs) virtual external;

    function triggerOnApprovalEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApprovalEvent.selector
        });
    }
}

abstract contract EVault_old$OnBalanceForwarderStatusEvent {
    function onBalanceForwarderStatusEvent(EventContext memory ctx, EVault_old$BalanceForwarderStatusEventParams memory inputs) virtual external;

    function triggerOnBalanceForwarderStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xc3e011ddce6181dafb5798a536341c7c601913626c31d31744f91b77b7e2412d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceForwarderStatusEvent.selector
        });
    }
}

abstract contract EVault_old$OnBorrowEvent {
    function onBorrowEvent(EventContext memory ctx, EVault_old$BorrowEventParams memory inputs) virtual external;

    function triggerOnBorrowEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xcbc04eca7e9da35cb1393a6135a199ca52e450d5e9251cbd99f7847d33a36750),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBorrowEvent.selector
        });
    }
}

abstract contract EVault_old$OnConvertFeesEvent {
    function onConvertFeesEvent(EventContext memory ctx, EVault_old$ConvertFeesEventParams memory inputs) virtual external;

    function triggerOnConvertFeesEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x4e16b07cac5fe5604af487e07b1b62efc8bd47477b18839f4688d2cae957f965),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertFeesEvent.selector
        });
    }
}

abstract contract EVault_old$OnDebtSocializedEvent {
    function onDebtSocializedEvent(EventContext memory ctx, EVault_old$DebtSocializedEventParams memory inputs) virtual external;

    function triggerOnDebtSocializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xe786d0bc2e83bf230ed9895a9c4d7756ab0c6e22eb8a4ff69c161ece76bd36df),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDebtSocializedEvent.selector
        });
    }
}

abstract contract EVault_old$OnDepositEvent {
    function onDepositEvent(EventContext memory ctx, EVault_old$DepositEventParams memory inputs) virtual external;

    function triggerOnDepositEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xdcbc1c05240f31ff3ad067ef1ee35ce4997762752e3a095284754544f4c709d7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositEvent.selector
        });
    }
}

abstract contract EVault_old$OnEVaultCreatedEvent {
    function onEVaultCreatedEvent(EventContext memory ctx, EVault_old$EVaultCreatedEventParams memory inputs) virtual external;

    function triggerOnEVaultCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x0cd345140b9008a43f99a999a328ece572a0193e8c8bf5f5755585e6f293b85e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEVaultCreatedEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetCapsEvent {
    function onGovSetCapsEvent(EventContext memory ctx, EVault_old$GovSetCapsEventParams memory inputs) virtual external;

    function triggerOnGovSetCapsEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xadbdcd178dfddc478805a3703b6cf3b72ca5e78ecebacffe1aad03188cc1cbf4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetCapsEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetConfigFlagsEvent {
    function onGovSetConfigFlagsEvent(EventContext memory ctx, EVault_old$GovSetConfigFlagsEventParams memory inputs) virtual external;

    function triggerOnGovSetConfigFlagsEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xe7f84c52c0ef295afe77de8cb30516d6f28d50306f979b45776dd1b619ae5ffc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetConfigFlagsEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetFeeReceiverEvent {
    function onGovSetFeeReceiverEvent(EventContext memory ctx, EVault_old$GovSetFeeReceiverEventParams memory inputs) virtual external;

    function triggerOnGovSetFeeReceiverEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x836a1afef2bc89de2cb4713cc8d312fccf2ff835230721c5f41f13374707413a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetFeeReceiverEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetGovernorAdminEvent {
    function onGovSetGovernorAdminEvent(EventContext memory ctx, EVault_old$GovSetGovernorAdminEventParams memory inputs) virtual external;

    function triggerOnGovSetGovernorAdminEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x1c145a4cd16d4148579b0f2296884ac4aa47536e4ef10a32e1cdc0dc3dd20ea4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetGovernorAdminEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetHookConfigEvent {
    function onGovSetHookConfigEvent(EventContext memory ctx, EVault_old$GovSetHookConfigEventParams memory inputs) virtual external;

    function triggerOnGovSetHookConfigEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xabadffb695acdb6863cd1324a91e5c359712b9110a55f9103774e2fb67dedb6a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetHookConfigEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetInterestFeeEvent {
    function onGovSetInterestFeeEvent(EventContext memory ctx, EVault_old$GovSetInterestFeeEventParams memory inputs) virtual external;

    function triggerOnGovSetInterestFeeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x634a58674e370383703eff32d9d4e4b3d1add94d50e8bcb631b04995d8e47341),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetInterestFeeEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetInterestRateModelEvent {
    function onGovSetInterestRateModelEvent(EventContext memory ctx, EVault_old$GovSetInterestRateModelEventParams memory inputs) virtual external;

    function triggerOnGovSetInterestRateModelEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xe5f2a795fc5f8baf1b05659293834c88859298226d87422c88624b4c9f4d3a43),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetInterestRateModelEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetLtvEvent {
    function onGovSetLtvEvent(EventContext memory ctx, EVault_old$GovSetLtvEventParams memory inputs) virtual external;

    function triggerOnGovSetLtvEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xc69392046c26324e9eee913208811542aabcbde6a41ce9ee3b45473b18eb3c76),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetLtvEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetLiquidationCoolOffTimeEvent {
    function onGovSetLiquidationCoolOffTimeEvent(EventContext memory ctx, EVault_old$GovSetLiquidationCoolOffTimeEventParams memory inputs) virtual external;

    function triggerOnGovSetLiquidationCoolOffTimeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xdf4edc1d288e7b3306b287d03fd77b2070b8b308c702bf7297f72d928175dfa5),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetLiquidationCoolOffTimeEvent.selector
        });
    }
}

abstract contract EVault_old$OnGovSetMaxLiquidationDiscountEvent {
    function onGovSetMaxLiquidationDiscountEvent(EventContext memory ctx, EVault_old$GovSetMaxLiquidationDiscountEventParams memory inputs) virtual external;

    function triggerOnGovSetMaxLiquidationDiscountEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x558a63d245d08220a137de3573129d3921e70e806adccf3a068c4723b9b3322d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovSetMaxLiquidationDiscountEvent.selector
        });
    }
}

abstract contract EVault_old$OnInterestAccruedEvent {
    function onInterestAccruedEvent(EventContext memory ctx, EVault_old$InterestAccruedEventParams memory inputs) virtual external;

    function triggerOnInterestAccruedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x5e804d42ae3b860f881d11cb44a4bb1f2f0d5b3d081f5539a32d6f97b629d978),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestAccruedEvent.selector
        });
    }
}

abstract contract EVault_old$OnLiquidateEvent {
    function onLiquidateEvent(EventContext memory ctx, EVault_old$LiquidateEventParams memory inputs) virtual external;

    function triggerOnLiquidateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x8246cc71ab01533b5bebc672a636df812f10637ad720797319d5741d5ebb3962),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateEvent.selector
        });
    }
}

abstract contract EVault_old$OnPullDebtEvent {
    function onPullDebtEvent(EventContext memory ctx, EVault_old$PullDebtEventParams memory inputs) virtual external;

    function triggerOnPullDebtEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xe6d0bfd9025bf59969101a13cf02e3ba2811b533816c47d7155546c7c8a1048f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPullDebtEvent.selector
        });
    }
}

abstract contract EVault_old$OnRepayEvent {
    function onRepayEvent(EventContext memory ctx, EVault_old$RepayEventParams memory inputs) virtual external;

    function triggerOnRepayEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x5c16de4f8b59bd9caf0f49a545f25819a895ed223294290b408242e72a594231),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayEvent.selector
        });
    }
}

abstract contract EVault_old$OnTransferEvent {
    function onTransferEvent(EventContext memory ctx, EVault_old$TransferEventParams memory inputs) virtual external;

    function triggerOnTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferEvent.selector
        });
    }
}

abstract contract EVault_old$OnVaultStatusEvent {
    function onVaultStatusEvent(EventContext memory ctx, EVault_old$VaultStatusEventParams memory inputs) virtual external;

    function triggerOnVaultStatusEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0x80b61abbfc5f73cfe5cf93cec97a69ed20643dc6c6f1833b05a1560aa164e24c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVaultStatusEvent.selector
        });
    }
}

abstract contract EVault_old$OnWithdrawEvent {
    function onWithdrawEvent(EventContext memory ctx, EVault_old$WithdrawEventParams memory inputs) virtual external;

    function triggerOnWithdrawEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes32(0xfbde797d201c681b91056529119e0b02407c7bb96a4a2c75c01fc9667232c8db),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawEvent.selector
        });
    }
}

abstract contract EVault_old$OnEvcFunction {
    function onEvcFunction(FunctionContext memory ctx, EVault_old$EvcFunctionOutputs memory outputs) virtual external;

    function triggerOnEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEvcFunction.selector
        });
    }
}

abstract contract EVault_old$PreEvcFunction {
    function preEvcFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEvcFunction.selector
        });
    }
}

abstract contract EVault_old$OnLtvBorrowFunction {
    function onLtvBorrowFunction(FunctionContext memory ctx, EVault_old$LtvBorrowFunctionInputs memory inputs, EVault_old$LtvBorrowFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xbf58094d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvBorrowFunction.selector
        });
    }
}

abstract contract EVault_old$PreLtvBorrowFunction {
    function preLtvBorrowFunction(PreFunctionContext memory ctx, EVault_old$LtvBorrowFunctionInputs memory inputs) virtual external;

    function triggerPreLtvBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xbf58094d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvBorrowFunction.selector
        });
    }
}

abstract contract EVault_old$OnLtvFullFunction {
    function onLtvFullFunction(FunctionContext memory ctx, EVault_old$LtvFullFunctionInputs memory inputs, EVault_old$LtvFullFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x33708d0c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvFullFunction.selector
        });
    }
}

abstract contract EVault_old$PreLtvFullFunction {
    function preLtvFullFunction(PreFunctionContext memory ctx, EVault_old$LtvFullFunctionInputs memory inputs) virtual external;

    function triggerPreLtvFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x33708d0c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvFullFunction.selector
        });
    }
}

abstract contract EVault_old$OnLtvLiquidationFunction {
    function onLtvLiquidationFunction(FunctionContext memory ctx, EVault_old$LtvLiquidationFunctionInputs memory inputs, EVault_old$LtvLiquidationFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xaf5aaeeb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvLiquidationFunction.selector
        });
    }
}

abstract contract EVault_old$PreLtvLiquidationFunction {
    function preLtvLiquidationFunction(PreFunctionContext memory ctx, EVault_old$LtvLiquidationFunctionInputs memory inputs) virtual external;

    function triggerPreLtvLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xaf5aaeeb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvLiquidationFunction.selector
        });
    }
}

abstract contract EVault_old$OnLtvListFunction {
    function onLtvListFunction(FunctionContext memory ctx, EVault_old$LtvListFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x6a16ef84),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvListFunction.selector
        });
    }
}

abstract contract EVault_old$PreLtvListFunction {
    function preLtvListFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLtvListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x6a16ef84),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvListFunction.selector
        });
    }
}

abstract contract EVault_old$OnModuleBalanceForwarderFunction {
    function onModuleBalanceForwarderFunction(FunctionContext memory ctx, EVault_old$ModuleBalanceForwarderFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x883e3875),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault_old$PreModuleBalanceForwarderFunction {
    function preModuleBalanceForwarderFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x883e3875),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault_old$OnModuleBorrowingFunction {
    function onModuleBorrowingFunction(FunctionContext memory ctx, EVault_old$ModuleBorrowingFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleBorrowingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x14c054bc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleBorrowingFunction.selector
        });
    }
}

abstract contract EVault_old$PreModuleBorrowingFunction {
    function preModuleBorrowingFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleBorrowingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x14c054bc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleBorrowingFunction.selector
        });
    }
}

abstract contract EVault_old$OnModuleGovernanceFunction {
    function onModuleGovernanceFunction(FunctionContext memory ctx, EVault_old$ModuleGovernanceFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleGovernanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb4cd541b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleGovernanceFunction.selector
        });
    }
}

abstract contract EVault_old$PreModuleGovernanceFunction {
    function preModuleGovernanceFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleGovernanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb4cd541b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleGovernanceFunction.selector
        });
    }
}

abstract contract EVault_old$OnModuleInitializeFunction {
    function onModuleInitializeFunction(FunctionContext memory ctx, EVault_old$ModuleInitializeFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xad80ad0b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleInitializeFunction.selector
        });
    }
}

abstract contract EVault_old$PreModuleInitializeFunction {
    function preModuleInitializeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xad80ad0b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleInitializeFunction.selector
        });
    }
}

abstract contract EVault_old$OnModuleLiquidationFunction {
    function onModuleLiquidationFunction(FunctionContext memory ctx, EVault_old$ModuleLiquidationFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x42895567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleLiquidationFunction.selector
        });
    }
}

abstract contract EVault_old$PreModuleLiquidationFunction {
    function preModuleLiquidationFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x42895567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleLiquidationFunction.selector
        });
    }
}

abstract contract EVault_old$OnModuleRiskmanagerFunction {
    function onModuleRiskmanagerFunction(FunctionContext memory ctx, EVault_old$ModuleRiskmanagerFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleRiskmanagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x7d5f2e4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleRiskmanagerFunction.selector
        });
    }
}

abstract contract EVault_old$PreModuleRiskmanagerFunction {
    function preModuleRiskmanagerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleRiskmanagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x7d5f2e4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleRiskmanagerFunction.selector
        });
    }
}

abstract contract EVault_old$OnModuleTokenFunction {
    function onModuleTokenFunction(FunctionContext memory ctx, EVault_old$ModuleTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x5fa23055),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleTokenFunction.selector
        });
    }
}

abstract contract EVault_old$PreModuleTokenFunction {
    function preModuleTokenFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x5fa23055),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleTokenFunction.selector
        });
    }
}

abstract contract EVault_old$OnModuleVaultFunction {
    function onModuleVaultFunction(FunctionContext memory ctx, EVault_old$ModuleVaultFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xe2f206e5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleVaultFunction.selector
        });
    }
}

abstract contract EVault_old$PreModuleVaultFunction {
    function preModuleVaultFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xe2f206e5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleVaultFunction.selector
        });
    }
}

abstract contract EVault_old$OnAccountLiquidityFunction {
    function onAccountLiquidityFunction(FunctionContext memory ctx, EVault_old$AccountLiquidityFunctionInputs memory inputs, EVault_old$AccountLiquidityFunctionOutputs memory outputs) virtual external;

    function triggerOnAccountLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa824bf67),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccountLiquidityFunction.selector
        });
    }
}

abstract contract EVault_old$PreAccountLiquidityFunction {
    function preAccountLiquidityFunction(PreFunctionContext memory ctx, EVault_old$AccountLiquidityFunctionInputs memory inputs) virtual external;

    function triggerPreAccountLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa824bf67),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccountLiquidityFunction.selector
        });
    }
}

abstract contract EVault_old$OnAccountLiquidityFullFunction {
    function onAccountLiquidityFullFunction(FunctionContext memory ctx, EVault_old$AccountLiquidityFullFunctionInputs memory inputs, EVault_old$AccountLiquidityFullFunctionOutputs memory outputs) virtual external;

    function triggerOnAccountLiquidityFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc7b0e3a3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccountLiquidityFullFunction.selector
        });
    }
}

abstract contract EVault_old$PreAccountLiquidityFullFunction {
    function preAccountLiquidityFullFunction(PreFunctionContext memory ctx, EVault_old$AccountLiquidityFullFunctionInputs memory inputs) virtual external;

    function triggerPreAccountLiquidityFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc7b0e3a3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccountLiquidityFullFunction.selector
        });
    }
}

abstract contract EVault_old$OnAccumulatedFeesFunction {
    function onAccumulatedFeesFunction(FunctionContext memory ctx, EVault_old$AccumulatedFeesFunctionOutputs memory outputs) virtual external;

    function triggerOnAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x587f5ed7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccumulatedFeesFunction.selector
        });
    }
}

abstract contract EVault_old$PreAccumulatedFeesFunction {
    function preAccumulatedFeesFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x587f5ed7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccumulatedFeesFunction.selector
        });
    }
}

abstract contract EVault_old$OnAccumulatedFeesAssetsFunction {
    function onAccumulatedFeesAssetsFunction(FunctionContext memory ctx, EVault_old$AccumulatedFeesAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnAccumulatedFeesAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xf6e50f58),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccumulatedFeesAssetsFunction.selector
        });
    }
}

abstract contract EVault_old$PreAccumulatedFeesAssetsFunction {
    function preAccumulatedFeesAssetsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAccumulatedFeesAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xf6e50f58),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccumulatedFeesAssetsFunction.selector
        });
    }
}

abstract contract EVault_old$OnAllowanceFunction {
    function onAllowanceFunction(FunctionContext memory ctx, EVault_old$AllowanceFunctionInputs memory inputs, EVault_old$AllowanceFunctionOutputs memory outputs) virtual external;

    function triggerOnAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAllowanceFunction.selector
        });
    }
}

abstract contract EVault_old$PreAllowanceFunction {
    function preAllowanceFunction(PreFunctionContext memory ctx, EVault_old$AllowanceFunctionInputs memory inputs) virtual external;

    function triggerPreAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAllowanceFunction.selector
        });
    }
}

abstract contract EVault_old$OnApproveFunction {
    function onApproveFunction(FunctionContext memory ctx, EVault_old$ApproveFunctionInputs memory inputs, EVault_old$ApproveFunctionOutputs memory outputs) virtual external;

    function triggerOnApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApproveFunction.selector
        });
    }
}

abstract contract EVault_old$PreApproveFunction {
    function preApproveFunction(PreFunctionContext memory ctx, EVault_old$ApproveFunctionInputs memory inputs) virtual external;

    function triggerPreApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preApproveFunction.selector
        });
    }
}

abstract contract EVault_old$OnAssetFunction {
    function onAssetFunction(FunctionContext memory ctx, EVault_old$AssetFunctionOutputs memory outputs) virtual external;

    function triggerOnAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x38d52e0f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAssetFunction.selector
        });
    }
}

abstract contract EVault_old$PreAssetFunction {
    function preAssetFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x38d52e0f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAssetFunction.selector
        });
    }
}

abstract contract EVault_old$OnBalanceForwarderEnabledFunction {
    function onBalanceForwarderEnabledFunction(FunctionContext memory ctx, EVault_old$BalanceForwarderEnabledFunctionInputs memory inputs, EVault_old$BalanceForwarderEnabledFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceForwarderEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xe15c82ec),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceForwarderEnabledFunction.selector
        });
    }
}

abstract contract EVault_old$PreBalanceForwarderEnabledFunction {
    function preBalanceForwarderEnabledFunction(PreFunctionContext memory ctx, EVault_old$BalanceForwarderEnabledFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceForwarderEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xe15c82ec),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceForwarderEnabledFunction.selector
        });
    }
}

abstract contract EVault_old$OnBalanceOfFunction {
    function onBalanceOfFunction(FunctionContext memory ctx, EVault_old$BalanceOfFunctionInputs memory inputs, EVault_old$BalanceOfFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceOfFunction.selector
        });
    }
}

abstract contract EVault_old$PreBalanceOfFunction {
    function preBalanceOfFunction(PreFunctionContext memory ctx, EVault_old$BalanceOfFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceOfFunction.selector
        });
    }
}

abstract contract EVault_old$OnBalanceTrackerAddressFunction {
    function onBalanceTrackerAddressFunction(FunctionContext memory ctx, EVault_old$BalanceTrackerAddressFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceTrackerAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xece6a7fa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceTrackerAddressFunction.selector
        });
    }
}

abstract contract EVault_old$PreBalanceTrackerAddressFunction {
    function preBalanceTrackerAddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreBalanceTrackerAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xece6a7fa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceTrackerAddressFunction.selector
        });
    }
}

abstract contract EVault_old$OnBorrowFunction {
    function onBorrowFunction(FunctionContext memory ctx, EVault_old$BorrowFunctionInputs memory inputs, EVault_old$BorrowFunctionOutputs memory outputs) virtual external;

    function triggerOnBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4b3fd148),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBorrowFunction.selector
        });
    }
}

abstract contract EVault_old$PreBorrowFunction {
    function preBorrowFunction(PreFunctionContext memory ctx, EVault_old$BorrowFunctionInputs memory inputs) virtual external;

    function triggerPreBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4b3fd148),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBorrowFunction.selector
        });
    }
}

abstract contract EVault_old$OnCapsFunction {
    function onCapsFunction(FunctionContext memory ctx, EVault_old$CapsFunctionOutputs memory outputs) virtual external;

    function triggerOnCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x18e22d98),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCapsFunction.selector
        });
    }
}

abstract contract EVault_old$PreCapsFunction {
    function preCapsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x18e22d98),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCapsFunction.selector
        });
    }
}

abstract contract EVault_old$OnCashFunction {
    function onCashFunction(FunctionContext memory ctx, EVault_old$CashFunctionOutputs memory outputs) virtual external;

    function triggerOnCashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x961be391),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCashFunction.selector
        });
    }
}

abstract contract EVault_old$PreCashFunction {
    function preCashFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x961be391),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCashFunction.selector
        });
    }
}

abstract contract EVault_old$OnCheckAccountStatusFunction {
    function onCheckAccountStatusFunction(FunctionContext memory ctx, EVault_old$CheckAccountStatusFunctionInputs memory inputs, EVault_old$CheckAccountStatusFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckAccountStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb168c58f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckAccountStatusFunction.selector
        });
    }
}

abstract contract EVault_old$PreCheckAccountStatusFunction {
    function preCheckAccountStatusFunction(PreFunctionContext memory ctx, EVault_old$CheckAccountStatusFunctionInputs memory inputs) virtual external;

    function triggerPreCheckAccountStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb168c58f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckAccountStatusFunction.selector
        });
    }
}

abstract contract EVault_old$OnCheckLiquidationFunction {
    function onCheckLiquidationFunction(FunctionContext memory ctx, EVault_old$CheckLiquidationFunctionInputs memory inputs, EVault_old$CheckLiquidationFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x88aa6f12),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckLiquidationFunction.selector
        });
    }
}

abstract contract EVault_old$PreCheckLiquidationFunction {
    function preCheckLiquidationFunction(PreFunctionContext memory ctx, EVault_old$CheckLiquidationFunctionInputs memory inputs) virtual external;

    function triggerPreCheckLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x88aa6f12),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckLiquidationFunction.selector
        });
    }
}

abstract contract EVault_old$OnCheckVaultStatusFunction {
    function onCheckVaultStatusFunction(FunctionContext memory ctx, EVault_old$CheckVaultStatusFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckVaultStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4b3d1223),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckVaultStatusFunction.selector
        });
    }
}

abstract contract EVault_old$PreCheckVaultStatusFunction {
    function preCheckVaultStatusFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCheckVaultStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4b3d1223),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckVaultStatusFunction.selector
        });
    }
}

abstract contract EVault_old$OnConfigFlagsFunction {
    function onConfigFlagsFunction(FunctionContext memory ctx, EVault_old$ConfigFlagsFunctionOutputs memory outputs) virtual external;

    function triggerOnConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x2b38a367),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConfigFlagsFunction.selector
        });
    }
}

abstract contract EVault_old$PreConfigFlagsFunction {
    function preConfigFlagsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x2b38a367),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConfigFlagsFunction.selector
        });
    }
}

abstract contract EVault_old$OnConvertFeesFunction {
    function onConvertFeesFunction(FunctionContext memory ctx) virtual external;

    function triggerOnConvertFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x2b5335c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertFeesFunction.selector
        });
    }
}

abstract contract EVault_old$PreConvertFeesFunction {
    function preConvertFeesFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreConvertFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x2b5335c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertFeesFunction.selector
        });
    }
}

abstract contract EVault_old$OnConvertToAssetsFunction {
    function onConvertToAssetsFunction(FunctionContext memory ctx, EVault_old$ConvertToAssetsFunctionInputs memory inputs, EVault_old$ConvertToAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnConvertToAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x07a2d13a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertToAssetsFunction.selector
        });
    }
}

abstract contract EVault_old$PreConvertToAssetsFunction {
    function preConvertToAssetsFunction(PreFunctionContext memory ctx, EVault_old$ConvertToAssetsFunctionInputs memory inputs) virtual external;

    function triggerPreConvertToAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x07a2d13a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertToAssetsFunction.selector
        });
    }
}

abstract contract EVault_old$OnConvertToSharesFunction {
    function onConvertToSharesFunction(FunctionContext memory ctx, EVault_old$ConvertToSharesFunctionInputs memory inputs, EVault_old$ConvertToSharesFunctionOutputs memory outputs) virtual external;

    function triggerOnConvertToSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc6e6f592),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertToSharesFunction.selector
        });
    }
}

abstract contract EVault_old$PreConvertToSharesFunction {
    function preConvertToSharesFunction(PreFunctionContext memory ctx, EVault_old$ConvertToSharesFunctionInputs memory inputs) virtual external;

    function triggerPreConvertToSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc6e6f592),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertToSharesFunction.selector
        });
    }
}

abstract contract EVault_old$OnCreatorFunction {
    function onCreatorFunction(FunctionContext memory ctx, EVault_old$CreatorFunctionOutputs memory outputs) virtual external;

    function triggerOnCreatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x02d05d3f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatorFunction.selector
        });
    }
}

abstract contract EVault_old$PreCreatorFunction {
    function preCreatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCreatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x02d05d3f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreatorFunction.selector
        });
    }
}

abstract contract EVault_old$OnDTokenFunction {
    function onDTokenFunction(FunctionContext memory ctx, EVault_old$DTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnDTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd9d7858a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDTokenFunction.selector
        });
    }
}

abstract contract EVault_old$PreDTokenFunction {
    function preDTokenFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd9d7858a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDTokenFunction.selector
        });
    }
}

abstract contract EVault_old$OnDebtOfFunction {
    function onDebtOfFunction(FunctionContext memory ctx, EVault_old$DebtOfFunctionInputs memory inputs, EVault_old$DebtOfFunctionOutputs memory outputs) virtual external;

    function triggerOnDebtOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd283e75f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDebtOfFunction.selector
        });
    }
}

abstract contract EVault_old$PreDebtOfFunction {
    function preDebtOfFunction(PreFunctionContext memory ctx, EVault_old$DebtOfFunctionInputs memory inputs) virtual external;

    function triggerPreDebtOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd283e75f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDebtOfFunction.selector
        });
    }
}

abstract contract EVault_old$OnDebtOfExactFunction {
    function onDebtOfExactFunction(FunctionContext memory ctx, EVault_old$DebtOfExactFunctionInputs memory inputs, EVault_old$DebtOfExactFunctionOutputs memory outputs) virtual external;

    function triggerOnDebtOfExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xab49b7f1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDebtOfExactFunction.selector
        });
    }
}

abstract contract EVault_old$PreDebtOfExactFunction {
    function preDebtOfExactFunction(PreFunctionContext memory ctx, EVault_old$DebtOfExactFunctionInputs memory inputs) virtual external;

    function triggerPreDebtOfExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xab49b7f1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDebtOfExactFunction.selector
        });
    }
}

abstract contract EVault_old$OnDecimalsFunction {
    function onDecimalsFunction(FunctionContext memory ctx, EVault_old$DecimalsFunctionOutputs memory outputs) virtual external;

    function triggerOnDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDecimalsFunction.selector
        });
    }
}

abstract contract EVault_old$PreDecimalsFunction {
    function preDecimalsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDecimalsFunction.selector
        });
    }
}

abstract contract EVault_old$OnDepositFunction {
    function onDepositFunction(FunctionContext memory ctx, EVault_old$DepositFunctionInputs memory inputs, EVault_old$DepositFunctionOutputs memory outputs) virtual external;

    function triggerOnDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x6e553f65),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositFunction.selector
        });
    }
}

abstract contract EVault_old$PreDepositFunction {
    function preDepositFunction(PreFunctionContext memory ctx, EVault_old$DepositFunctionInputs memory inputs) virtual external;

    function triggerPreDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x6e553f65),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositFunction.selector
        });
    }
}

abstract contract EVault_old$OnDisableBalanceForwarderFunction {
    function onDisableBalanceForwarderFunction(FunctionContext memory ctx) virtual external;

    function triggerOnDisableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x41233a98),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDisableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault_old$PreDisableBalanceForwarderFunction {
    function preDisableBalanceForwarderFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDisableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x41233a98),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDisableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault_old$OnDisableControllerFunction {
    function onDisableControllerFunction(FunctionContext memory ctx) virtual external;

    function triggerOnDisableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x869e50c7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDisableControllerFunction.selector
        });
    }
}

abstract contract EVault_old$PreDisableControllerFunction {
    function preDisableControllerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDisableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x869e50c7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDisableControllerFunction.selector
        });
    }
}

abstract contract EVault_old$OnEnableBalanceForwarderFunction {
    function onEnableBalanceForwarderFunction(FunctionContext memory ctx) virtual external;

    function triggerOnEnableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x64b1cdd6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEnableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault_old$PreEnableBalanceForwarderFunction {
    function preEnableBalanceForwarderFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEnableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x64b1cdd6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEnableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVault_old$OnFeeReceiverFunction {
    function onFeeReceiverFunction(FunctionContext memory ctx, EVault_old$FeeReceiverFunctionOutputs memory outputs) virtual external;

    function triggerOnFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb3f00674),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault_old$PreFeeReceiverFunction {
    function preFeeReceiverFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb3f00674),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault_old$OnFlashLoanFunction {
    function onFlashLoanFunction(FunctionContext memory ctx, EVault_old$FlashLoanFunctionInputs memory inputs) virtual external;

    function triggerOnFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x5296a431),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFlashLoanFunction.selector
        });
    }
}

abstract contract EVault_old$PreFlashLoanFunction {
    function preFlashLoanFunction(PreFunctionContext memory ctx, EVault_old$FlashLoanFunctionInputs memory inputs) virtual external;

    function triggerPreFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x5296a431),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFlashLoanFunction.selector
        });
    }
}

abstract contract EVault_old$OnGovernorAdminFunction {
    function onGovernorAdminFunction(FunctionContext memory ctx, EVault_old$GovernorAdminFunctionOutputs memory outputs) virtual external;

    function triggerOnGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x6ce98c29),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovernorAdminFunction.selector
        });
    }
}

abstract contract EVault_old$PreGovernorAdminFunction {
    function preGovernorAdminFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x6ce98c29),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGovernorAdminFunction.selector
        });
    }
}

abstract contract EVault_old$OnHookConfigFunction {
    function onHookConfigFunction(FunctionContext memory ctx, EVault_old$HookConfigFunctionOutputs memory outputs) virtual external;

    function triggerOnHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xcf349b7d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onHookConfigFunction.selector
        });
    }
}

abstract contract EVault_old$PreHookConfigFunction {
    function preHookConfigFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xcf349b7d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preHookConfigFunction.selector
        });
    }
}

abstract contract EVault_old$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, EVault_old$InitializeFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc4d66de8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract EVault_old$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, EVault_old$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc4d66de8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract EVault_old$OnInterestAccumulatorFunction {
    function onInterestAccumulatorFunction(FunctionContext memory ctx, EVault_old$InterestAccumulatorFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestAccumulatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x087a6007),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestAccumulatorFunction.selector
        });
    }
}

abstract contract EVault_old$PreInterestAccumulatorFunction {
    function preInterestAccumulatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestAccumulatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x087a6007),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestAccumulatorFunction.selector
        });
    }
}

abstract contract EVault_old$OnInterestFeeFunction {
    function onInterestFeeFunction(FunctionContext memory ctx, EVault_old$InterestFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa75df498),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestFeeFunction.selector
        });
    }
}

abstract contract EVault_old$PreInterestFeeFunction {
    function preInterestFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa75df498),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestFeeFunction.selector
        });
    }
}

abstract contract EVault_old$OnInterestRateFunction {
    function onInterestRateFunction(FunctionContext memory ctx, EVault_old$InterestRateFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x7c3a00fd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestRateFunction.selector
        });
    }
}

abstract contract EVault_old$PreInterestRateFunction {
    function preInterestRateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x7c3a00fd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestRateFunction.selector
        });
    }
}

abstract contract EVault_old$OnInterestRateModelFunction {
    function onInterestRateModelFunction(FunctionContext memory ctx, EVault_old$InterestRateModelFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xf3fdb15a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestRateModelFunction.selector
        });
    }
}

abstract contract EVault_old$PreInterestRateModelFunction {
    function preInterestRateModelFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xf3fdb15a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestRateModelFunction.selector
        });
    }
}

abstract contract EVault_old$OnLiquidateFunction {
    function onLiquidateFunction(FunctionContext memory ctx, EVault_old$LiquidateFunctionInputs memory inputs) virtual external;

    function triggerOnLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc1342574),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateFunction.selector
        });
    }
}

abstract contract EVault_old$PreLiquidateFunction {
    function preLiquidateFunction(PreFunctionContext memory ctx, EVault_old$LiquidateFunctionInputs memory inputs) virtual external;

    function triggerPreLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc1342574),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLiquidateFunction.selector
        });
    }
}

abstract contract EVault_old$OnLiquidationCoolOffTimeFunction {
    function onLiquidationCoolOffTimeFunction(FunctionContext memory ctx, EVault_old$LiquidationCoolOffTimeFunctionOutputs memory outputs) virtual external;

    function triggerOnLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4abdb959),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVault_old$PreLiquidationCoolOffTimeFunction {
    function preLiquidationCoolOffTimeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4abdb959),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVault_old$OnMaxDepositFunction {
    function onMaxDepositFunction(FunctionContext memory ctx, EVault_old$MaxDepositFunctionInputs memory inputs, EVault_old$MaxDepositFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x402d267d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxDepositFunction.selector
        });
    }
}

abstract contract EVault_old$PreMaxDepositFunction {
    function preMaxDepositFunction(PreFunctionContext memory ctx, EVault_old$MaxDepositFunctionInputs memory inputs) virtual external;

    function triggerPreMaxDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x402d267d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxDepositFunction.selector
        });
    }
}

abstract contract EVault_old$OnMaxLiquidationDiscountFunction {
    function onMaxLiquidationDiscountFunction(FunctionContext memory ctx, EVault_old$MaxLiquidationDiscountFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4f7e43df),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVault_old$PreMaxLiquidationDiscountFunction {
    function preMaxLiquidationDiscountFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4f7e43df),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVault_old$OnMaxMintFunction {
    function onMaxMintFunction(FunctionContext memory ctx, EVault_old$MaxMintFunctionInputs memory inputs, EVault_old$MaxMintFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc63d75b6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxMintFunction.selector
        });
    }
}

abstract contract EVault_old$PreMaxMintFunction {
    function preMaxMintFunction(PreFunctionContext memory ctx, EVault_old$MaxMintFunctionInputs memory inputs) virtual external;

    function triggerPreMaxMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc63d75b6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxMintFunction.selector
        });
    }
}

abstract contract EVault_old$OnMaxRedeemFunction {
    function onMaxRedeemFunction(FunctionContext memory ctx, EVault_old$MaxRedeemFunctionInputs memory inputs, EVault_old$MaxRedeemFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd905777e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxRedeemFunction.selector
        });
    }
}

abstract contract EVault_old$PreMaxRedeemFunction {
    function preMaxRedeemFunction(PreFunctionContext memory ctx, EVault_old$MaxRedeemFunctionInputs memory inputs) virtual external;

    function triggerPreMaxRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd905777e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxRedeemFunction.selector
        });
    }
}

abstract contract EVault_old$OnMaxWithdrawFunction {
    function onMaxWithdrawFunction(FunctionContext memory ctx, EVault_old$MaxWithdrawFunctionInputs memory inputs, EVault_old$MaxWithdrawFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xce96cb77),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxWithdrawFunction.selector
        });
    }
}

abstract contract EVault_old$PreMaxWithdrawFunction {
    function preMaxWithdrawFunction(PreFunctionContext memory ctx, EVault_old$MaxWithdrawFunctionInputs memory inputs) virtual external;

    function triggerPreMaxWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xce96cb77),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxWithdrawFunction.selector
        });
    }
}

abstract contract EVault_old$OnMintFunction {
    function onMintFunction(FunctionContext memory ctx, EVault_old$MintFunctionInputs memory inputs, EVault_old$MintFunctionOutputs memory outputs) virtual external;

    function triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x94bf804d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMintFunction.selector
        });
    }
}

abstract contract EVault_old$PreMintFunction {
    function preMintFunction(PreFunctionContext memory ctx, EVault_old$MintFunctionInputs memory inputs) virtual external;

    function triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x94bf804d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMintFunction.selector
        });
    }
}

abstract contract EVault_old$OnNameFunction {
    function onNameFunction(FunctionContext memory ctx, EVault_old$NameFunctionOutputs memory outputs) virtual external;

    function triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNameFunction.selector
        });
    }
}

abstract contract EVault_old$PreNameFunction {
    function preNameFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNameFunction.selector
        });
    }
}

abstract contract EVault_old$OnOracleFunction {
    function onOracleFunction(FunctionContext memory ctx, EVault_old$OracleFunctionOutputs memory outputs) virtual external;

    function triggerOnOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x7dc0d1d0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOracleFunction.selector
        });
    }
}

abstract contract EVault_old$PreOracleFunction {
    function preOracleFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x7dc0d1d0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOracleFunction.selector
        });
    }
}

abstract contract EVault_old$OnPermit2AddressFunction {
    function onPermit2AddressFunction(FunctionContext memory ctx, EVault_old$Permit2AddressFunctionOutputs memory outputs) virtual external;

    function triggerOnPermit2AddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc5224983),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPermit2AddressFunction.selector
        });
    }
}

abstract contract EVault_old$PrePermit2AddressFunction {
    function prePermit2AddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePermit2AddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xc5224983),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePermit2AddressFunction.selector
        });
    }
}

abstract contract EVault_old$OnPreviewDepositFunction {
    function onPreviewDepositFunction(FunctionContext memory ctx, EVault_old$PreviewDepositFunctionInputs memory inputs, EVault_old$PreviewDepositFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xef8b30f7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewDepositFunction.selector
        });
    }
}

abstract contract EVault_old$PrePreviewDepositFunction {
    function prePreviewDepositFunction(PreFunctionContext memory ctx, EVault_old$PreviewDepositFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xef8b30f7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewDepositFunction.selector
        });
    }
}

abstract contract EVault_old$OnPreviewMintFunction {
    function onPreviewMintFunction(FunctionContext memory ctx, EVault_old$PreviewMintFunctionInputs memory inputs, EVault_old$PreviewMintFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb3d7f6b9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewMintFunction.selector
        });
    }
}

abstract contract EVault_old$PrePreviewMintFunction {
    function prePreviewMintFunction(PreFunctionContext memory ctx, EVault_old$PreviewMintFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb3d7f6b9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewMintFunction.selector
        });
    }
}

abstract contract EVault_old$OnPreviewRedeemFunction {
    function onPreviewRedeemFunction(FunctionContext memory ctx, EVault_old$PreviewRedeemFunctionInputs memory inputs, EVault_old$PreviewRedeemFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4cdad506),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewRedeemFunction.selector
        });
    }
}

abstract contract EVault_old$PrePreviewRedeemFunction {
    function prePreviewRedeemFunction(PreFunctionContext memory ctx, EVault_old$PreviewRedeemFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4cdad506),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewRedeemFunction.selector
        });
    }
}

abstract contract EVault_old$OnPreviewWithdrawFunction {
    function onPreviewWithdrawFunction(FunctionContext memory ctx, EVault_old$PreviewWithdrawFunctionInputs memory inputs, EVault_old$PreviewWithdrawFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x0a28a477),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewWithdrawFunction.selector
        });
    }
}

abstract contract EVault_old$PrePreviewWithdrawFunction {
    function prePreviewWithdrawFunction(PreFunctionContext memory ctx, EVault_old$PreviewWithdrawFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x0a28a477),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewWithdrawFunction.selector
        });
    }
}

abstract contract EVault_old$OnProtocolConfigAddressFunction {
    function onProtocolConfigAddressFunction(FunctionContext memory ctx, EVault_old$ProtocolConfigAddressFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolConfigAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x539bd5bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolConfigAddressFunction.selector
        });
    }
}

abstract contract EVault_old$PreProtocolConfigAddressFunction {
    function preProtocolConfigAddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolConfigAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x539bd5bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolConfigAddressFunction.selector
        });
    }
}

abstract contract EVault_old$OnProtocolFeeReceiverFunction {
    function onProtocolFeeReceiverFunction(FunctionContext memory ctx, EVault_old$ProtocolFeeReceiverFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x39a51be5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault_old$PreProtocolFeeReceiverFunction {
    function preProtocolFeeReceiverFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x39a51be5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault_old$OnProtocolFeeShareFunction {
    function onProtocolFeeShareFunction(FunctionContext memory ctx, EVault_old$ProtocolFeeShareFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolFeeShareFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x960b26a2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeeShareFunction.selector
        });
    }
}

abstract contract EVault_old$PreProtocolFeeShareFunction {
    function preProtocolFeeShareFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolFeeShareFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x960b26a2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolFeeShareFunction.selector
        });
    }
}

abstract contract EVault_old$OnPullDebtFunction {
    function onPullDebtFunction(FunctionContext memory ctx, EVault_old$PullDebtFunctionInputs memory inputs) virtual external;

    function triggerOnPullDebtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xaebde56b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPullDebtFunction.selector
        });
    }
}

abstract contract EVault_old$PrePullDebtFunction {
    function prePullDebtFunction(PreFunctionContext memory ctx, EVault_old$PullDebtFunctionInputs memory inputs) virtual external;

    function triggerPrePullDebtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xaebde56b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePullDebtFunction.selector
        });
    }
}

abstract contract EVault_old$OnRedeemFunction {
    function onRedeemFunction(FunctionContext memory ctx, EVault_old$RedeemFunctionInputs memory inputs, EVault_old$RedeemFunctionOutputs memory outputs) virtual external;

    function triggerOnRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xba087652),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRedeemFunction.selector
        });
    }
}

abstract contract EVault_old$PreRedeemFunction {
    function preRedeemFunction(PreFunctionContext memory ctx, EVault_old$RedeemFunctionInputs memory inputs) virtual external;

    function triggerPreRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xba087652),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRedeemFunction.selector
        });
    }
}

abstract contract EVault_old$OnRepayFunction {
    function onRepayFunction(FunctionContext memory ctx, EVault_old$RepayFunctionInputs memory inputs, EVault_old$RepayFunctionOutputs memory outputs) virtual external;

    function triggerOnRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xacb70815),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayFunction.selector
        });
    }
}

abstract contract EVault_old$PreRepayFunction {
    function preRepayFunction(PreFunctionContext memory ctx, EVault_old$RepayFunctionInputs memory inputs) virtual external;

    function triggerPreRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xacb70815),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRepayFunction.selector
        });
    }
}

abstract contract EVault_old$OnRepayWithSharesFunction {
    function onRepayWithSharesFunction(FunctionContext memory ctx, EVault_old$RepayWithSharesFunctionInputs memory inputs, EVault_old$RepayWithSharesFunctionOutputs memory outputs) virtual external;

    function triggerOnRepayWithSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa9c8eb7e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayWithSharesFunction.selector
        });
    }
}

abstract contract EVault_old$PreRepayWithSharesFunction {
    function preRepayWithSharesFunction(PreFunctionContext memory ctx, EVault_old$RepayWithSharesFunctionInputs memory inputs) virtual external;

    function triggerPreRepayWithSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa9c8eb7e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRepayWithSharesFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetCapsFunction {
    function onSetCapsFunction(FunctionContext memory ctx, EVault_old$SetCapsFunctionInputs memory inputs) virtual external;

    function triggerOnSetCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd87f780f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetCapsFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetCapsFunction {
    function preSetCapsFunction(PreFunctionContext memory ctx, EVault_old$SetCapsFunctionInputs memory inputs) virtual external;

    function triggerPreSetCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd87f780f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetCapsFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetConfigFlagsFunction {
    function onSetConfigFlagsFunction(FunctionContext memory ctx, EVault_old$SetConfigFlagsFunctionInputs memory inputs) virtual external;

    function triggerOnSetConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xada3d56f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetConfigFlagsFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetConfigFlagsFunction {
    function preSetConfigFlagsFunction(PreFunctionContext memory ctx, EVault_old$SetConfigFlagsFunctionInputs memory inputs) virtual external;

    function triggerPreSetConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xada3d56f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetConfigFlagsFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetFeeReceiverFunction {
    function onSetFeeReceiverFunction(FunctionContext memory ctx, EVault_old$SetFeeReceiverFunctionInputs memory inputs) virtual external;

    function triggerOnSetFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xefdcd974),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetFeeReceiverFunction {
    function preSetFeeReceiverFunction(PreFunctionContext memory ctx, EVault_old$SetFeeReceiverFunctionInputs memory inputs) virtual external;

    function triggerPreSetFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xefdcd974),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetFeeReceiverFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetGovernorAdminFunction {
    function onSetGovernorAdminFunction(FunctionContext memory ctx, EVault_old$SetGovernorAdminFunctionInputs memory inputs) virtual external;

    function triggerOnSetGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x82ebd674),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetGovernorAdminFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetGovernorAdminFunction {
    function preSetGovernorAdminFunction(PreFunctionContext memory ctx, EVault_old$SetGovernorAdminFunctionInputs memory inputs) virtual external;

    function triggerPreSetGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x82ebd674),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetGovernorAdminFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetHookConfigFunction {
    function onSetHookConfigFunction(FunctionContext memory ctx, EVault_old$SetHookConfigFunctionInputs memory inputs) virtual external;

    function triggerOnSetHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd1a3a308),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetHookConfigFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetHookConfigFunction {
    function preSetHookConfigFunction(PreFunctionContext memory ctx, EVault_old$SetHookConfigFunctionInputs memory inputs) virtual external;

    function triggerPreSetHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xd1a3a308),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetHookConfigFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetInterestFeeFunction {
    function onSetInterestFeeFunction(FunctionContext memory ctx, EVault_old$SetInterestFeeFunctionInputs memory inputs) virtual external;

    function triggerOnSetInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x60cb90ef),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetInterestFeeFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetInterestFeeFunction {
    function preSetInterestFeeFunction(PreFunctionContext memory ctx, EVault_old$SetInterestFeeFunctionInputs memory inputs) virtual external;

    function triggerPreSetInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x60cb90ef),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetInterestFeeFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetInterestRateModelFunction {
    function onSetInterestRateModelFunction(FunctionContext memory ctx, EVault_old$SetInterestRateModelFunctionInputs memory inputs) virtual external;

    function triggerOnSetInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x8bcd4016),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetInterestRateModelFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetInterestRateModelFunction {
    function preSetInterestRateModelFunction(PreFunctionContext memory ctx, EVault_old$SetInterestRateModelFunctionInputs memory inputs) virtual external;

    function triggerPreSetInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x8bcd4016),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetInterestRateModelFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetLtvFunction {
    function onSetLtvFunction(FunctionContext memory ctx, EVault_old$SetLtvFunctionInputs memory inputs) virtual external;

    function triggerOnSetLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4bca3d5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetLtvFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetLtvFunction {
    function preSetLtvFunction(PreFunctionContext memory ctx, EVault_old$SetLtvFunctionInputs memory inputs) virtual external;

    function triggerPreSetLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x4bca3d5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetLtvFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetLiquidationCoolOffTimeFunction {
    function onSetLiquidationCoolOffTimeFunction(FunctionContext memory ctx, EVault_old$SetLiquidationCoolOffTimeFunctionInputs memory inputs) virtual external;

    function triggerOnSetLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xaf06d3cf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetLiquidationCoolOffTimeFunction {
    function preSetLiquidationCoolOffTimeFunction(PreFunctionContext memory ctx, EVault_old$SetLiquidationCoolOffTimeFunctionInputs memory inputs) virtual external;

    function triggerPreSetLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xaf06d3cf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVault_old$OnSetMaxLiquidationDiscountFunction {
    function onSetMaxLiquidationDiscountFunction(FunctionContext memory ctx, EVault_old$SetMaxLiquidationDiscountFunctionInputs memory inputs) virtual external;

    function triggerOnSetMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb4113ba7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVault_old$PreSetMaxLiquidationDiscountFunction {
    function preSetMaxLiquidationDiscountFunction(PreFunctionContext memory ctx, EVault_old$SetMaxLiquidationDiscountFunctionInputs memory inputs) virtual external;

    function triggerPreSetMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb4113ba7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVault_old$OnSkimFunction {
    function onSkimFunction(FunctionContext memory ctx, EVault_old$SkimFunctionInputs memory inputs, EVault_old$SkimFunctionOutputs memory outputs) virtual external;

    function triggerOnSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x8d56c639),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSkimFunction.selector
        });
    }
}

abstract contract EVault_old$PreSkimFunction {
    function preSkimFunction(PreFunctionContext memory ctx, EVault_old$SkimFunctionInputs memory inputs) virtual external;

    function triggerPreSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x8d56c639),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSkimFunction.selector
        });
    }
}

abstract contract EVault_old$OnSymbolFunction {
    function onSymbolFunction(FunctionContext memory ctx, EVault_old$SymbolFunctionOutputs memory outputs) virtual external;

    function triggerOnSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSymbolFunction.selector
        });
    }
}

abstract contract EVault_old$PreSymbolFunction {
    function preSymbolFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSymbolFunction.selector
        });
    }
}

abstract contract EVault_old$OnTotalAssetsFunction {
    function onTotalAssetsFunction(FunctionContext memory ctx, EVault_old$TotalAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x01e1d114),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalAssetsFunction.selector
        });
    }
}

abstract contract EVault_old$PreTotalAssetsFunction {
    function preTotalAssetsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x01e1d114),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalAssetsFunction.selector
        });
    }
}

abstract contract EVault_old$OnTotalBorrowsFunction {
    function onTotalBorrowsFunction(FunctionContext memory ctx, EVault_old$TotalBorrowsFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalBorrowsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x47bd3718),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalBorrowsFunction.selector
        });
    }
}

abstract contract EVault_old$PreTotalBorrowsFunction {
    function preTotalBorrowsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalBorrowsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x47bd3718),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalBorrowsFunction.selector
        });
    }
}

abstract contract EVault_old$OnTotalBorrowsExactFunction {
    function onTotalBorrowsExactFunction(FunctionContext memory ctx, EVault_old$TotalBorrowsExactFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalBorrowsExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xe388be7b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalBorrowsExactFunction.selector
        });
    }
}

abstract contract EVault_old$PreTotalBorrowsExactFunction {
    function preTotalBorrowsExactFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalBorrowsExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xe388be7b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalBorrowsExactFunction.selector
        });
    }
}

abstract contract EVault_old$OnTotalSupplyFunction {
    function onTotalSupplyFunction(FunctionContext memory ctx, EVault_old$TotalSupplyFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalSupplyFunction.selector
        });
    }
}

abstract contract EVault_old$PreTotalSupplyFunction {
    function preTotalSupplyFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalSupplyFunction.selector
        });
    }
}

abstract contract EVault_old$OnTouchFunction {
    function onTouchFunction(FunctionContext memory ctx) virtual external;

    function triggerOnTouchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa55526db),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTouchFunction.selector
        });
    }
}

abstract contract EVault_old$PreTouchFunction {
    function preTouchFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTouchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa55526db),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTouchFunction.selector
        });
    }
}

abstract contract EVault_old$OnTransferFunction {
    function onTransferFunction(FunctionContext memory ctx, EVault_old$TransferFunctionInputs memory inputs, EVault_old$TransferFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFunction.selector
        });
    }
}

abstract contract EVault_old$PreTransferFunction {
    function preTransferFunction(PreFunctionContext memory ctx, EVault_old$TransferFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFunction.selector
        });
    }
}

abstract contract EVault_old$OnTransferFromFunction {
    function onTransferFromFunction(FunctionContext memory ctx, EVault_old$TransferFromFunctionInputs memory inputs, EVault_old$TransferFromFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFromFunction.selector
        });
    }
}

abstract contract EVault_old$PreTransferFromFunction {
    function preTransferFromFunction(PreFunctionContext memory ctx, EVault_old$TransferFromFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFromFunction.selector
        });
    }
}

abstract contract EVault_old$OnTransferFromMaxFunction {
    function onTransferFromMaxFunction(FunctionContext memory ctx, EVault_old$TransferFromMaxFunctionInputs memory inputs, EVault_old$TransferFromMaxFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFromMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xcbfdd7e1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFromMaxFunction.selector
        });
    }
}

abstract contract EVault_old$PreTransferFromMaxFunction {
    function preTransferFromMaxFunction(PreFunctionContext memory ctx, EVault_old$TransferFromMaxFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFromMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xcbfdd7e1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFromMaxFunction.selector
        });
    }
}

abstract contract EVault_old$OnUnitOfAccountFunction {
    function onUnitOfAccountFunction(FunctionContext memory ctx, EVault_old$UnitOfAccountFunctionOutputs memory outputs) virtual external;

    function triggerOnUnitOfAccountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x3e833364),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUnitOfAccountFunction.selector
        });
    }
}

abstract contract EVault_old$PreUnitOfAccountFunction {
    function preUnitOfAccountFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUnitOfAccountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x3e833364),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUnitOfAccountFunction.selector
        });
    }
}

abstract contract EVault_old$OnViewDelegateFunction {
    function onViewDelegateFunction(FunctionContext memory ctx) virtual external;

    function triggerOnViewDelegateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x1fe8b953),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onViewDelegateFunction.selector
        });
    }
}

abstract contract EVault_old$PreViewDelegateFunction {
    function preViewDelegateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreViewDelegateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0x1fe8b953),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preViewDelegateFunction.selector
        });
    }
}

abstract contract EVault_old$OnWithdrawFunction {
    function onWithdrawFunction(FunctionContext memory ctx, EVault_old$WithdrawFunctionInputs memory inputs, EVault_old$WithdrawFunctionOutputs memory outputs) virtual external;

    function triggerOnWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb460af94),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawFunction.selector
        });
    }
}

abstract contract EVault_old$PreWithdrawFunction {
    function preWithdrawFunction(PreFunctionContext memory ctx, EVault_old$WithdrawFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVault_old",
            selector: bytes4(0xb460af94),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawFunction.selector
        });
    }
}


struct EVault_old$EmitAllEvents$Approval {
  address owner;
  address spender;
  uint256 value;
}

struct EVault_old$EmitAllEvents$BalanceForwarderStatus {
  address account;
  bool status;
}

struct EVault_old$EmitAllEvents$Borrow {
  address account;
  uint256 assets;
}

struct EVault_old$EmitAllEvents$ConvertFees {
  address sender;
  address protocolReceiver;
  address governorReceiver;
  uint256 protocolShares;
  uint256 governorShares;
}

struct EVault_old$EmitAllEvents$DebtSocialized {
  address account;
  uint256 assets;
}

struct EVault_old$EmitAllEvents$Deposit {
  address sender;
  address owner;
  uint256 assets;
  uint256 shares;
}

struct EVault_old$EmitAllEvents$EVaultCreated {
  address creator;
  address asset;
  address dToken;
}

struct EVault_old$EmitAllEvents$GovSetCaps {
  uint16 newSupplyCap;
  uint16 newBorrowCap;
}

struct EVault_old$EmitAllEvents$GovSetConfigFlags {
  uint32 newConfigFlags;
}

struct EVault_old$EmitAllEvents$GovSetFeeReceiver {
  address newFeeReceiver;
}

struct EVault_old$EmitAllEvents$GovSetGovernorAdmin {
  address newGovernorAdmin;
}

struct EVault_old$EmitAllEvents$GovSetHookConfig {
  address newHookTarget;
  uint32 newHookedOps;
}

struct EVault_old$EmitAllEvents$GovSetInterestFee {
  uint16 newFee;
}

struct EVault_old$EmitAllEvents$GovSetInterestRateModel {
  address newInterestRateModel;
}

struct EVault_old$EmitAllEvents$GovSetLtv {
  address collateral;
  uint16 borrowLTV;
  uint16 liquidationLTV;
  uint16 initialLiquidationLTV;
  uint48 targetTimestamp;
  uint32 rampDuration;
}

struct EVault_old$EmitAllEvents$GovSetLiquidationCoolOffTime {
  uint16 newCoolOffTime;
}

struct EVault_old$EmitAllEvents$GovSetMaxLiquidationDiscount {
  uint16 newDiscount;
}

struct EVault_old$EmitAllEvents$InterestAccrued {
  address account;
  uint256 assets;
}

struct EVault_old$EmitAllEvents$Liquidate {
  address liquidator;
  address violator;
  address collateral;
  uint256 repayAssets;
  uint256 yieldBalance;
}

struct EVault_old$EmitAllEvents$PullDebt {
  address from;
  address to;
  uint256 assets;
}

struct EVault_old$EmitAllEvents$Repay {
  address account;
  uint256 assets;
}

struct EVault_old$EmitAllEvents$Transfer {
  address from;
  address to;
  uint256 value;
}

struct EVault_old$EmitAllEvents$VaultStatus {
  uint256 totalShares;
  uint256 totalBorrows;
  uint256 accumulatedFees;
  uint256 cash;
  uint256 interestAccumulator;
  uint256 interestRate;
  uint256 timestamp;
}

struct EVault_old$EmitAllEvents$Withdraw {
  address sender;
  address receiver;
  address owner;
  uint256 assets;
  uint256 shares;
}

contract EVault_old$EmitAllEvents is
  EVault_old$OnApprovalEvent,
EVault_old$OnBalanceForwarderStatusEvent,
EVault_old$OnBorrowEvent,
EVault_old$OnConvertFeesEvent,
EVault_old$OnDebtSocializedEvent,
EVault_old$OnDepositEvent,
EVault_old$OnEVaultCreatedEvent,
EVault_old$OnGovSetCapsEvent,
EVault_old$OnGovSetConfigFlagsEvent,
EVault_old$OnGovSetFeeReceiverEvent,
EVault_old$OnGovSetGovernorAdminEvent,
EVault_old$OnGovSetHookConfigEvent,
EVault_old$OnGovSetInterestFeeEvent,
EVault_old$OnGovSetInterestRateModelEvent,
EVault_old$OnGovSetLtvEvent,
EVault_old$OnGovSetLiquidationCoolOffTimeEvent,
EVault_old$OnGovSetMaxLiquidationDiscountEvent,
EVault_old$OnInterestAccruedEvent,
EVault_old$OnLiquidateEvent,
EVault_old$OnPullDebtEvent,
EVault_old$OnRepayEvent,
EVault_old$OnTransferEvent,
EVault_old$OnVaultStatusEvent,
EVault_old$OnWithdrawEvent
{
  event Approval(EVault_old$EmitAllEvents$Approval);
  event BalanceForwarderStatus(EVault_old$EmitAllEvents$BalanceForwarderStatus);
  event Borrow(EVault_old$EmitAllEvents$Borrow);
  event ConvertFees(EVault_old$EmitAllEvents$ConvertFees);
  event DebtSocialized(EVault_old$EmitAllEvents$DebtSocialized);
  event Deposit(EVault_old$EmitAllEvents$Deposit);
  event EVaultCreated(EVault_old$EmitAllEvents$EVaultCreated);
  event GovSetCaps(EVault_old$EmitAllEvents$GovSetCaps);
  event GovSetConfigFlags(EVault_old$EmitAllEvents$GovSetConfigFlags);
  event GovSetFeeReceiver(EVault_old$EmitAllEvents$GovSetFeeReceiver);
  event GovSetGovernorAdmin(EVault_old$EmitAllEvents$GovSetGovernorAdmin);
  event GovSetHookConfig(EVault_old$EmitAllEvents$GovSetHookConfig);
  event GovSetInterestFee(EVault_old$EmitAllEvents$GovSetInterestFee);
  event GovSetInterestRateModel(EVault_old$EmitAllEvents$GovSetInterestRateModel);
  event GovSetLtv(EVault_old$EmitAllEvents$GovSetLtv);
  event GovSetLiquidationCoolOffTime(EVault_old$EmitAllEvents$GovSetLiquidationCoolOffTime);
  event GovSetMaxLiquidationDiscount(EVault_old$EmitAllEvents$GovSetMaxLiquidationDiscount);
  event InterestAccrued(EVault_old$EmitAllEvents$InterestAccrued);
  event Liquidate(EVault_old$EmitAllEvents$Liquidate);
  event PullDebt(EVault_old$EmitAllEvents$PullDebt);
  event Repay(EVault_old$EmitAllEvents$Repay);
  event Transfer(EVault_old$EmitAllEvents$Transfer);
  event VaultStatus(EVault_old$EmitAllEvents$VaultStatus);
  event Withdraw(EVault_old$EmitAllEvents$Withdraw);

  function onApprovalEvent(EventContext memory ctx, EVault_old$ApprovalEventParams memory inputs) virtual external override {
    emit Approval(EVault_old$EmitAllEvents$Approval(inputs.owner, inputs.spender, inputs.value));
  }
function onBalanceForwarderStatusEvent(EventContext memory ctx, EVault_old$BalanceForwarderStatusEventParams memory inputs) virtual external override {
    emit BalanceForwarderStatus(EVault_old$EmitAllEvents$BalanceForwarderStatus(inputs.account, inputs.status));
  }
function onBorrowEvent(EventContext memory ctx, EVault_old$BorrowEventParams memory inputs) virtual external override {
    emit Borrow(EVault_old$EmitAllEvents$Borrow(inputs.account, inputs.assets));
  }
function onConvertFeesEvent(EventContext memory ctx, EVault_old$ConvertFeesEventParams memory inputs) virtual external override {
    emit ConvertFees(EVault_old$EmitAllEvents$ConvertFees(inputs.sender, inputs.protocolReceiver, inputs.governorReceiver, inputs.protocolShares, inputs.governorShares));
  }
function onDebtSocializedEvent(EventContext memory ctx, EVault_old$DebtSocializedEventParams memory inputs) virtual external override {
    emit DebtSocialized(EVault_old$EmitAllEvents$DebtSocialized(inputs.account, inputs.assets));
  }
function onDepositEvent(EventContext memory ctx, EVault_old$DepositEventParams memory inputs) virtual external override {
    emit Deposit(EVault_old$EmitAllEvents$Deposit(inputs.sender, inputs.owner, inputs.assets, inputs.shares));
  }
function onEVaultCreatedEvent(EventContext memory ctx, EVault_old$EVaultCreatedEventParams memory inputs) virtual external override {
    emit EVaultCreated(EVault_old$EmitAllEvents$EVaultCreated(inputs.creator, inputs.asset, inputs.dToken));
  }
function onGovSetCapsEvent(EventContext memory ctx, EVault_old$GovSetCapsEventParams memory inputs) virtual external override {
    emit GovSetCaps(EVault_old$EmitAllEvents$GovSetCaps(inputs.newSupplyCap, inputs.newBorrowCap));
  }
function onGovSetConfigFlagsEvent(EventContext memory ctx, EVault_old$GovSetConfigFlagsEventParams memory inputs) virtual external override {
    emit GovSetConfigFlags(EVault_old$EmitAllEvents$GovSetConfigFlags(inputs.newConfigFlags));
  }
function onGovSetFeeReceiverEvent(EventContext memory ctx, EVault_old$GovSetFeeReceiverEventParams memory inputs) virtual external override {
    emit GovSetFeeReceiver(EVault_old$EmitAllEvents$GovSetFeeReceiver(inputs.newFeeReceiver));
  }
function onGovSetGovernorAdminEvent(EventContext memory ctx, EVault_old$GovSetGovernorAdminEventParams memory inputs) virtual external override {
    emit GovSetGovernorAdmin(EVault_old$EmitAllEvents$GovSetGovernorAdmin(inputs.newGovernorAdmin));
  }
function onGovSetHookConfigEvent(EventContext memory ctx, EVault_old$GovSetHookConfigEventParams memory inputs) virtual external override {
    emit GovSetHookConfig(EVault_old$EmitAllEvents$GovSetHookConfig(inputs.newHookTarget, inputs.newHookedOps));
  }
function onGovSetInterestFeeEvent(EventContext memory ctx, EVault_old$GovSetInterestFeeEventParams memory inputs) virtual external override {
    emit GovSetInterestFee(EVault_old$EmitAllEvents$GovSetInterestFee(inputs.newFee));
  }
function onGovSetInterestRateModelEvent(EventContext memory ctx, EVault_old$GovSetInterestRateModelEventParams memory inputs) virtual external override {
    emit GovSetInterestRateModel(EVault_old$EmitAllEvents$GovSetInterestRateModel(inputs.newInterestRateModel));
  }
function onGovSetLtvEvent(EventContext memory ctx, EVault_old$GovSetLtvEventParams memory inputs) virtual external override {
    emit GovSetLtv(EVault_old$EmitAllEvents$GovSetLtv(inputs.collateral, inputs.borrowLTV, inputs.liquidationLTV, inputs.initialLiquidationLTV, inputs.targetTimestamp, inputs.rampDuration));
  }
function onGovSetLiquidationCoolOffTimeEvent(EventContext memory ctx, EVault_old$GovSetLiquidationCoolOffTimeEventParams memory inputs) virtual external override {
    emit GovSetLiquidationCoolOffTime(EVault_old$EmitAllEvents$GovSetLiquidationCoolOffTime(inputs.newCoolOffTime));
  }
function onGovSetMaxLiquidationDiscountEvent(EventContext memory ctx, EVault_old$GovSetMaxLiquidationDiscountEventParams memory inputs) virtual external override {
    emit GovSetMaxLiquidationDiscount(EVault_old$EmitAllEvents$GovSetMaxLiquidationDiscount(inputs.newDiscount));
  }
function onInterestAccruedEvent(EventContext memory ctx, EVault_old$InterestAccruedEventParams memory inputs) virtual external override {
    emit InterestAccrued(EVault_old$EmitAllEvents$InterestAccrued(inputs.account, inputs.assets));
  }
function onLiquidateEvent(EventContext memory ctx, EVault_old$LiquidateEventParams memory inputs) virtual external override {
    emit Liquidate(EVault_old$EmitAllEvents$Liquidate(inputs.liquidator, inputs.violator, inputs.collateral, inputs.repayAssets, inputs.yieldBalance));
  }
function onPullDebtEvent(EventContext memory ctx, EVault_old$PullDebtEventParams memory inputs) virtual external override {
    emit PullDebt(EVault_old$EmitAllEvents$PullDebt(inputs.from, inputs.to, inputs.assets));
  }
function onRepayEvent(EventContext memory ctx, EVault_old$RepayEventParams memory inputs) virtual external override {
    emit Repay(EVault_old$EmitAllEvents$Repay(inputs.account, inputs.assets));
  }
function onTransferEvent(EventContext memory ctx, EVault_old$TransferEventParams memory inputs) virtual external override {
    emit Transfer(EVault_old$EmitAllEvents$Transfer(inputs.from, inputs.to, inputs.value));
  }
function onVaultStatusEvent(EventContext memory ctx, EVault_old$VaultStatusEventParams memory inputs) virtual external override {
    emit VaultStatus(EVault_old$EmitAllEvents$VaultStatus(inputs.totalShares, inputs.totalBorrows, inputs.accumulatedFees, inputs.cash, inputs.interestAccumulator, inputs.interestRate, inputs.timestamp));
  }
function onWithdrawEvent(EventContext memory ctx, EVault_old$WithdrawEventParams memory inputs) virtual external override {
    emit Withdraw(EVault_old$EmitAllEvents$Withdraw(inputs.sender, inputs.receiver, inputs.owner, inputs.assets, inputs.shares));
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