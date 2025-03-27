# Versioning

Versioning releases is important to handle dependencies with new code. Each
version must be tagged with an unique identifier.

## Semantic versioning

Semantic versioning is a standard for versioning software. It is based on three
numbers separated by dots: `MAJOR.MINOR.PATCH`. The version number is increased
when:

- **Major** - Breaking changes are introduced.
- **Minor** - New features are added in a backwards-compatible manner.
- **Patch** - Backwards-compatible bug fixes are introduced.

Additional labels can be added to the version number, such as "dev", "alpha",
"beta", "rc1", and so on.

Usually , you can start from `0.1.0` and increment the version number as you
develop the software. When you are ready to release the first stable version,
you can change the version number to `1.0.0`, and follow the semantic versioning
rules from there.

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

## References

- [Semantic versioning](https://semver.org/)
- [Calendar versioning](https://calver.org/)
