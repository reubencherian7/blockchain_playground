import os
import json
from web3 import Web3, HTTPProvider
from web3.contract import ConciseContract


# compile your smart contract with truffle first
truffleFile = json.load(open('./build/contracts/greeter.json'))
abi = truffleFile['abi']
bytecode = truffleFile['bytecode']

# web3.py instance
w3 = Web3(HTTPProvider("https://ropsten.infura.io/v3/796e9cc4697944f9aa7f2ebed698ee67"))
print(w3.isConnected())
contract_address = Web3.toChecksumAddress("0xcB51b29C52Cf0E9acA5d70C6E8a0aB6BEF9d8E09")
key = os.environ['KEY']
acct = w3.eth.account.privateKeyToAccount(key)
account_address = acct.address

# Instantiate and deploy contract
contract = w3.eth.contract(abi=abi, bytecode=bytecode)
# Contract instance
contract_instance = w3.eth.contract(abi=abi, address=contract_address)
# Contract instance in concise mode
#contract_instance = w3.eth.contract(abi=abi, address=contract_address, ContractFactoryClass=ConciseContract)

tx = contract_instance.functions.greet("Hello all  my goody people").buildTransaction({'nonce': w3.eth.getTransactionCount(account_address)})
#Get tx receipt to get contract address
signed_tx = w3.eth.account.signTransaction(tx, key)
#tx_receipt = w3.eth.getTransactionReceipt(tx_hash)
hash= w3.eth.sendRawTransaction(signed_tx.rawTransaction)
print(hash.hex())