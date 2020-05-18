# Caesar Cipher

## Problem solving steps

1. ### User interface
  - Console application.
2. ### Inputs?
  - String to be ciphered.
  - Shift factor which determines the number of shifts to apply to each character.

3. ### Output?
  - Ciphered text as string.

4. ### What needs to happen to go from input to output?

  - #### Algorithm

    ```
    # Until the user doesn't want to cipher anymore
      # Get the string and shift factor from the user.
      # Split the string into individual characters.
      # Loop through each character.
        # If the character is a letter.
          # Convert the letter to its integer representation.
          # Subtract the base value from the letter depending.
          # Calculate the raw shifts by adding the shift factor to the letter to find the shifts from base value ('A' or 'a' or '0').
          # Find the remainder of diving the "raw shifts" and the range to find the "net shifts" from the base value.
          # Get the positive shift from the base value by adding the range to it and finding the remainder after dividing it by the range.
          # Add the base value back to the positive shifts to get the shifted letter in its decimal representation.
          # Convert the decimal representation to its string representation.
          # Add the letter to the list of shifted characters being returned.
        # If the character is not a letter.
          # Just add the plain character to the array of shifted letters
      # Convert the array of characters into a string.
      # Return the shifted string.
    ```
