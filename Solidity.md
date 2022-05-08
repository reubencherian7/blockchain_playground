**SOLIDITY**
   - A contract oriented programming language which runs on EVM on blockchain network
   - Unlike other programming languages the data structures are immutable allowing developers to write quality code
   - Once deployed the smart-contracts runs on many nodes and all the transactions are recorded on top of the stack
   - Use remix web IDE to code, compile, test and deploy the smart contracts

**COMPILE PROCESS**
   - When a SOL file gets compiled it creates two things 1) ABI (Application Binary Interface) 2) Byte Code to run on EVM
   - Remember only a byte code runs on the EVM like JVM gets the compiled byte code from java file
   - An ABI which is a JSON helps our smart contract to interact with external third party smart contracts and also within the system
   - A byte code also contains OPCODE decode from the bytecode

**INT TYPES**
   - not dynamically typed.
   - unit (unsigned integer)
   - No null or none there will be some value on declaring variable

**STATE VARIABLES**

```
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract stateVariable {
    <!-- with initial declaration -->
    uint public state=3000;
    <!-- Inside a constructor -->
    constructor() {
        state = 5000;
    }
    <!-- calling a function to set variable -->
    function setState() public {
        state = 6000;
    }
}

```

**LOCAL VARIABLES**
   - Local variables are variable called inside a function
   - state variable assignment is not possible inside a Pure function
   - Two returns --> function declaration return type and it should be __returns__ and not *return*, inside function return value
   - default string will be considered as state variable which will take space in the contracts we use string memory to use inside a function as local variable which is temporary
```
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract localVariable {
    uint public state;
    
    function placeOfLocalVars() pure public returns(uint){
        // state = 2000;
        // string memory nameOfEmployee = "Renj";
        uint salary = 3000;
        return salary;
    }
}

```

**PURE AND VIEW FUNCTIONS**
   - A view function can only read the state variable
   - A Pure function cannot read/write state variable

```
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract pureAndView {

    // state var
    uint age = 30;
    <!-- memory is a temporary variable will not take up space in the contract -->
    function getViewFunction() public view returns(string memory) {
        string memory person = "John";
        return person;
    }
    <!-- we need to return type as uint and declare sum to return a new variable -->
    function getPureFunction() public pure returns(uint sum) {
        uint number1 = 100;
        uint number2 = 3000;
        sum = number1 + number2;
        return sum;
    }
}

```

**GET AND SET METHODS**
   - Get method will return the state variable
   - Set method can modify the state variable

```
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract gettersAndSetters {
    string company = "Google";
    <!-- If we dont want the getter function to get , we can use the public keyword to access it outside -->
    // string public company= "Google"

    function getterFunction() view public returns(string memory) {
        return company;
    }
    function setterFunction() public {
        company = "Microsoft";
    }

}
```

**CONSTRUCTOR**
   - A constructor will be initialized only once on deploying the smart contract
   - After compiling we need to pass the argument to deploy

```
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract scConstructor {
    uint public personAge;

    constructor(uint age) {
        personAge = age;
    }
}
```

***INTEGERS AND TYPES**
   - Unsigned integers UINT (only positive integers) and INT -ve to +ve integers
   - uint8 will hold value upto 256 beyond that compiler will throw typerror
  
**ARRAYS**
   - Fixed array will be declared with fixed length `uint[5] public fixedArr = [10,20,30,40,50];`
       - Fixed array if not filled with values default will be 0
   - Dynamic array will be declared like this `   uint[] public dynamicArr;  `
       - Push and pop function examples given below
```
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract arraysInSol {
    // fixed array
    uint[5] public fixedArr = [10,20,30,40,50];
    
    function setFixedArrValue(uint index, uint val) public{
        fixedArr[index]=val;
    }

    function getLength() public view returns(uint){
        return fixedArr.length;
    }
    // dynamic array
    uint[] public dynamicArr;
    // This set function wont work we need to push the values to dynamic arr
    // function setDynamicArrValue(uint index, uint val) public{
    //     fixedArr[index]=val;
    // }
    function pushArr(uint value) public {
        dynamicArr.push(value);
    }
    function popArr() public {
        dynamicArr.pop();
    }
}
```

