# Assignment 2
## There are a total of 2 tasks in this assignment.<br >
- The first is in one contract called ```Part1.sol```
- The second and third tasks are in a separate contract called ```Part2.sol```
## Tasks
### Task1
- A contract that implements the storage of multiple instances of the struct ```Instructors```
- Account address for the instructors used as the primary key for mapping
- Only the owner of the contract is able to add instructors and get all of the instructor addresses and total instructors
- In case someone other than the owner tries to get the instructor addresses, the ```selfdestruct()``` method is called<br >
### Task2
- A function that counts the number of vowels a user inputs. If any uppercase vowel is input, the contract is paused. Only the lowercase vowels are allowed
to increment the vowel count which is resultantly returned from the function
- A function that calculates the electricity bill against the total number of electrical units consumed. Nocharge for the first 100 units, $5/unit for the next 100 units and $10/unit after the first 200 units.
