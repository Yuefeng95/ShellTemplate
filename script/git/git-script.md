# Git script

==============

## Add lib tag and get version

```
git tag
git describe --all --always  --dirty --tags --long --match "[0-9]*.[0-9]*.[0-9]*" | sed 's/-g[a-z0-9]\{7\}//'
```

## Delete remote branch

```
git branch -r -d origin/branch-name
git push origin :branch-name
```

## Merge branch before pr

```
git fetch origin remote-branch
git checkout your-branch
git merge FETCH_HEAD
git commit
git push origin HEAD
```

## Apply patch

```
git <diff/show commit> > your-patch
git apply --check your-patch
```

## Subtree

* add
```
git remote add my-subtree git@github.com:vinibaggio/my-subproject.git
git subtree add --prefix=vendor/ --squash my-subtree master
```
* push
```
git push origin master
```
* update
```
git subtree pull --prefix=vendor --squash my-subtree master
```
