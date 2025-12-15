# MODULE 1

1. Foundry - So basicaly foundry is solidity testing framework(develop,test and deploy smart contracts)
   like in react we use .jsx(javascript+html) for large projects,in web3 we use foundry .sol(for large projects).

Creation - forge init projectName(like in react we use command - vite craete@latest projectName)

Folder Info - src/- write the code for contracts(in .sol),
script/ - write code to deploy the contract(s.sol).
test/ - write the code to test the contract(t.sol).
foundry.toml - same as package.json
lib/ - dependecies like npm package.

2. Commands->
   forge inti - to create project
   forge build - to compile the project,creates /out folder(artifacts like API,bytecode),/cache folder.
   forge test - to test the contract runs every test file.

---

# MODULE 2

1. Anvil - Helps to test contract without ETH.Runs local blockchain on your computer.
   helps in deployment.
   deployment command - forge script script/contractName --rpc-url http://(get from anvil) --private-key
   %(from anvil) --broadcast .
   --rpc-url - tells blockchain which blockchain to connect.
   --broadcast - without this when you deploy contract it's like dry run.

2. Cast - First we deploy the contract using anvil and then we contract address to read and write the contract.
   Also works without deploiyng contract.

3. Chisel REPL - Chisel REPL in Foundry works like Solidity Foundry tools, allowing interactive testing of hardware modules by providing inputs and observing outputs without writing full testbenches.
   Solidity Foundry → test contracts
   Chisel Foundry REPL → test circuits

---

# MODULE 3
