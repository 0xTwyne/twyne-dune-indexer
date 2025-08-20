// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function EVaultLiquidate$Abi() pure returns (Abi memory) {
    return Abi("EVaultLiquidate");
}
struct EVaultLiquidate$EvcFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$LtvBorrowFunctionInputs {
    address collateral;
}

struct EVaultLiquidate$LtvBorrowFunctionOutputs {
    uint16 outArg0;
}

struct EVaultLiquidate$LtvFullFunctionInputs {
    address collateral;
}

struct EVaultLiquidate$LtvFullFunctionOutputs {
    uint16 borrowLTV;
    uint16 liquidationLTV;
    uint16 initialLiquidationLTV;
    uint48 targetTimestamp;
    uint32 rampDuration;
}

struct EVaultLiquidate$LtvLiquidationFunctionInputs {
    address collateral;
}

struct EVaultLiquidate$LtvLiquidationFunctionOutputs {
    uint16 outArg0;
}

struct EVaultLiquidate$LtvListFunctionOutputs {
    address[] outArg0;
}

struct EVaultLiquidate$ModuleBalanceForwarderFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$ModuleBorrowingFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$ModuleGovernanceFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$ModuleInitializeFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$ModuleLiquidationFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$ModuleRiskmanagerFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$ModuleTokenFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$ModuleVaultFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$AccountLiquidityFunctionInputs {
    address account;
    bool liquidation;
}

struct EVaultLiquidate$AccountLiquidityFunctionOutputs {
    uint256 collateralValue;
    uint256 liabilityValue;
}

struct EVaultLiquidate$AccountLiquidityFullFunctionInputs {
    address account;
    bool liquidation;
}

struct EVaultLiquidate$AccountLiquidityFullFunctionOutputs {
    address[] collaterals;
    uint256[] collateralValues;
    uint256 liabilityValue;
}

struct EVaultLiquidate$AccumulatedFeesFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$AccumulatedFeesAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$AllowanceFunctionInputs {
    address holder;
    address spender;
}

struct EVaultLiquidate$AllowanceFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$ApproveFunctionInputs {
    address spender;
    uint256 amount;
}

struct EVaultLiquidate$ApproveFunctionOutputs {
    bool outArg0;
}

struct EVaultLiquidate$AssetFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$BalanceForwarderEnabledFunctionInputs {
    address account;
}

struct EVaultLiquidate$BalanceForwarderEnabledFunctionOutputs {
    bool outArg0;
}

struct EVaultLiquidate$BalanceOfFunctionInputs {
    address account;
}

struct EVaultLiquidate$BalanceOfFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$BalanceTrackerAddressFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$BorrowFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVaultLiquidate$BorrowFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$CapsFunctionOutputs {
    uint16 supplyCap;
    uint16 borrowCap;
}

struct EVaultLiquidate$CashFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$CheckAccountStatusFunctionInputs {
    address account;
    address[] collaterals;
}

struct EVaultLiquidate$CheckAccountStatusFunctionOutputs {
    bytes4 outArg0;
}

struct EVaultLiquidate$CheckLiquidationFunctionInputs {
    address liquidator;
    address violator;
    address collateral;
}

struct EVaultLiquidate$CheckLiquidationFunctionOutputs {
    uint256 maxRepay;
    uint256 maxYield;
}

struct EVaultLiquidate$CheckVaultStatusFunctionOutputs {
    bytes4 outArg0;
}

struct EVaultLiquidate$ConfigFlagsFunctionOutputs {
    uint32 outArg0;
}

struct EVaultLiquidate$ConvertToAssetsFunctionInputs {
    uint256 shares;
}

struct EVaultLiquidate$ConvertToAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$ConvertToSharesFunctionInputs {
    uint256 assets;
}

struct EVaultLiquidate$ConvertToSharesFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$CreatorFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$DTokenFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$DebtOfFunctionInputs {
    address account;
}

struct EVaultLiquidate$DebtOfFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$DebtOfExactFunctionInputs {
    address account;
}

struct EVaultLiquidate$DebtOfExactFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$DecimalsFunctionOutputs {
    uint8 outArg0;
}

struct EVaultLiquidate$DepositFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVaultLiquidate$DepositFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$FeeReceiverFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$FlashLoanFunctionInputs {
    uint256 amount;
    bytes data;
}

struct EVaultLiquidate$GovernorAdminFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$HookConfigFunctionOutputs {
    address outArg0;
    uint32 outArg1;
}

struct EVaultLiquidate$InitializeFunctionInputs {
    address proxyCreator;
}

struct EVaultLiquidate$InterestAccumulatorFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$InterestFeeFunctionOutputs {
    uint16 outArg0;
}

struct EVaultLiquidate$InterestRateFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$InterestRateModelFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$LiquidateFunctionInputs {
    address violator;
    address collateral;
    uint256 repayAssets;
    uint256 minYieldBalance;
}

struct EVaultLiquidate$LiquidationCoolOffTimeFunctionOutputs {
    uint16 outArg0;
}

struct EVaultLiquidate$MaxDepositFunctionInputs {
    address account;
}

struct EVaultLiquidate$MaxDepositFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$MaxLiquidationDiscountFunctionOutputs {
    uint16 outArg0;
}

struct EVaultLiquidate$MaxMintFunctionInputs {
    address account;
}

struct EVaultLiquidate$MaxMintFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$MaxRedeemFunctionInputs {
    address owner;
}

struct EVaultLiquidate$MaxRedeemFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$MaxWithdrawFunctionInputs {
    address owner;
}

struct EVaultLiquidate$MaxWithdrawFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$MintFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVaultLiquidate$MintFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$NameFunctionOutputs {
    string outArg0;
}

struct EVaultLiquidate$OracleFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$Permit2AddressFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$PreviewDepositFunctionInputs {
    uint256 assets;
}

struct EVaultLiquidate$PreviewDepositFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$PreviewMintFunctionInputs {
    uint256 shares;
}

struct EVaultLiquidate$PreviewMintFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$PreviewRedeemFunctionInputs {
    uint256 shares;
}

struct EVaultLiquidate$PreviewRedeemFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$PreviewWithdrawFunctionInputs {
    uint256 assets;
}

