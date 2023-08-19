# Has Changes

GitHub action for checking if the repo is dirty (has uncommitted changes).

This action will fail if there are uncommitted changes and succeed otherwise

## Why?

This is useful for things like checking if post build steps like generating dynamic sitemaps need to have results checked in.

## How?

Add a step in a job after any steps whose code changes you want to check.

## Example

```yaml
name: Has Changes
jobs:
  has-changes:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
      with:
        ref: ${{ github.head_ref }}
    - name: Make changes
      run: touch change.temp
    # This step will evaluate the repo status and report the change
    - name: Check if there are changes
      uses: NathanielHill/fail-if-changes@latest
```
