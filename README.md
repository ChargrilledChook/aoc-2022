# AOC 2022

My solutions to Aoc 2022 in Ruby. Goal is to use only vanilla Ruby and standard libraries.

## Tour

Some of my over-engineered helpers:

Download puzzle input and create a new class, test file, YAML entry to save solutions and add the dependency to `main.rb` 
with a single rake task:

```sh
# Bootstrap everything for day 1:
rake generate[1]
```

To download the puzzle input this way you'll need to hijack your own session and put it in the `.config.yml` file.

```yml
# .config.yml
session: 'session=<put your session here'

```
Find your own session cookie in the network/cookies tab under the session key.

Once the solution is complete, run `rake solve[day]` to save the solution to `solutions.yaml`.

```sh
# Save the results for day 3
rake solve[3]
```

For a full list of tasks, run `rake -T`
