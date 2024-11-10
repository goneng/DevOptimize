# How to Create a Pull-Request for the OpenCore-Legacy-Patcher Project <!-- omit in toc -->

Here's a step-by-step guide to create a pull request for the OpenCore-Legacy-Patcher project:

### Table of Contents <!-- omit in toc -->
- [1. Fork the Repository](#1-fork-the-repository)
- [2. Clone Your Fork](#2-clone-your-fork)
- [3. Create a Branch](#3-create-a-branch)
- [4. Make Your Changes](#4-make-your-changes)
- [5. Commit Your Changes](#5-commit-your-changes)
- [6. Push to Your Fork](#6-push-to-your-fork)
- [7. Create Pull Request](#7-create-pull-request)
- [8. Describe Your Pull Request](#8-describe-your-pull-request)
- [9. Follow Up](#9-follow-up)
- [Best Practices](#best-practices)

&nbsp;

## Note <!-- omit in toc -->
Since this is an active macOS-related project, ensure your changes align with their guidelines and coding standards, particularly regarding macOS compatibility and OpenCore specifications.


## 1. Fork the Repository
- Go to https://github.com/dortania/OpenCore-Legacy-Patcher
- Click the "Fork" button in the top right
- This creates your copy of the repository in your GitHub account

## 2. Clone Your Fork
```bash
# Clone your forked repository
git clone https://github.com/<your-username>/OpenCore-Legacy-Patcher.git
cd OpenCore-Legacy-Patcher

# Add the original repository as upstream
git remote add upstream https://github.com/dortania/OpenCore-Legacy-Patcher.git
```

## 3. Create a Branch
```bash
# Create and switch to a new branch
git checkout -b my-feature-branch

# Make sure you're up to date with upstream
git fetch upstream
git merge upstream/main
```

## 4. Make Your Changes
- Make the necessary code changes
- Follow the project's coding style and guidelines
- Test your changes thoroughly

## 5. Commit Your Changes
```bash
# Add your changes
git add .

# Commit with a descriptive message
git commit -m "Description of your changes"
```

## 6. Push to Your Fork
```bash
git push origin my-feature-branch
```

## 7. Create Pull Request
- Go to your fork on GitHub
- Click "Pull request"
- Select branches:
  - Base repository: dortania/OpenCore-Legacy-Patcher
  - Base: main
  - Head repository: your-username/OpenCore-Legacy-Patcher
  - Compare: my-feature-branch

## 8. Describe Your Pull Request
- Follow the project's PR template if available
- Include:
  - Clear description of changes
  - Reason for changes
  - Any related issues
  - Testing done
  - Screenshots if applicable

## 9. Follow Up
- Respond to any review comments
- Make requested changes if needed:
```bash
# Make changes
git add .
git commit -m "Address review comments"
git push origin my-feature-branch
```

## Best Practices
- Keep PRs focused and small
- Test thoroughly before submitting
- Follow project guidelines
- Be responsive to feedback
- Keep your fork updated with upstream
- Use clear commit messages

&nbsp;