struct EVaultLiquidate$PreviewWithdrawFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$ProtocolConfigAddressFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$ProtocolFeeReceiverFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$ProtocolFeeShareFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$PullDebtFunctionInputs {
    uint256 amount;
    address from;
}

struct EVaultLiquidate$RedeemFunctionInputs {
    uint256 amount;
    address receiver;
    address owner;
}

struct EVaultLiquidate$RedeemFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$RepayFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVaultLiquidate$RepayFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$RepayWithSharesFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVaultLiquidate$RepayWithSharesFunctionOutputs {
    uint256 shares;
    uint256 debt;
}

struct EVaultLiquidate$SetCapsFunctionInputs {
    uint16 supplyCap;
    uint16 borrowCap;
}

struct EVaultLiquidate$SetConfigFlagsFunctionInputs {
    uint32 newConfigFlags;
}

struct EVaultLiquidate$SetFeeReceiverFunctionInputs {
    address newFeeReceiver;
}

struct EVaultLiquidate$SetGovernorAdminFunctionInputs {
    address newGovernorAdmin;
}

struct EVaultLiquidate$SetHookConfigFunctionInputs {
    address newHookTarget;
    uint32 newHookedOps;
}

struct EVaultLiquidate$SetInterestFeeFunctionInputs {
    uint16 newFee;
}

struct EVaultLiquidate$SetInterestRateModelFunctionInputs {
    address newModel;
}

struct EVaultLiquidate$SetLtvFunctionInputs {
    address collateral;
    uint16 borrowLTV;
    uint16 liquidationLTV;
    uint32 rampDuration;
}

struct EVaultLiquidate$SetLiquidationCoolOffTimeFunctionInputs {
    uint16 newCoolOffTime;
}

struct EVaultLiquidate$SetMaxLiquidationDiscountFunctionInputs {
    uint16 newDiscount;
}

struct EVaultLiquidate$SkimFunctionInputs {
    uint256 amount;
    address receiver;
}

struct EVaultLiquidate$SkimFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$SymbolFunctionOutputs {
    string outArg0;
}

struct EVaultLiquidate$TotalAssetsFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$TotalBorrowsFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$TotalBorrowsExactFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$TotalSupplyFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$TransferFunctionInputs {
    address to;
    uint256 amount;
}

struct EVaultLiquidate$TransferFunctionOutputs {
    bool outArg0;
}

struct EVaultLiquidate$TransferFromFunctionInputs {
    address from;
    address to;
    uint256 amount;
}

struct EVaultLiquidate$TransferFromFunctionOutputs {
    bool outArg0;
}

struct EVaultLiquidate$TransferFromMaxFunctionInputs {
    address from;
    address to;
}

struct EVaultLiquidate$TransferFromMaxFunctionOutputs {
    bool outArg0;
}

struct EVaultLiquidate$UnitOfAccountFunctionOutputs {
    address outArg0;
}

struct EVaultLiquidate$WithdrawFunctionInputs {
    uint256 amount;
    address receiver;
    address owner;
}

struct EVaultLiquidate$WithdrawFunctionOutputs {
    uint256 outArg0;
}

struct EVaultLiquidate$LiquidateEventParams {
    address liquidator;
    address violator;
    address collateral;
    uint256 repayAssets;
    uint256 yieldBalance;
}

abstract contract EVaultLiquidate$OnLiquidateEvent {
    function onLiquidateEvent(EventContext memory ctx, EVaultLiquidate$LiquidateEventParams memory inputs) virtual external;

    function triggerOnLiquidateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes32(0x8246cc71ab01533b5bebc672a636df812f10637ad720797319d5741d5ebb3962),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateEvent.selector
        });
    }
}

