import { sql } from "drizzle-orm";
import { PgTable } from "drizzle-orm/pg-core";

/**
 * Generate a subquery to find the latest record per vault address
 * Used for finding the most recent snapshot/metric for each vault
 *
 * @param table - The Drizzle table reference
 * @param timestampField - Name of the timestamp field (e.g., 'block_timestamp')
 * @param vaultField - Name of the vault address field (default: 'vault_address')
 * @returns SQL fragment for the subquery
 */
export function latestByVaultSubquery(
  table: PgTable,
  timestampField: string,
  vaultField: string = 'vault_address'
) {
  return sql`
    SELECT ${sql.raw(vaultField)}, MAX(${sql.raw(timestampField)}) as max_timestamp
    FROM ${table}
    GROUP BY ${sql.raw(vaultField)}
  `;
}

/**
 * Generate a subquery to find the latest record per vault address by block number
 * Similar to latestByVaultSubquery but uses block_number instead of timestamp
 *
 * @param table - The Drizzle table reference
 * @param blockField - Name of the block number field (default: 'block_number')
 * @param vaultField - Name of the vault address field (default: 'vault_address')
 * @returns SQL fragment for the subquery
 */
export function latestByVaultBlockSubquery(
  table: PgTable,
  blockField: string = 'block_number',
  vaultField: string = 'vault_address'
) {
  return sql`
    SELECT ${sql.raw(vaultField)}, MAX(${sql.raw(blockField)}) as max_block_number
    FROM ${table}
    GROUP BY ${sql.raw(vaultField)}
  `;
}
