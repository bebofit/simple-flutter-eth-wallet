# simpleWallet Flutter Decentralized App
SimpleWallet is a small Flutter Wallet dApp that allows users to transfer cryptocurrencies easily. The app is developed based on the Ethereum Virtual Machine (EVM) and supports the following networks:
- Ethereum Mainnet
- Goerli Test Net
- Sepolia Test Net

With SimpleWallet, you can securely manage your cryptocurrencies and make quick and efficient transactions on multiple Ethereum-based networks.

## Getting Started

### Prerequisites
Before you start, make sure you have the following prerequisites installed on your development machine:

- [Flutter](https://flutter.dev/docs/get-started/install): Make sure you have Flutter installed. You can check this by running `flutter --version` in your terminal.

### Installation
1. Get the dependencies:
   ```flutter pub get```
2. Create a .env file in the root directory of the app with the following content:
```
   ETHER_SCAN_API_KEY=Your_Ether_Scan_API_KEY
   SEPOLIA_API_KEY=Your_Alchemy_or_other_Provider_API_KEY
```

3. Run the app:
```flutter run```
