# 📘 Git & GitHub Learning Notes

This folder documents everything I’ve learned about **Git & GitHub** while practicing version control.  
It includes commands, workflows, and concepts explained in a beginner-friendly way.

---

## 🔑 Key Concepts
- **Git** → A version control system that tracks changes in your code.  
- **GitHub** → A platform to host Git repositories online and collaborate with others.  
- **Repository** → A project folder tracked by Git.  
- **Commit** → A snapshot of your changes.  
- **Branch** → A separate line of development.  
- **Merge** → Combining changes from one branch into another.  
- **Pull Request (PR)** → Propose changes on GitHub before merging.  
- **Fork** → A copy of someone else’s repo under your account.

---

## 📝 Common Git Commands

| Command | Description |
|---------|-------------|
| `git --version` | Check Git version |
| `git config --global user.name "Your Name"` | Set your username |
| `git config --global user.email "you@email.com"` | Set your email |
| `git init` | Initialize a new repo locally |
| `git clone <url>` | Clone a repo from GitHub |
| `git status` | Show file status |
| `git add <file>` | Stage changes |
| `git commit -m "msg"` | Commit staged changes |
| `git push origin main` | Push changes to GitHub |
| `git pull origin main` | Pull changes from GitHub |
| `git branch` | List branches |
| `git checkout -b <branch>` | Create + switch branch |
| `git merge <branch>` | Merge branch into current |
| `git reset --hard <hash>` | Reset project to a commit |

---

## 🌿 Branching & Merging Workflow

```mermaid
%%{ init: { 'gitGraph': { 'mainBranchName': 'main' } } }%%
gitGraph
    commit id: "C1"
    commit id: "C2"
    branch feature-branch
    checkout feature-branch
    commit id: "C3: Add feature"
    commit id: "C4: Improve feature"
    checkout main
    commit id: "C5: Continue main"
    merge feature-branch id: "C6: Merge feature"
    commit id: "C7: Further work"
