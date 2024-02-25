# git Tips <!-- omit in toc -->

- [Check Impact-of-Change](#check-impact-of-change)
- [Count Lines-of-Code](#count-lines-of-code)

## Check Impact-of-Change

See how many files (and lines) have changed, between two commits

```bash
git diff --shortstat <commit1> <commit2>
```

(from [How can I calculate the number of lines changed between two commits in git](https://stackoverflow.com/a/2528129/1390251))

## Count Lines-of-Code

Count ALL lines-of-code in a repository (limited to a selected set of file-types) -

```bash
git ls-files | grep -P "^[^\s]+[.](c|cpp|h|hpp|java|js)$" | xargs cat | wc -l
```

This example does not handle file-names with spaces, so skipping those files.

(from [Count number of lines in a git repository](http://stackoverflow.com/questions/4822471/count-number-of-lines-in-a-git-repository))
