# Features Toggles

When new functionality is working together another set of changes, it is hard to reduce the impact.
For this, we can enable in our code a set of flags to enable certain parts of the code.

```
useNewAlgorithm = False
# useNewAlgorithm = True # UNCOMMENT IF YOU ARE WORKING ON THE NEW SR ALGORITHM
if useNewAlgorithm:
    return enhancedSplineReticulation();
return oldFashionedSplineReticulation();
```

But this is quite hardcoding, and if you are in a collaborative environment, you will still need to deploy your code to test.
For that, **Toggle Router** came to the picture. It could be something fancy with an UI, or much simple. But the idea is to change dynamically those values.
Stored in memory, config, database... whatever suits you.

Enables many other release feature, like canary release, A/B testing...

## When to use features flags

- Improve feature rollout
- Operational efficiency
- Learn from experimentation
- Empower teams with entitlements

## References

- [Feature Toggles](https://martinfowler.com/articles/feature-toggles.html)
- [Feature Flags](https://launchdarkly.com/blog/what-are-feature-flags/)
