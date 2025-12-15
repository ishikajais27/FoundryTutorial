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

1. Testing -> first import dependencies and contract files from src folder,
   setup functions(In Foundry, setUp() runs automatically before each test), and then test functions
   to run test folder files - forge test(run all test files in test folder)
   all test functions must be public or external only.
   to test specific file - forge test --match path
   verbosity - to get more detail of test file how it runse where it fails or pass(max 5 v)

assertEq - is a Foundry assertion(value 1,value 2) checks if value 1 == value 2 if not equals tehn function fails.

2. vm.expectRevert - If next function NOT fails, I will say you are wrong.(for require)

vm.expectRevert(...) - “Hey Foundry, the next function call must FAIL.” (function parameter- bytes("Insuffecient amount"))
bytes("Insuffecient amount") - “And when it fails, it must say: ‘Insuffecient amount’”
next function call - digibank.deposit{value: 0}(0); the contracts checks Is amount > 0 ?(require) - ans:NO
And it stops (this is called revert)
Foundry now checks 👀

Foundry asks:
Did it FAIL? Yes
Did it say "Insuffecient amount"? - Yes
Result- TEST PASSES

3. Test Coverage - How much of your code did your tests actually touch?
   Your contract has 10 lines of code

Tests use 7 lines
Tests do NOT use 3 lines
Coverage = 7 / 10
command to show coverage - forge coverage
