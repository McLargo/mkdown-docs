# Versioning

Versioning releases is important to handle dependencies with new code. Each
version must be tagged with an unique identifier.

## Common versioning

- **Major** - The first number in the version. 2 and 3 are Python's famous major
  versions. The major segment is the most common calendar-based component.
- **Minor** - The second number in the version. 7 is the most popular minor version
  of Python.
- **Micro** - The third and usually final number in the version. Sometimes referred
  to as the "patch" segment.
- **Modifier** - An optional text tag, such as "dev", "alpha", "beta", "rc1", and so
  on.

## Calendar versioning

- **YYYY** - Full year - 2006, 2016, 2106
- **YY** - Short year - 6, 16, 106
- **0Y** - Zero-padded year - 06, 16, 106
- **MM** - Short month - 1, 2 ... 11, 12
- **0M** - Zero-padded month - 01, 02 ... 11, 12
- **WW** - Short week (since start of year) - 1, 2, 33, 52
- **0W** - Zero-padded week - 01, 02, 33, 52
- **DD** - Short day - 1, 2 ... 30, 31
- **0D** - Zero-padded day - 01, 02 ... 30, 31

For reference, both versioning can be mixed.

## References

- [Calendar versioning](https://calver.org/)
