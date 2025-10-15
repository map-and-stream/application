# mapandstream
prvide map and video stream


### Recommended Branching Strategy

Here’s a branching strategy that works well for many projects, based on the [GitFlow](https://nvie.com/posts/a-successful-git-branching-model/) model with some modern adjustments for continuous integration and deployment:

#### **1. Main Branches**

- **`main`**: 
  - **Purpose**: This is the production-ready branch. Only thoroughly tested and stable code is merged here.
  - **Access**: Protected and restricted to ensure only validated code is merged.
  - **Deployment**: Code here is usually what's deployed to production.

- **`develop`**:
  - **Purpose**: The integration branch where features and fixes are merged before going into `main`. This branch contains the latest delivered development changes.
  - **Access**: Semi-protected. Only merge changes here after they've been tested and reviewed.
  - **Deployment**: Optional deployment to staging environments for further testing.

#### **2. Supporting Branches**

- **`feature/{feature-name}`**:
  - **Purpose**: Used for developing new features or enhancements.
  - **Naming**: Use descriptive names, e.g., `feature/user-authentication`.
  - **Lifecycle**: Branch from `develop`, and merge back into `develop` when complete.

- **`bugfix/{issue-description}`**:
  - **Purpose**: For fixing bugs identified in the `develop` or even `main` branches.
  - **Naming**: Use descriptive names, e.g., `bugfix/fix-login-issue`.
  - **Lifecycle**: Branch from `develop`, and merge back into `develop` when fixed.

- **`hotfix/{issue-description}`**:
  - **Purpose**: For urgent fixes that need to be applied directly to the `main` branch, often to address critical issues in production.
  - **Naming**: Use descriptive names, e.g., `hotfix/fix-critical-bug`.
  - **Lifecycle**: Branch from `main`, and merge back into both `main` and `develop`.

- **`release/{version}`**:
  - **Purpose**: For preparing a new production release. Allows for final testing and bug fixes.
  - **Naming**: Use version numbers, e.g., `release/1.0.0`.
  - **Lifecycle**: Branch from `develop`, complete final fixes and polish, then merge into `main` and `develop`.

#### **3. Additional Branches (Optional)**

- **`chore/{task-name}`**:
  - **Purpose**: For minor tasks and chores like updating documentation or performing code cleanup.
  - **Naming**: Use descriptive names, e.g., `chore/update-readme`.
  - **Lifecycle**: Branch from `develop`, and merge back into `develop`.

- **`test/{task-name}`**:
  - **Purpose**: For experimental or testing purposes. Not typically merged.
  - **Naming**: Use descriptive names, e.g., `test/experiment-new-api`.
  - **Lifecycle**: Branch from `develop`, used for temporary testing.

### Example Workflow

1. **Start a Feature**:
   - Create a branch from `develop`:
     ```bash
     git checkout develop
     git pull origin develop
     git checkout -b feature/user-authentication
     ```
   - Work on the feature, commit changes.
   - Push the branch to the remote:
     ```bash
     git push origin feature/user-authentication
     ```
   - Create a pull request (PR) to merge `feature/user-authentication` into `develop`.

2. **Bug Fixes**:
   - Create a branch from `develop`:
     ```bash
     git checkout develop
     git pull origin develop
     git checkout -b bugfix/fix-login-issue
     ```
   - Work on the fix, commit changes.
   - Push the branch and create a PR to merge `bugfix/fix-login-issue` into `develop`.

3. **Hotfixes**:
   - Create a branch from `main`:
     ```bash
     git checkout main
     git pull origin main
     git checkout -b hotfix/fix-critical-bug
     ```
   - Work on the fix, commit changes.
   - Push the branch and create a PR to merge `hotfix/fix-critical-bug` into `main`.
   - Also, merge `hotfix/fix-critical-bug` into `develop`.

4. **Release Preparation**:
   - Create a release branch from `develop`:
     ```bash
     git checkout develop
     git pull origin develop
     git checkout -b release/1.0.0
     ```
   - Perform final testing and fixes.
   - Create PRs to merge `release/1.0.0` into both `main` and `develop`.

5. **Merging and Deployment**:
   - Merging into `main` should trigger deployment workflows.
   - Ensure `develop` is always up-to-date with the latest changes from `main`.

### Summary

- **`main`**: Production-ready code.
- **`develop`**: Latest development changes.
- **`feature/*`**: New features or enhancements.
- **`bugfix/*`**: Bug fixes.
- **`hotfix/*`**: Critical fixes for production.
- **`release/*`**: Preparing for a new production release.

This branching strategy helps manage development and ensures a clear path for features, bug fixes, and releases while minimizing conflicts and maintaining code quality.
