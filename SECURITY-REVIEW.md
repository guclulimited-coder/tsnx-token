# TSNX contract review notes

Review scope: the verified TusneldaX contract at `0x66a9BaCd6D560383dA967c274999c06550cda07e` on BNB Smart Chain.

## Observed design

- Inherits OpenZeppelin ERC20.
- Sets `MAX_SUPPLY` to 100,000,000 TSNX with 18 decimals.
- Mints the entire fixed supply once to the deployer in the constructor.
- Exposes only the standard ERC-20 functions plus `MAX_SUPPLY`.
- Has no externally callable mint, burn, pause, blacklist, tax/fee, owner/admin, or upgrade function in the verified ABI.

## Operational risks outside the token contract

- The project reserve is concentrated in project-controlled wallets and has no deployed vesting contract.
- DEX liquidity is limited and the market price can move significantly with small trades.
- Liquidity custody, LP-token control, treasury key security, and any future game or payment integrations require separate review.

## Status

This is a technical transparency note prepared from public on-chain information. It is not an independent third-party audit, legal opinion, certification, or guarantee of security.
