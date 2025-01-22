# Solidity Keywords and Definitions

## 1. Global Keywords
- `pragma` – Specifies compiler version or enables experimental features.
- `import` – Imports other Solidity files.
- `contract` – Defines a new contract.
- `library` – Defines a reusable library without storage.
- `interface` – Defines an interface with function declarations but no implementations.

## 2. Data Types
- `bool` – Boolean type (`true` or `false`).
- `uint` – Unsigned integer (e.g., `uint8`, `uint256`).
- `int` – Signed integer (e.g., `int8`, `int256`).
- `address` – Holds an Ethereum address (20 bytes).
- `bytes` – Dynamically sized byte array.
- `bytes1` to `bytes32` – Fixed-size byte arrays.
- `string` – UTF-8 encoded text.
- `mapping` – Key-value store (`mapping(keyType => valueType)`).
- `struct` – Custom data structure.
- `enum` – Enumeration type.

## 3. Functions and Modifiers
- `function` – Defines a function.
- `modifier` – Alters function behavior.
- `constructor` – Special function executed once at deployment.
- `receive` – Handles incoming Ether with empty calldata.
- `fallback` – Executes when receiving unknown data.

## 4. Function Visibility Modifiers
- `public` – Accessible from anywhere.
- `private` – Accessible only within the contract.
- `internal` – Accessible within the contract and derived contracts.
- `external` – Callable from other contracts but not internally.

## 5. Function State Modifiers
- `view` – Does not modify the state.
- `pure` – Neither reads nor modifies the state.
- `payable` – Allows receiving Ether.

## 6. Contract Interaction
- `new` – Creates a new contract instance.
- `delete` – Resets a variable to its default value.
- `this` – Refers to the current contract instance.
- `selfdestruct` – Destroys the contract and sends Ether to an address.

## 7. Control Structures
- `if`, `else` – Conditional statements.
- `for`, `while`, `do` – Loop constructs.
- `break` – Exits a loop.
- `continue` – Skips the current loop iteration.
- `return` – Exits a function with a value.
- `try`, `catch` – Handles external contract call failures.

## 8. Storage and Memory
- `storage` – Permanent storage.
- `memory` – Temporary storage during function execution.
- `calldata` – Non-modifiable function argument storage.

## 9. Error Handling
- `require` – Checks a condition and reverts if false.
- `assert` – Used for internal error detection.
- `revert` – Aborts execution and reverts changes.

## 10. Events and Logging
- `event` – Declares an event for logging.
- `emit` – Triggers an event.

## 11. Inheritance and Contract Relationships
- `is` – Indicates contract inheritance.
- `super` – Calls a function from a parent contract.
- `abstract` – Defines an abstract contract.
- `override` – Overrides a function in a derived contract.
- `virtual` – Allows a function to be overridden.

## 12. Other Keywords
- `constant` – Declares an immutable variable.
- `immutable` – Variable value is set at deployment and read-only afterward.
- `anonymous` – Used with `event` to remove indexed event signature from logs.
- `indexed` – Marks event parameters as indexable.
- `assembly` – Enables inline Yul (low-level assembly language).
