# Smart Contract Solidity

Solidity smart contracts playground/repository for learning, experimenting, and building Ethereum-compatible smart contracts.

## Tech Stack
- **Solidity** (Smart Contracts)
- (Optional) **Hardhat / Truffle / Foundry** – depending on your setup
- **Ethereum / EVM** compatible networks (Ganache, Sepolia, etc.)

## Repository Structure
> Update this section to match your folders/files.

Example:
```text
.
├── contracts/        # Solidity contracts
├── scripts/          # Deployment / interaction scripts
├── test/             # Tests
└── README.md
```

## Prerequisites
If you are using **Hardhat**:
- Node.js (LTS recommended)
- npm / yarn

If you are using **Foundry**:
- `foundryup` installed

## Setup (Hardhat example)
```bash
git clone https://github.com/lakshanchamidu/Smart-Contract-Solidity-.git
cd Smart-Contract-Solidity-
npm install
```

## Compile
```bash
npx hardhat compile
```

## Test
```bash
npx hardhat test
```

## Deploy (example)
> Add your network config in `hardhat.config.js` and set environment variables.

```bash
npx hardhat run scripts/deploy.js --network sepolia
```

## Environment Variables
Create a `.env` file (do **not** commit it):

```env
RPC_URL="https://..."
PRIVATE_KEY="your_private_key"
ETHERSCAN_API_KEY="..."
```

## Notes (සිංහලෙන්)
- මේ repo එක Solidity smart contracts practice කරන්න/implement කරන්න හදපු එකක්.
- `.env` එකේ private key වගේ දේවල් GitHub එකට push කරන්න එපා.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you’d like to change.

## License
Add a license if needed (MIT is common for sample contracts).