abstract contract EVaultLiquidate$OnEvcFunction {
    function onEvcFunction(FunctionContext memory ctx, EVaultLiquidate$EvcFunctionOutputs memory outputs) virtual external;

    function triggerOnEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEvcFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreEvcFunction {
    function preEvcFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEvcFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnLtvBorrowFunction {
    function onLtvBorrowFunction(FunctionContext memory ctx, EVaultLiquidate$LtvBorrowFunctionInputs memory inputs, EVaultLiquidate$LtvBorrowFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xbf58094d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvBorrowFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreLtvBorrowFunction {
    function preLtvBorrowFunction(PreFunctionContext memory ctx, EVaultLiquidate$LtvBorrowFunctionInputs memory inputs) virtual external;

    function triggerPreLtvBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xbf58094d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvBorrowFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnLtvFullFunction {
    function onLtvFullFunction(FunctionContext memory ctx, EVaultLiquidate$LtvFullFunctionInputs memory inputs, EVaultLiquidate$LtvFullFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x33708d0c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvFullFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreLtvFullFunction {
    function preLtvFullFunction(PreFunctionContext memory ctx, EVaultLiquidate$LtvFullFunctionInputs memory inputs) virtual external;

    function triggerPreLtvFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x33708d0c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvFullFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnLtvLiquidationFunction {
    function onLtvLiquidationFunction(FunctionContext memory ctx, EVaultLiquidate$LtvLiquidationFunctionInputs memory inputs, EVaultLiquidate$LtvLiquidationFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xaf5aaeeb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvLiquidationFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreLtvLiquidationFunction {
    function preLtvLiquidationFunction(PreFunctionContext memory ctx, EVaultLiquidate$LtvLiquidationFunctionInputs memory inputs) virtual external;

    function triggerPreLtvLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xaf5aaeeb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvLiquidationFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnLtvListFunction {
    function onLtvListFunction(FunctionContext memory ctx, EVaultLiquidate$LtvListFunctionOutputs memory outputs) virtual external;

    function triggerOnLtvListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x6a16ef84),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLtvListFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreLtvListFunction {
    function preLtvListFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLtvListFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x6a16ef84),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLtvListFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnModuleBalanceForwarderFunction {
    function onModuleBalanceForwarderFunction(FunctionContext memory ctx, EVaultLiquidate$ModuleBalanceForwarderFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x883e3875),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreModuleBalanceForwarderFunction {
    function preModuleBalanceForwarderFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x883e3875),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnModuleBorrowingFunction {
    function onModuleBorrowingFunction(FunctionContext memory ctx, EVaultLiquidate$ModuleBorrowingFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleBorrowingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x14c054bc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleBorrowingFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreModuleBorrowingFunction {
    function preModuleBorrowingFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleBorrowingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x14c054bc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleBorrowingFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnModuleGovernanceFunction {
    function onModuleGovernanceFunction(FunctionContext memory ctx, EVaultLiquidate$ModuleGovernanceFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleGovernanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb4cd541b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleGovernanceFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreModuleGovernanceFunction {
    function preModuleGovernanceFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleGovernanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb4cd541b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleGovernanceFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnModuleInitializeFunction {
    function onModuleInitializeFunction(FunctionContext memory ctx, EVaultLiquidate$ModuleInitializeFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xad80ad0b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleInitializeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreModuleInitializeFunction {
    function preModuleInitializeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xad80ad0b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleInitializeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnModuleLiquidationFunction {
    function onModuleLiquidationFunction(FunctionContext memory ctx, EVaultLiquidate$ModuleLiquidationFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x42895567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleLiquidationFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreModuleLiquidationFunction {
    function preModuleLiquidationFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x42895567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleLiquidationFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnModuleRiskmanagerFunction {
    function onModuleRiskmanagerFunction(FunctionContext memory ctx, EVaultLiquidate$ModuleRiskmanagerFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleRiskmanagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x7d5f2e4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleRiskmanagerFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreModuleRiskmanagerFunction {
    function preModuleRiskmanagerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleRiskmanagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x7d5f2e4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleRiskmanagerFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnModuleTokenFunction {
    function onModuleTokenFunction(FunctionContext memory ctx, EVaultLiquidate$ModuleTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x5fa23055),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleTokenFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreModuleTokenFunction {
    function preModuleTokenFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x5fa23055),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleTokenFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnModuleVaultFunction {
    function onModuleVaultFunction(FunctionContext memory ctx, EVaultLiquidate$ModuleVaultFunctionOutputs memory outputs) virtual external;

    function triggerOnModuleVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xe2f206e5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModuleVaultFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreModuleVaultFunction {
    function preModuleVaultFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreModuleVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xe2f206e5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModuleVaultFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnAccountLiquidityFunction {
    function onAccountLiquidityFunction(FunctionContext memory ctx, EVaultLiquidate$AccountLiquidityFunctionInputs memory inputs, EVaultLiquidate$AccountLiquidityFunctionOutputs memory outputs) virtual external;

    function triggerOnAccountLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa824bf67),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccountLiquidityFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreAccountLiquidityFunction {
    function preAccountLiquidityFunction(PreFunctionContext memory ctx, EVaultLiquidate$AccountLiquidityFunctionInputs memory inputs) virtual external;

    function triggerPreAccountLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa824bf67),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccountLiquidityFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnAccountLiquidityFullFunction {
    function onAccountLiquidityFullFunction(FunctionContext memory ctx, EVaultLiquidate$AccountLiquidityFullFunctionInputs memory inputs, EVaultLiquidate$AccountLiquidityFullFunctionOutputs memory outputs) virtual external;

    function triggerOnAccountLiquidityFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc7b0e3a3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccountLiquidityFullFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreAccountLiquidityFullFunction {
    function preAccountLiquidityFullFunction(PreFunctionContext memory ctx, EVaultLiquidate$AccountLiquidityFullFunctionInputs memory inputs) virtual external;

    function triggerPreAccountLiquidityFullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc7b0e3a3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccountLiquidityFullFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnAccumulatedFeesFunction {
    function onAccumulatedFeesFunction(FunctionContext memory ctx, EVaultLiquidate$AccumulatedFeesFunctionOutputs memory outputs) virtual external;

    function triggerOnAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x587f5ed7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccumulatedFeesFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreAccumulatedFeesFunction {
    function preAccumulatedFeesFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x587f5ed7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccumulatedFeesFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnAccumulatedFeesAssetsFunction {
    function onAccumulatedFeesAssetsFunction(FunctionContext memory ctx, EVaultLiquidate$AccumulatedFeesAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnAccumulatedFeesAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xf6e50f58),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccumulatedFeesAssetsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreAccumulatedFeesAssetsFunction {
    function preAccumulatedFeesAssetsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAccumulatedFeesAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xf6e50f58),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccumulatedFeesAssetsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnAllowanceFunction {
    function onAllowanceFunction(FunctionContext memory ctx, EVaultLiquidate$AllowanceFunctionInputs memory inputs, EVaultLiquidate$AllowanceFunctionOutputs memory outputs) virtual external;

    function triggerOnAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAllowanceFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreAllowanceFunction {
    function preAllowanceFunction(PreFunctionContext memory ctx, EVaultLiquidate$AllowanceFunctionInputs memory inputs) virtual external;

    function triggerPreAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAllowanceFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnApproveFunction {
    function onApproveFunction(FunctionContext memory ctx, EVaultLiquidate$ApproveFunctionInputs memory inputs, EVaultLiquidate$ApproveFunctionOutputs memory outputs) virtual external;

    function triggerOnApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApproveFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreApproveFunction {
    function preApproveFunction(PreFunctionContext memory ctx, EVaultLiquidate$ApproveFunctionInputs memory inputs) virtual external;

    function triggerPreApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preApproveFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnAssetFunction {
    function onAssetFunction(FunctionContext memory ctx, EVaultLiquidate$AssetFunctionOutputs memory outputs) virtual external;

    function triggerOnAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x38d52e0f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAssetFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreAssetFunction {
    function preAssetFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAssetFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x38d52e0f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAssetFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnBalanceForwarderEnabledFunction {
    function onBalanceForwarderEnabledFunction(FunctionContext memory ctx, EVaultLiquidate$BalanceForwarderEnabledFunctionInputs memory inputs, EVaultLiquidate$BalanceForwarderEnabledFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceForwarderEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xe15c82ec),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceForwarderEnabledFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreBalanceForwarderEnabledFunction {
    function preBalanceForwarderEnabledFunction(PreFunctionContext memory ctx, EVaultLiquidate$BalanceForwarderEnabledFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceForwarderEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xe15c82ec),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceForwarderEnabledFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnBalanceOfFunction {
    function onBalanceOfFunction(FunctionContext memory ctx, EVaultLiquidate$BalanceOfFunctionInputs memory inputs, EVaultLiquidate$BalanceOfFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceOfFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreBalanceOfFunction {
    function preBalanceOfFunction(PreFunctionContext memory ctx, EVaultLiquidate$BalanceOfFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceOfFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnBalanceTrackerAddressFunction {
    function onBalanceTrackerAddressFunction(FunctionContext memory ctx, EVaultLiquidate$BalanceTrackerAddressFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceTrackerAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xece6a7fa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceTrackerAddressFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreBalanceTrackerAddressFunction {
    function preBalanceTrackerAddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreBalanceTrackerAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xece6a7fa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceTrackerAddressFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnBorrowFunction {
    function onBorrowFunction(FunctionContext memory ctx, EVaultLiquidate$BorrowFunctionInputs memory inputs, EVaultLiquidate$BorrowFunctionOutputs memory outputs) virtual external;

    function triggerOnBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4b3fd148),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBorrowFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreBorrowFunction {
    function preBorrowFunction(PreFunctionContext memory ctx, EVaultLiquidate$BorrowFunctionInputs memory inputs) virtual external;

    function triggerPreBorrowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4b3fd148),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBorrowFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnCapsFunction {
    function onCapsFunction(FunctionContext memory ctx, EVaultLiquidate$CapsFunctionOutputs memory outputs) virtual external;

    function triggerOnCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x18e22d98),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCapsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreCapsFunction {
    function preCapsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x18e22d98),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCapsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnCashFunction {
    function onCashFunction(FunctionContext memory ctx, EVaultLiquidate$CashFunctionOutputs memory outputs) virtual external;

    function triggerOnCashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x961be391),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCashFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreCashFunction {
    function preCashFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x961be391),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCashFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnCheckAccountStatusFunction {
    function onCheckAccountStatusFunction(FunctionContext memory ctx, EVaultLiquidate$CheckAccountStatusFunctionInputs memory inputs, EVaultLiquidate$CheckAccountStatusFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckAccountStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb168c58f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckAccountStatusFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreCheckAccountStatusFunction {
    function preCheckAccountStatusFunction(PreFunctionContext memory ctx, EVaultLiquidate$CheckAccountStatusFunctionInputs memory inputs) virtual external;

    function triggerPreCheckAccountStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb168c58f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckAccountStatusFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnCheckLiquidationFunction {
    function onCheckLiquidationFunction(FunctionContext memory ctx, EVaultLiquidate$CheckLiquidationFunctionInputs memory inputs, EVaultLiquidate$CheckLiquidationFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x88aa6f12),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckLiquidationFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreCheckLiquidationFunction {
    function preCheckLiquidationFunction(PreFunctionContext memory ctx, EVaultLiquidate$CheckLiquidationFunctionInputs memory inputs) virtual external;

    function triggerPreCheckLiquidationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x88aa6f12),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckLiquidationFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnCheckVaultStatusFunction {
    function onCheckVaultStatusFunction(FunctionContext memory ctx, EVaultLiquidate$CheckVaultStatusFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckVaultStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4b3d1223),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckVaultStatusFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreCheckVaultStatusFunction {
    function preCheckVaultStatusFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCheckVaultStatusFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4b3d1223),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckVaultStatusFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnConfigFlagsFunction {
    function onConfigFlagsFunction(FunctionContext memory ctx, EVaultLiquidate$ConfigFlagsFunctionOutputs memory outputs) virtual external;

    function triggerOnConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x2b38a367),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConfigFlagsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreConfigFlagsFunction {
    function preConfigFlagsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x2b38a367),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConfigFlagsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnConvertFeesFunction {
    function onConvertFeesFunction(FunctionContext memory ctx) virtual external;

    function triggerOnConvertFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x2b5335c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertFeesFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreConvertFeesFunction {
    function preConvertFeesFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreConvertFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x2b5335c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertFeesFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnConvertToAssetsFunction {
    function onConvertToAssetsFunction(FunctionContext memory ctx, EVaultLiquidate$ConvertToAssetsFunctionInputs memory inputs, EVaultLiquidate$ConvertToAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnConvertToAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x07a2d13a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertToAssetsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreConvertToAssetsFunction {
    function preConvertToAssetsFunction(PreFunctionContext memory ctx, EVaultLiquidate$ConvertToAssetsFunctionInputs memory inputs) virtual external;

    function triggerPreConvertToAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x07a2d13a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertToAssetsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnConvertToSharesFunction {
    function onConvertToSharesFunction(FunctionContext memory ctx, EVaultLiquidate$ConvertToSharesFunctionInputs memory inputs, EVaultLiquidate$ConvertToSharesFunctionOutputs memory outputs) virtual external;

    function triggerOnConvertToSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc6e6f592),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onConvertToSharesFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreConvertToSharesFunction {
    function preConvertToSharesFunction(PreFunctionContext memory ctx, EVaultLiquidate$ConvertToSharesFunctionInputs memory inputs) virtual external;

    function triggerPreConvertToSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc6e6f592),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preConvertToSharesFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnCreatorFunction {
    function onCreatorFunction(FunctionContext memory ctx, EVaultLiquidate$CreatorFunctionOutputs memory outputs) virtual external;

    function triggerOnCreatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x02d05d3f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatorFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreCreatorFunction {
    function preCreatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCreatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x02d05d3f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreatorFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnDTokenFunction {
    function onDTokenFunction(FunctionContext memory ctx, EVaultLiquidate$DTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnDTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd9d7858a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDTokenFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreDTokenFunction {
    function preDTokenFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd9d7858a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDTokenFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnDebtOfFunction {
    function onDebtOfFunction(FunctionContext memory ctx, EVaultLiquidate$DebtOfFunctionInputs memory inputs, EVaultLiquidate$DebtOfFunctionOutputs memory outputs) virtual external;

    function triggerOnDebtOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd283e75f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDebtOfFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreDebtOfFunction {
    function preDebtOfFunction(PreFunctionContext memory ctx, EVaultLiquidate$DebtOfFunctionInputs memory inputs) virtual external;

    function triggerPreDebtOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd283e75f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDebtOfFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnDebtOfExactFunction {
    function onDebtOfExactFunction(FunctionContext memory ctx, EVaultLiquidate$DebtOfExactFunctionInputs memory inputs, EVaultLiquidate$DebtOfExactFunctionOutputs memory outputs) virtual external;

    function triggerOnDebtOfExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xab49b7f1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDebtOfExactFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreDebtOfExactFunction {
    function preDebtOfExactFunction(PreFunctionContext memory ctx, EVaultLiquidate$DebtOfExactFunctionInputs memory inputs) virtual external;

    function triggerPreDebtOfExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xab49b7f1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDebtOfExactFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnDecimalsFunction {
    function onDecimalsFunction(FunctionContext memory ctx, EVaultLiquidate$DecimalsFunctionOutputs memory outputs) virtual external;

    function triggerOnDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDecimalsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreDecimalsFunction {
    function preDecimalsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDecimalsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnDepositFunction {
    function onDepositFunction(FunctionContext memory ctx, EVaultLiquidate$DepositFunctionInputs memory inputs, EVaultLiquidate$DepositFunctionOutputs memory outputs) virtual external;

    function triggerOnDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x6e553f65),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreDepositFunction {
    function preDepositFunction(PreFunctionContext memory ctx, EVaultLiquidate$DepositFunctionInputs memory inputs) virtual external;

    function triggerPreDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x6e553f65),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnDisableBalanceForwarderFunction {
    function onDisableBalanceForwarderFunction(FunctionContext memory ctx) virtual external;

    function triggerOnDisableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x41233a98),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDisableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreDisableBalanceForwarderFunction {
    function preDisableBalanceForwarderFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDisableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x41233a98),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDisableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnDisableControllerFunction {
    function onDisableControllerFunction(FunctionContext memory ctx) virtual external;

    function triggerOnDisableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x869e50c7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDisableControllerFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreDisableControllerFunction {
    function preDisableControllerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDisableControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x869e50c7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDisableControllerFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnEnableBalanceForwarderFunction {
    function onEnableBalanceForwarderFunction(FunctionContext memory ctx) virtual external;

    function triggerOnEnableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x64b1cdd6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEnableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreEnableBalanceForwarderFunction {
    function preEnableBalanceForwarderFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEnableBalanceForwarderFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x64b1cdd6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEnableBalanceForwarderFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnFeeReceiverFunction {
    function onFeeReceiverFunction(FunctionContext memory ctx, EVaultLiquidate$FeeReceiverFunctionOutputs memory outputs) virtual external;

    function triggerOnFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb3f00674),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFeeReceiverFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreFeeReceiverFunction {
    function preFeeReceiverFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb3f00674),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFeeReceiverFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnFlashLoanFunction {
    function onFlashLoanFunction(FunctionContext memory ctx, EVaultLiquidate$FlashLoanFunctionInputs memory inputs) virtual external;

    function triggerOnFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x5296a431),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFlashLoanFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreFlashLoanFunction {
    function preFlashLoanFunction(PreFunctionContext memory ctx, EVaultLiquidate$FlashLoanFunctionInputs memory inputs) virtual external;

    function triggerPreFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x5296a431),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFlashLoanFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnGovernorAdminFunction {
    function onGovernorAdminFunction(FunctionContext memory ctx, EVaultLiquidate$GovernorAdminFunctionOutputs memory outputs) virtual external;

    function triggerOnGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x6ce98c29),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGovernorAdminFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreGovernorAdminFunction {
    function preGovernorAdminFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x6ce98c29),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGovernorAdminFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnHookConfigFunction {
    function onHookConfigFunction(FunctionContext memory ctx, EVaultLiquidate$HookConfigFunctionOutputs memory outputs) virtual external;

    function triggerOnHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xcf349b7d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onHookConfigFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreHookConfigFunction {
    function preHookConfigFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xcf349b7d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preHookConfigFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, EVaultLiquidate$InitializeFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc4d66de8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, EVaultLiquidate$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc4d66de8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnInterestAccumulatorFunction {
    function onInterestAccumulatorFunction(FunctionContext memory ctx, EVaultLiquidate$InterestAccumulatorFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestAccumulatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x087a6007),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestAccumulatorFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreInterestAccumulatorFunction {
    function preInterestAccumulatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestAccumulatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x087a6007),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestAccumulatorFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnInterestFeeFunction {
    function onInterestFeeFunction(FunctionContext memory ctx, EVaultLiquidate$InterestFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa75df498),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestFeeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreInterestFeeFunction {
    function preInterestFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa75df498),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestFeeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnInterestRateFunction {
    function onInterestRateFunction(FunctionContext memory ctx, EVaultLiquidate$InterestRateFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x7c3a00fd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestRateFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreInterestRateFunction {
    function preInterestRateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x7c3a00fd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestRateFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnInterestRateModelFunction {
    function onInterestRateModelFunction(FunctionContext memory ctx, EVaultLiquidate$InterestRateModelFunctionOutputs memory outputs) virtual external;

    function triggerOnInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xf3fdb15a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInterestRateModelFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreInterestRateModelFunction {
    function preInterestRateModelFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xf3fdb15a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInterestRateModelFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnLiquidateFunction {
    function onLiquidateFunction(FunctionContext memory ctx, EVaultLiquidate$LiquidateFunctionInputs memory inputs) virtual external;

    function triggerOnLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc1342574),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreLiquidateFunction {
    function preLiquidateFunction(PreFunctionContext memory ctx, EVaultLiquidate$LiquidateFunctionInputs memory inputs) virtual external;

    function triggerPreLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc1342574),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLiquidateFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnLiquidationCoolOffTimeFunction {
    function onLiquidationCoolOffTimeFunction(FunctionContext memory ctx, EVaultLiquidate$LiquidationCoolOffTimeFunctionOutputs memory outputs) virtual external;

    function triggerOnLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4abdb959),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreLiquidationCoolOffTimeFunction {
    function preLiquidationCoolOffTimeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4abdb959),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnMaxDepositFunction {
    function onMaxDepositFunction(FunctionContext memory ctx, EVaultLiquidate$MaxDepositFunctionInputs memory inputs, EVaultLiquidate$MaxDepositFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x402d267d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxDepositFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreMaxDepositFunction {
    function preMaxDepositFunction(PreFunctionContext memory ctx, EVaultLiquidate$MaxDepositFunctionInputs memory inputs) virtual external;

    function triggerPreMaxDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x402d267d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxDepositFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnMaxLiquidationDiscountFunction {
    function onMaxLiquidationDiscountFunction(FunctionContext memory ctx, EVaultLiquidate$MaxLiquidationDiscountFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4f7e43df),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreMaxLiquidationDiscountFunction {
    function preMaxLiquidationDiscountFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4f7e43df),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnMaxMintFunction {
    function onMaxMintFunction(FunctionContext memory ctx, EVaultLiquidate$MaxMintFunctionInputs memory inputs, EVaultLiquidate$MaxMintFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc63d75b6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxMintFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreMaxMintFunction {
    function preMaxMintFunction(PreFunctionContext memory ctx, EVaultLiquidate$MaxMintFunctionInputs memory inputs) virtual external;

    function triggerPreMaxMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc63d75b6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxMintFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnMaxRedeemFunction {
    function onMaxRedeemFunction(FunctionContext memory ctx, EVaultLiquidate$MaxRedeemFunctionInputs memory inputs, EVaultLiquidate$MaxRedeemFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd905777e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxRedeemFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreMaxRedeemFunction {
    function preMaxRedeemFunction(PreFunctionContext memory ctx, EVaultLiquidate$MaxRedeemFunctionInputs memory inputs) virtual external;

    function triggerPreMaxRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd905777e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxRedeemFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnMaxWithdrawFunction {
    function onMaxWithdrawFunction(FunctionContext memory ctx, EVaultLiquidate$MaxWithdrawFunctionInputs memory inputs, EVaultLiquidate$MaxWithdrawFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xce96cb77),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxWithdrawFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreMaxWithdrawFunction {
    function preMaxWithdrawFunction(PreFunctionContext memory ctx, EVaultLiquidate$MaxWithdrawFunctionInputs memory inputs) virtual external;

    function triggerPreMaxWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xce96cb77),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxWithdrawFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnMintFunction {
    function onMintFunction(FunctionContext memory ctx, EVaultLiquidate$MintFunctionInputs memory inputs, EVaultLiquidate$MintFunctionOutputs memory outputs) virtual external;

    function triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x94bf804d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMintFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreMintFunction {
    function preMintFunction(PreFunctionContext memory ctx, EVaultLiquidate$MintFunctionInputs memory inputs) virtual external;

    function triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x94bf804d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMintFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnNameFunction {
    function onNameFunction(FunctionContext memory ctx, EVaultLiquidate$NameFunctionOutputs memory outputs) virtual external;

    function triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNameFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreNameFunction {
    function preNameFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNameFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnOracleFunction {
    function onOracleFunction(FunctionContext memory ctx, EVaultLiquidate$OracleFunctionOutputs memory outputs) virtual external;

    function triggerOnOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x7dc0d1d0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOracleFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreOracleFunction {
    function preOracleFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x7dc0d1d0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOracleFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnPermit2AddressFunction {
    function onPermit2AddressFunction(FunctionContext memory ctx, EVaultLiquidate$Permit2AddressFunctionOutputs memory outputs) virtual external;

    function triggerOnPermit2AddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc5224983),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPermit2AddressFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PrePermit2AddressFunction {
    function prePermit2AddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePermit2AddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xc5224983),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePermit2AddressFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnPreviewDepositFunction {
    function onPreviewDepositFunction(FunctionContext memory ctx, EVaultLiquidate$PreviewDepositFunctionInputs memory inputs, EVaultLiquidate$PreviewDepositFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xef8b30f7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewDepositFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PrePreviewDepositFunction {
    function prePreviewDepositFunction(PreFunctionContext memory ctx, EVaultLiquidate$PreviewDepositFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xef8b30f7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewDepositFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnPreviewMintFunction {
    function onPreviewMintFunction(FunctionContext memory ctx, EVaultLiquidate$PreviewMintFunctionInputs memory inputs, EVaultLiquidate$PreviewMintFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb3d7f6b9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewMintFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PrePreviewMintFunction {
    function prePreviewMintFunction(PreFunctionContext memory ctx, EVaultLiquidate$PreviewMintFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb3d7f6b9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewMintFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnPreviewRedeemFunction {
    function onPreviewRedeemFunction(FunctionContext memory ctx, EVaultLiquidate$PreviewRedeemFunctionInputs memory inputs, EVaultLiquidate$PreviewRedeemFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4cdad506),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewRedeemFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PrePreviewRedeemFunction {
    function prePreviewRedeemFunction(PreFunctionContext memory ctx, EVaultLiquidate$PreviewRedeemFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4cdad506),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewRedeemFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnPreviewWithdrawFunction {
    function onPreviewWithdrawFunction(FunctionContext memory ctx, EVaultLiquidate$PreviewWithdrawFunctionInputs memory inputs, EVaultLiquidate$PreviewWithdrawFunctionOutputs memory outputs) virtual external;

    function triggerOnPreviewWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x0a28a477),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPreviewWithdrawFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PrePreviewWithdrawFunction {
    function prePreviewWithdrawFunction(PreFunctionContext memory ctx, EVaultLiquidate$PreviewWithdrawFunctionInputs memory inputs) virtual external;

    function triggerPrePreviewWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x0a28a477),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePreviewWithdrawFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnProtocolConfigAddressFunction {
    function onProtocolConfigAddressFunction(FunctionContext memory ctx, EVaultLiquidate$ProtocolConfigAddressFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolConfigAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x539bd5bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolConfigAddressFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreProtocolConfigAddressFunction {
    function preProtocolConfigAddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolConfigAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x539bd5bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolConfigAddressFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnProtocolFeeReceiverFunction {
    function onProtocolFeeReceiverFunction(FunctionContext memory ctx, EVaultLiquidate$ProtocolFeeReceiverFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x39a51be5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeeReceiverFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreProtocolFeeReceiverFunction {
    function preProtocolFeeReceiverFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x39a51be5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolFeeReceiverFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnProtocolFeeShareFunction {
    function onProtocolFeeShareFunction(FunctionContext memory ctx, EVaultLiquidate$ProtocolFeeShareFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolFeeShareFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x960b26a2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeeShareFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreProtocolFeeShareFunction {
    function preProtocolFeeShareFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolFeeShareFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x960b26a2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolFeeShareFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnPullDebtFunction {
    function onPullDebtFunction(FunctionContext memory ctx, EVaultLiquidate$PullDebtFunctionInputs memory inputs) virtual external;

    function triggerOnPullDebtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xaebde56b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPullDebtFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PrePullDebtFunction {
    function prePullDebtFunction(PreFunctionContext memory ctx, EVaultLiquidate$PullDebtFunctionInputs memory inputs) virtual external;

    function triggerPrePullDebtFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xaebde56b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePullDebtFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnRedeemFunction {
    function onRedeemFunction(FunctionContext memory ctx, EVaultLiquidate$RedeemFunctionInputs memory inputs, EVaultLiquidate$RedeemFunctionOutputs memory outputs) virtual external;

    function triggerOnRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xba087652),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRedeemFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreRedeemFunction {
    function preRedeemFunction(PreFunctionContext memory ctx, EVaultLiquidate$RedeemFunctionInputs memory inputs) virtual external;

    function triggerPreRedeemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xba087652),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRedeemFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnRepayFunction {
    function onRepayFunction(FunctionContext memory ctx, EVaultLiquidate$RepayFunctionInputs memory inputs, EVaultLiquidate$RepayFunctionOutputs memory outputs) virtual external;

    function triggerOnRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xacb70815),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreRepayFunction {
    function preRepayFunction(PreFunctionContext memory ctx, EVaultLiquidate$RepayFunctionInputs memory inputs) virtual external;

    function triggerPreRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xacb70815),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRepayFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnRepayWithSharesFunction {
    function onRepayWithSharesFunction(FunctionContext memory ctx, EVaultLiquidate$RepayWithSharesFunctionInputs memory inputs, EVaultLiquidate$RepayWithSharesFunctionOutputs memory outputs) virtual external;

    function triggerOnRepayWithSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa9c8eb7e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayWithSharesFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreRepayWithSharesFunction {
    function preRepayWithSharesFunction(PreFunctionContext memory ctx, EVaultLiquidate$RepayWithSharesFunctionInputs memory inputs) virtual external;

    function triggerPreRepayWithSharesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa9c8eb7e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRepayWithSharesFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetCapsFunction {
    function onSetCapsFunction(FunctionContext memory ctx, EVaultLiquidate$SetCapsFunctionInputs memory inputs) virtual external;

    function triggerOnSetCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd87f780f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetCapsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetCapsFunction {
    function preSetCapsFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetCapsFunctionInputs memory inputs) virtual external;

    function triggerPreSetCapsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd87f780f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetCapsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetConfigFlagsFunction {
    function onSetConfigFlagsFunction(FunctionContext memory ctx, EVaultLiquidate$SetConfigFlagsFunctionInputs memory inputs) virtual external;

    function triggerOnSetConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xada3d56f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetConfigFlagsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetConfigFlagsFunction {
    function preSetConfigFlagsFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetConfigFlagsFunctionInputs memory inputs) virtual external;

    function triggerPreSetConfigFlagsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xada3d56f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetConfigFlagsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetFeeReceiverFunction {
    function onSetFeeReceiverFunction(FunctionContext memory ctx, EVaultLiquidate$SetFeeReceiverFunctionInputs memory inputs) virtual external;

    function triggerOnSetFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xefdcd974),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetFeeReceiverFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetFeeReceiverFunction {
    function preSetFeeReceiverFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetFeeReceiverFunctionInputs memory inputs) virtual external;

    function triggerPreSetFeeReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xefdcd974),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetFeeReceiverFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetGovernorAdminFunction {
    function onSetGovernorAdminFunction(FunctionContext memory ctx, EVaultLiquidate$SetGovernorAdminFunctionInputs memory inputs) virtual external;

    function triggerOnSetGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x82ebd674),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetGovernorAdminFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetGovernorAdminFunction {
    function preSetGovernorAdminFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetGovernorAdminFunctionInputs memory inputs) virtual external;

    function triggerPreSetGovernorAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x82ebd674),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetGovernorAdminFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetHookConfigFunction {
    function onSetHookConfigFunction(FunctionContext memory ctx, EVaultLiquidate$SetHookConfigFunctionInputs memory inputs) virtual external;

    function triggerOnSetHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd1a3a308),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetHookConfigFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetHookConfigFunction {
    function preSetHookConfigFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetHookConfigFunctionInputs memory inputs) virtual external;

    function triggerPreSetHookConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xd1a3a308),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetHookConfigFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetInterestFeeFunction {
    function onSetInterestFeeFunction(FunctionContext memory ctx, EVaultLiquidate$SetInterestFeeFunctionInputs memory inputs) virtual external;

    function triggerOnSetInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x60cb90ef),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetInterestFeeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetInterestFeeFunction {
    function preSetInterestFeeFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetInterestFeeFunctionInputs memory inputs) virtual external;

    function triggerPreSetInterestFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x60cb90ef),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetInterestFeeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetInterestRateModelFunction {
    function onSetInterestRateModelFunction(FunctionContext memory ctx, EVaultLiquidate$SetInterestRateModelFunctionInputs memory inputs) virtual external;

    function triggerOnSetInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x8bcd4016),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetInterestRateModelFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetInterestRateModelFunction {
    function preSetInterestRateModelFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetInterestRateModelFunctionInputs memory inputs) virtual external;

    function triggerPreSetInterestRateModelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x8bcd4016),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetInterestRateModelFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetLtvFunction {
    function onSetLtvFunction(FunctionContext memory ctx, EVaultLiquidate$SetLtvFunctionInputs memory inputs) virtual external;

    function triggerOnSetLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4bca3d5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetLtvFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetLtvFunction {
    function preSetLtvFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetLtvFunctionInputs memory inputs) virtual external;

    function triggerPreSetLtvFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x4bca3d5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetLtvFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetLiquidationCoolOffTimeFunction {
    function onSetLiquidationCoolOffTimeFunction(FunctionContext memory ctx, EVaultLiquidate$SetLiquidationCoolOffTimeFunctionInputs memory inputs) virtual external;

    function triggerOnSetLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xaf06d3cf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetLiquidationCoolOffTimeFunction {
    function preSetLiquidationCoolOffTimeFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetLiquidationCoolOffTimeFunctionInputs memory inputs) virtual external;

    function triggerPreSetLiquidationCoolOffTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xaf06d3cf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetLiquidationCoolOffTimeFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSetMaxLiquidationDiscountFunction {
    function onSetMaxLiquidationDiscountFunction(FunctionContext memory ctx, EVaultLiquidate$SetMaxLiquidationDiscountFunctionInputs memory inputs) virtual external;

    function triggerOnSetMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb4113ba7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSetMaxLiquidationDiscountFunction {
    function preSetMaxLiquidationDiscountFunction(PreFunctionContext memory ctx, EVaultLiquidate$SetMaxLiquidationDiscountFunctionInputs memory inputs) virtual external;

    function triggerPreSetMaxLiquidationDiscountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb4113ba7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetMaxLiquidationDiscountFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSkimFunction {
    function onSkimFunction(FunctionContext memory ctx, EVaultLiquidate$SkimFunctionInputs memory inputs, EVaultLiquidate$SkimFunctionOutputs memory outputs) virtual external;

    function triggerOnSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x8d56c639),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSkimFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSkimFunction {
    function preSkimFunction(PreFunctionContext memory ctx, EVaultLiquidate$SkimFunctionInputs memory inputs) virtual external;

    function triggerPreSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x8d56c639),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSkimFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnSymbolFunction {
    function onSymbolFunction(FunctionContext memory ctx, EVaultLiquidate$SymbolFunctionOutputs memory outputs) virtual external;

    function triggerOnSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSymbolFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreSymbolFunction {
    function preSymbolFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSymbolFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnTotalAssetsFunction {
    function onTotalAssetsFunction(FunctionContext memory ctx, EVaultLiquidate$TotalAssetsFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x01e1d114),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalAssetsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreTotalAssetsFunction {
    function preTotalAssetsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x01e1d114),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalAssetsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnTotalBorrowsFunction {
    function onTotalBorrowsFunction(FunctionContext memory ctx, EVaultLiquidate$TotalBorrowsFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalBorrowsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x47bd3718),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalBorrowsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreTotalBorrowsFunction {
    function preTotalBorrowsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalBorrowsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x47bd3718),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalBorrowsFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnTotalBorrowsExactFunction {
    function onTotalBorrowsExactFunction(FunctionContext memory ctx, EVaultLiquidate$TotalBorrowsExactFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalBorrowsExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xe388be7b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalBorrowsExactFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreTotalBorrowsExactFunction {
    function preTotalBorrowsExactFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalBorrowsExactFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xe388be7b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalBorrowsExactFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnTotalSupplyFunction {
    function onTotalSupplyFunction(FunctionContext memory ctx, EVaultLiquidate$TotalSupplyFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalSupplyFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreTotalSupplyFunction {
    function preTotalSupplyFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalSupplyFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnTouchFunction {
    function onTouchFunction(FunctionContext memory ctx) virtual external;

    function triggerOnTouchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa55526db),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTouchFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreTouchFunction {
    function preTouchFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTouchFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa55526db),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTouchFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnTransferFunction {
    function onTransferFunction(FunctionContext memory ctx, EVaultLiquidate$TransferFunctionInputs memory inputs, EVaultLiquidate$TransferFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreTransferFunction {
    function preTransferFunction(PreFunctionContext memory ctx, EVaultLiquidate$TransferFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnTransferFromFunction {
    function onTransferFromFunction(FunctionContext memory ctx, EVaultLiquidate$TransferFromFunctionInputs memory inputs, EVaultLiquidate$TransferFromFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFromFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreTransferFromFunction {
    function preTransferFromFunction(PreFunctionContext memory ctx, EVaultLiquidate$TransferFromFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFromFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnTransferFromMaxFunction {
    function onTransferFromMaxFunction(FunctionContext memory ctx, EVaultLiquidate$TransferFromMaxFunctionInputs memory inputs, EVaultLiquidate$TransferFromMaxFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFromMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xcbfdd7e1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFromMaxFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreTransferFromMaxFunction {
    function preTransferFromMaxFunction(PreFunctionContext memory ctx, EVaultLiquidate$TransferFromMaxFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFromMaxFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xcbfdd7e1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFromMaxFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnUnitOfAccountFunction {
    function onUnitOfAccountFunction(FunctionContext memory ctx, EVaultLiquidate$UnitOfAccountFunctionOutputs memory outputs) virtual external;

    function triggerOnUnitOfAccountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x3e833364),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUnitOfAccountFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreUnitOfAccountFunction {
    function preUnitOfAccountFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUnitOfAccountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x3e833364),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUnitOfAccountFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnViewDelegateFunction {
    function onViewDelegateFunction(FunctionContext memory ctx) virtual external;

    function triggerOnViewDelegateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x1fe8b953),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onViewDelegateFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreViewDelegateFunction {
    function preViewDelegateFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreViewDelegateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0x1fe8b953),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preViewDelegateFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$OnWithdrawFunction {
    function onWithdrawFunction(FunctionContext memory ctx, EVaultLiquidate$WithdrawFunctionInputs memory inputs, EVaultLiquidate$WithdrawFunctionOutputs memory outputs) virtual external;

    function triggerOnWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb460af94),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawFunction.selector
        });
    }
}

abstract contract EVaultLiquidate$PreWithdrawFunction {
    function preWithdrawFunction(PreFunctionContext memory ctx, EVaultLiquidate$WithdrawFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EVaultLiquidate",
            selector: bytes4(0xb460af94),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawFunction.selector
        });
    }
}


struct EVaultLiquidate$EmitAllEvents$Liquidate {
  address liquidator;
  address violator;
  address collateral;
  uint256 repayAssets;
  uint256 yieldBalance;
}

contract EVaultLiquidate$EmitAllEvents is
  EVaultLiquidate$OnLiquidateEvent
{
  event Liquidate(EVaultLiquidate$EmitAllEvents$Liquidate);

  function onLiquidateEvent(EventContext memory ctx, EVaultLiquidate$LiquidateEventParams memory inputs) virtual external override {
    emit Liquidate(EVaultLiquidate$EmitAllEvents$Liquidate(inputs.liquidator, inputs.violator, inputs.collateral, inputs.repayAssets, inputs.yieldBalance));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](1);
    triggers[0] = this.triggerOnLiquidateEvent();
    return triggers;
  }
}