**BYTE SIZED ARRAYS**
  * Note 1 BYTE = 8bits, 1Hex = 4Bits
  * Fixed (bytes1,bytes2,bytes3...bytes32) or dynamic (bytes)
  * Bytes to hex representation below : 
  ` declared with bytes2 -> 16bit which is equal to 0x0000 (4 zeros * 4 => 16 bits)`
  ` bytes4 -> 32 bits -> 0x00000000 (8 zeros * 4 => 32 bits) `

**LOOPS AND CONDITIONS**
  - Do while, while, for loop
  - If condition examples below
```
    // SPDX-License-Identifier: MIT

    pragma solidity >=0.7.0 <0.9.0;

    contract learnLoops {

        uint[4] public myArray;
        uint public range;

        function runLoop() public {

            do {
            myArray[range] = range;
            range++;
            } while (range<myArray.length);
        }

        function runForLoop() public {
            for(uint i = range;range<myArray.length;i++) {
            myArray[range] = range;
            range++;
            }
        }

        uint public totalMarks = 1100;
        uint public passingMarks = 500;

        function checkCondition(uint obtainedMarks) public view returns(string memory) {
            string memory result;
            if (obtainedMarks > passingMarks) {
                return result = "You've passed the exam";
            } else {
                return result = "You're Failed! Meet your Father at home ^^";
            }
        }
    }


``` 

**BOOL DATATYPES**
  - It stores boolean value (bool)
```
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract boolDataTypes {
    bool public checker;

    function isBulb(uint heat) public returns(bool){
        if(heat > 100){
            checker = false;
            return checker;
        }else{
            checker = true;
            return checker;
        }
    }
}
```

**STRUCT DATA TYPE**
  - It is a datatype which has sub datatypes like int, string
  - it can be initialised in the constructor , also can be changed via function 

```
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

struct Employee {
    string name;
    string skills;
    int salary;
}

contract myContract {

    Employee public emp;

    constructor(string memory name, string memory skills, int salary) {
        emp.name = name;
        emp.skills = skills;
        emp.salary = salary;
    }

    function changeEmployeeData(string memory name, string memory skills, int salary) public {
        Employee memory empl = Employee({
            name: name,
            skills: skills,
            salary: salary
        });
        emp = empl;
    }
}
```

**ENUM TYPES**
  - To make integral constants human readable

```
contract CardDeck {
    enum Suit { Spades, Clubs, Diamonds, Hearts}
    enum Value { 
        Two, Three, Four, Five, Six, 
        Seven, Eight, Nine, Ten, 
        Jack, King, Queen, Ace 
    }
    struct Card {
        Suit suit;
        Value value;
    }
    
    Card public myCard;
    
    function pick_a_card(Suit _suit, Value _value) public returns (Suit, Value) {
        myCard.suit = _suit;
        myCard.value = _value;
        return (myCard.suit, myCard.value);
    }
}
```

**MAPPING TYPES**
  - To make the key value pairs like in a dicationary
  -  ` mapping(keyType => valueType)<visbility><name> `
```
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract mappingTypes {

    struct Employee {
        string name;
        string skills;
    }

    mapping(uint => string) public getData;
    mapping(uint => Employee) public getEmployeeData;
    function setter(uint key, string memory name) public {
        getData[key] = name;
    }
    function setter(uint key, string memory name, string memory skills) public {
        getEmployeeData[key] = Employee(name, skills);
    }

}
```

**Visibility**
  
| Visibility | Inside contract | outside contract | derived contract |
| ---------- | --------------- | ---------------- | ---------------- |
| Public     | Yes             | Yes              | Yes              |
| Private    | Yes             | No               | No               |
| Internal   | Yes             | No               | Yes              |
| External   | No              | No               | Yes              |

  - Find codes in github

Coding notes
  - payable is a function to receive some ethers and stored in contract balance ` function deposit() public payable {} ` 
  - Every smart contract account has unique address which holds 20 bytes value and has built in functions like transfer and balance 
``` 
function getBal() public view returns(uint) {
    return address(this).balance;
} 
```
  - For the address to which the ethers need to be transferred use the below code:
  ```
  // SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract learnPayable {

    address payable owner = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    function deposit() public payable {}

    function getBal() public view returns(uint) {
        return address(this).balance;
    }

    function sendEther() public {
        owner.transfer(2 ether);
    }
}
  ```