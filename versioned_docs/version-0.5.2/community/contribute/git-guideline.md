# Git Commit Guide

This document describes the matters needing attention when Git submits changes. If you refuse to accept the contents of this article, the submitted changes will not be accepted.

## 1. About issue

Before submitting an issue, please check the closed issue. There may already be an appropriate solution in the closed issue.

If no suitable solution is found, we provide four templates to use when creating an issue.

- Bug Report: If a bug is found, you can contact us by creating an issue through the bug report template.
- Enhancement: The developer has enhanced the tool, and can create an issue through the enhancement template to introduce the added content.
- Feature Request: If you want to add some new features or functions to the tool during use, you can create an issue through the Feature Request template to describe the new features.
- Ask a Question: If you have any questions, you can create an issue through the Ask a Question template to contact us.

After selecting the appropriate template, you only need to fill in the required content on the template. If you find that there is no template or the template content is empty when creating the issue, you can feed back this problem to us through WeChat group, nail group or email.

## 2. About Git Branch

To contribute code to KCL, you must have a GitHub account so that you can push the code to your own branch and create pull requests. We recommend reference [Angular Specification]（ https://github.com/angular/angular.js/blob/master/DEVELOPERS.md# -Git commit guidelines) name your own branches.

The recommended format is as follows:

```
{type}-{a_short_description}
```

The branch name mainly includes two fields, which are separated by "-". Including:

- `{type}`: the type of the current branch content.
- `{a_short_description}`: A short description of the main content of this branch.

For example, Alice first transfers the Fork warehouse to his own account, and then creates a branch with the corresponding name 'alice: fix output fmt bug' (Alice's account is before the colon) to fix the output formatting bug.

## 3. 关于 Git Commit

We refer to [Commitizen](https://github.com/commitizen/cz-cli) to write a Commit Message.

```
Note: If you directly use Commit to generate a Commit Message, please note that
It is a tool for developers to manage commit. It is not related to the project itself, so it is an intermediate product generated by Commiten
(For example, the node_modules file directory) may not be in the project. gitignore file.

You can git add {filename} select the file to submit and ignore the intermediate product.
Or you can add the following content to the. gitignore file and automatically ignore the intermediate products:
# commitizen
package.json
package-lock.json
node_modules/*
```

If you manually write a commit Message, we also recommend [Commiten](https://github.com/commitizen/cz-cli) for the commit message format.

```
{type} ( {component_or_file} ) {a_short_description}
{a_longer_description}
BREAKING CHANGE: {breaking_change_description}.
{linked issue}
```

It mainly includes 6 fields:

- `{type}`: the type of the branch corresponding to the current commit.
- `{component_or_file}`: the name of the module or file that the current commit changes.
- `{a_short_description}`: A short description describes the content of the commit.
- `{a_longer_description}`: The detailed description is used to introduce the content in the commit.
- `{breaking_change_description}`: If the commit contains broken compatibility changes, the impact of compatibility changes needs to be introduced.
- `{linked issue}`: the issue associated with the current commit.

Where `{breaking_change_description}` and `{linked issue}` can be omitted if the commit does not contain compatibility breaking changes and associated issues.

For example, the commit created by Alice in branch 'alice: fix output fmt bug'.

```
fix(kcl-printer): fix an output format bug in kcl-printer

There is an output format bug in kcl-printer because ...,
So, The calling of method "XXX" is replaced by "HHHH"...,
...

--If there is no change to break the compatibility and the associated issue, the following contents can be omitted.
BREAKING CHANGE: This change maybe cause .......

fix #123
```

## 4. About pull request

Before submitting a PR, priority may be given to the following issues:

- Please check the closed PRs first. There may be completed solutions in the closed PRs.
- We suggest that before submitting the change, submit a corresponding issue to describe the problems to be solved in the change, and associate the PR corresponding to the change with the issue.
- After submitting the PR to us, please sign [Contributor License Agreement (CLA)] (# cla). If you refuse to sign, we will not accept the PR.
- Make sure that each change creates a new branch and names the branch according to the specifications mentioned above.
- PR should not exceed two commit at a time. Please compress the extra commit with squash and write a commit message according to the specifications mentioned above.
- We provide [PR template](https://github.com/kcl-lang/.github/blob/main/.github/PULL_REQUEST_TEMPLATE.md). You only need to add the content required in the template. If you find no template or the template content is empty when creating a PR, you can feed back this problem to us through WeChat group, nail group or email.

We suggest that the PR title be consistent with the branch name and the commit message style:

```
{type} ( {component_name_or_file_name} ) :{a_short_description}
```

比如，Alice 为分支`fix/alice/fix_output_fmt_bug`创建的PR名称。

For example, Alice creates the PR name `fix/alice/fix_output_fmt_bug` for one branch.

```
fix(kcl-printer): fix an output format bug in kcl-printer.
```

## 5. Supported PR Types

```
- feat: -- New features have been added.
- fix: -- Bug is repaired.
- docs: -- The document part has been modified.
- style: -- The modification of code format does not affect the functions of the code, such as deleting redundant spaces, code indentation, etc.
- refactor: -- refactoring code without changing its function.
- perf: -- Performs performance optimization on the code.
- test: -- Add or adjust existing test cases.
- build: -- Adjust the build system or external dependent libraries.
- ci: -- The configuration file or script of the CI has been adjusted.
- choice: -- Adjustments to other parts of the source code and test files.
- reverse: -- Rollback commit.
```

## <a name="cla"></a> 6. Contributor License Agreement (CLA)

After the PR is submitted to us for the first time, the CLA check in the PR will fail and prompt to sign the CLA. You can reply "I have read the CLA Document and I hereby sign the CLA" between your accounts in PR to agree to sign the CLA, and then manually restart the failed CLA check action. After PR is successfully merged, it will be locked and cannot be modified.