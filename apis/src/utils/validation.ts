import { types } from "@duneanalytics/sim-idx";

const Address = types.Address;
const Uint = types.Uint;

export interface ValidationResult<T> {
  success: boolean;
  value?: T;
  error?: string;
}

/**
 * Validate and parse an Ethereum address
 * @param addressParam - Address string (with or without 0x prefix)
 * @returns Validation result with parsed Address or error message
 */
export function validateAddress(addressParam: string): ValidationResult<types.Address> {
  if (!addressParam) {
    return {
      success: false,
      error: "Address is required"
    };
  }

  // Remove '0x' prefix if present
  const cleanAddress = addressParam.startsWith('0x')
    ? addressParam.slice(2)
    : addressParam;

  // Check if it's a valid hex string (only contains 0-9, a-f, A-F)
  if (!/^[0-9a-fA-F]+$/.test(cleanAddress)) {
    return {
      success: false,
      error: "Address must be a valid hex string"
    };
  }

  // Check if it's exactly 40 characters (20 bytes when converted)
  if (cleanAddress.length !== 40) {
    return {
      success: false,
      error: "Address must be exactly 20 bytes (40 hex characters)"
    };
  }

  return {
    success: true,
    value: Address.from(cleanAddress)
  };
}

export interface PaginationParams {
  limit: number;
  offset: number;
}

/**
 * Validate and parse pagination parameters
 * @param limitParam - Limit parameter string
 * @param offsetParam - Offset parameter string
 * @param maxLimit - Maximum allowed limit (default: 100)
 * @param defaultLimit - Default limit if not provided (default: 50)
 * @returns Validation result with pagination params or error message
 */
export function validatePagination(
  limitParam?: string,
  offsetParam?: string,
  maxLimit: number = 100,
  defaultLimit: number = 50
): ValidationResult<PaginationParams> {
  // Validate limit
  const limitStr = limitParam || defaultLimit.toString();
  const parsedLimit = parseInt(limitStr);

  if (isNaN(parsedLimit) || parsedLimit < 1) {
    return {
      success: false,
      error: "Invalid limit parameter. Must be a positive integer."
    };
  }

  const limit = Math.min(parsedLimit, maxLimit);

  // Validate offset
  const offsetStr = offsetParam || "0";
  const parsedOffset = parseInt(offsetStr);

  if (isNaN(parsedOffset) || parsedOffset < 0) {
    return {
      success: false,
      error: "Invalid offset parameter. Must be a non-negative integer."
    };
  }

  return {
    success: true,
    value: {
      limit,
      offset: parsedOffset
    }
  };
}

/**
 * Validate and parse a block number parameter
 * @param blockParam - Block number string
 * @returns Validation result with Uint block number or error message
 */
export function validateBlockNumber(blockParam: string): ValidationResult<types.Uint> {
  const blockNumberValue = parseInt(blockParam, 10);

  if (isNaN(blockNumberValue) || blockNumberValue < 0) {
    return {
      success: false,
      error: "Invalid block number parameter"
    };
  }

  return {
    success: true,
    value: new Uint(BigInt(blockNumberValue))
  };
}

/**
 * Validate and parse a timestamp parameter
 * @param timestampParam - Timestamp string
 * @returns Validation result with Uint timestamp or error message
 */
export function validateTimestamp(timestampParam: string): ValidationResult<types.Uint> {
  const timestampValue = parseInt(timestampParam, 10);

  if (isNaN(timestampValue) || timestampValue < 0) {
    return {
      success: false,
      error: "Invalid timestamp parameter"
    };
  }

  return {
    success: true,
    value: new Uint(BigInt(timestampValue))
  };
}
